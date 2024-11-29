<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use Filament\Support\Enums\MaxWidth;

class LaporanEvaluasiRkpd extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-chart-bar';
    protected static ?string $navigationLabel = 'Laporan Hasil Evaluasi RKPD';
    protected static ?string $navigationGroup = 'Laporan';

    protected static string $view = 'filament.pages.laporan-evaluasi-rkpd';

    public function mount(){
        // abort_unless(auth()->user()->can('page_ProgresPekerjaan'), 403);
        // $this->filter_bulan = date('m');
        // $this->filter_tahun = session('tahun_anggaran');
    }

    public function getMaxContentWidth(): MaxWidth
    {
        return MaxWidth::Full;
    }
}
