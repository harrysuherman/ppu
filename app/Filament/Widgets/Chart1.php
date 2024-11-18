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
    protected static ?string $heading = 'Chart1';

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
                    'data' => [2, 5, 16, 8, 10],
                ]
                ,
                [
                    'name' => '2022',
                    'data' => [7, 10, 13, 15, 18],
                ],
                [
                    'name' => '2023',
                    'data' => [7, 10, 13, 15, 18],
                ],
                [
                    'name' => '2024',
                    'data' => [7, 10, 13, 15, 18],
                ],
            ],
            'xaxis' => [
                'categories' => ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
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
