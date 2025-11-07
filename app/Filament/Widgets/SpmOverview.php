<?php

namespace App\Filament\Widgets;

use App\Models\Spm;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;
use Illuminate\Support\Facades\DB;

class SpmOverview extends BaseWidget
{

    protected function getStats(): array
    {
        $dataSpms = Spm::select('bidang')
            ->selectRaw('SUM(alokasi_spm) as total_alokasi')
            ->selectRaw('SUM(anggaran_skpd_pengampu) as total_anggaran')
            ->groupBy('bidang')
            ->get();

        $stats = [];
        $colors = ['success', 'info', 'warning', 'danger', 'primary']; // Untuk variasi tampilan

        foreach ($dataSpms as $index => $data) {
            $totalAlokasi = (float) $data->total_alokasi;
            $totalAnggaran = (float) $data->total_anggaran;
            $bidang = $data->bidang;
            $color = $colors[$index % count($colors)];

            $persentase = 0;
            $deskripsi = 'N/A';

            if ($totalAnggaran > 0) {
                $persentase = ($totalAlokasi / $totalAnggaran) * 100;
                $deskripsi = number_format($persentase, 2) . '% dari Total Anggaran';
            }

            $stats[] = Stat::make(
                'SPM Bidang ' . $bidang,
                'Rp ' . number_format($totalAlokasi, 2, ',', '.').' M'
            )
            ->description($deskripsi.' Rp.'.number_format($totalAnggaran, 2).' M')
            ->descriptionIcon('heroicon-m-arrow-trending-up')
            ->color($color);
        }

        return $stats;
    }
}
