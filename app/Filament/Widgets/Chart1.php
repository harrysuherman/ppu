<?php

namespace App\Filament\Widgets;

use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;

class Chart1 extends ApexChartWidget
{
    protected static ?int $sort = 2;

    /**
     * Chart Id
     *
     * @var string
     */
    protected static ?string $chartId = 'chart1';

    /**
     * Widget Title
     *
     * @var string|null
     */
    protected static ?string $heading = 'Pagu Anggaran';

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
                'type' => 'bar',
                'height' => 300,
            ],
            'series' => [
                [
                    'name' => '2021',
                    'data' => [
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2021)->sum('pagu_rkpd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2021)->sum('pagu_apbd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2021)->sum('pagu_rkpd_perubahan'),
                    ],
                ]
                ,
                [
                    'name' => '2022',
                    'data' => [
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2022)->sum('pagu_rkpd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2022)->sum('pagu_apbd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2022)->sum('pagu_rkpd_perubahan'),
                    ],
                ],
                [
                    'name' => '2023',
                    'data' => [
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2023)->sum('pagu_rkpd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2023)->sum('pagu_apbd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2023)->sum('pagu_rkpd_perubahan'),
                    ],
                ],
                [
                    'name' => '2024',
                    'data' => [
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2024)->sum('pagu_rkpd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2024)->sum('pagu_apbd'),
                        \App\Models\RenjaSubKegiatan::whereTahunAnggaran(2024)->sum('pagu_rkpd_perubahan'),
                    ],
                ],
            ],
            'xaxis' => [
                'categories' => ['RKPD', 'APBD', 'RKPD Perubahan'],
                'labels' => [
                    'style' => [
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            'yaxis' => [
                'labels' => [
                    'style' => [
                        'fontFamily' => 'inherit',
                    ],
                ],
            ],
            // 'colors' => ['#f59e0b','#333333'],
            'plotOptions' => [
                'bar' => [
                    'borderRadius' => 3,
                    'horizontal' => true,
                ],
            ],
        ];
    }
}
