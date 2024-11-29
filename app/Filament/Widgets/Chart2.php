<?php

namespace App\Filament\Widgets;

use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

class Chart2 extends ApexChartWidget
{
    protected static ?int $sort = 3;
    /**
     * Chart Id
     *
     * @var string
     */
    protected static ?string $chartId = 'chart2';

    /**
     * Widget Title
     *
     * @var string|null
     */
    protected static ?string $heading = 'Pagu Anggaran ';

    /**
     * Chart options (series, labels, types, size, animations...)
     * https://apexcharts.com/docs/options
     *
     * @return array
     */
    protected function getOptions(): array
    {
        return [
            'chart' => [
                'type' => 'donut',
                'height' => 300,
            ],
            'series' => [
            \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2024)->sum('pagu_rkpd'),
            \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2024)->sum('pagu_apbd'),
            \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2024)->sum('pagu_rkpd_perubahan')],
            'labels' => ['RKPD', 'APBD', 'RKPD PERUBAHAN',],
            'legend' => [
                'labels' => [
                    'fontFamily' => 'inherit',
                ],
            ],
        ];
    }
}
