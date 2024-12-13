<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use Filament\Support\Enums\MaxWidth;
use Illuminate\Contracts\View\View;
use App\Models\SatuanKerja;

class LaporanEvaluasiRkpd extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-chart-bar';
    protected static ?string $navigationLabel = 'Laporan Hasil Evaluasi RKPD';
    protected static ?string $navigationGroup = 'Laporan';
    protected static ?int $navigationSort = 2;

    protected static string $view = 'filament.pages.laporan-evaluasi-rkpd';

    public $satuan_kerja_id;
    public $nama_satker;

    public function mount(){
        $this->satuan_kerja_id = session('filter_skpd');
        $satker = SatuanKerja::find(session('filter_skpd'));
        $this->nama_satker = ($satker) ? $satker->nama_satker : '';
    }

    public function updated($property,$value)
    {
        if ($property === 'satuan_kerja_id') {
            session()->put('filter_skpd',$value);
            $satker = SatuanKerja::find($value);
            $this->nama_satker = ($satker) ? $satker->nama_satker : '';
            return redirect('admin/laporan-evaluasi-rkpd');
        }
    }

    public function getMaxContentWidth(): MaxWidth
    {
        return MaxWidth::Full;
    }

    public function getHeader(): ?View
    {
        return view('filament.pages.laporan-evaluasi-rkpd-header',[
            'nama_satker'=>$this->nama_satker
        ]);
    }
}
