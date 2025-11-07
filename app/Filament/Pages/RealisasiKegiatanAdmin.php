<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Filament\Widgets\RealisasiKegiatanStatsOverviewAdmin;
use App\Filament\Widgets\RealisasiKegiatanTableAdmin;
use Illuminate\Contracts\View\View;
use Filament\Notifications\Notification;
use App\Models\SatuanKerja;

class RealisasiKegiatanAdmin extends Page
{
    // protected static ?string $navigationIcon = 'heroicon-o-banknotes';
    protected static ?string $navigationLabel = 'Realisasi Kegiatan';
    protected static ?string $navigationGroup = 'LAPORAN';
    protected static ?int $navigationSort = 1;

    public $satuan_kerja_id;
    public $nama_satker;

    public function mount(){
        $this->satuan_kerja_id = session('filter_skpd');
        $satker = SatuanKerja::find(session('filter_skpd'));
        $this->nama_satker = ($satker) ? $satker->nama_satker : '';
    }

    protected static string $view = 'filament.pages.realisasi-kegiatan-admin';

    public function updated($property,$value)
    {
        if ($property === 'satuan_kerja_id') {
            session()->put('filter_skpd',$value);
            $satker = SatuanKerja::find($value);
            $this->nama_satker = ($satker) ? $satker->nama_satker : '';
            return redirect('admin/realisasi-kegiatan-admin');
        }
    }

    public static function canAccess(): bool
    {
        return auth()->user()->can('page_RealisasiKegiatanAdmin');
    }

    public function getHeader(): ?View
    {
        return view('filament.pages.realisasi-kegiatan-header-admin',[
            'nama_satker'=>$this->nama_satker
        ]);
    }

    protected function getHeaderWidgets(): array
    {
        return [
            RealisasiKegiatanStatsOverviewAdmin::class,
            RealisasiKegiatanTableAdmin::class
        ];
    }
}
