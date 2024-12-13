<?php

namespace App\Filament\Widgets;

use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;
use Auth;
use DB;

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
        if (Auth::user()->hasRole(['super_admin'])) {
            $pagu_rkpd_2024 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2024)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2024 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2024)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2024 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2024)->sum('pagu_rkpd_perubahan')/1000000000;
        }
            else if (Auth::user()->hasRole(['satker'])) {
            $pagu_rkpd_2024 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2024)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2024 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2024)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2024 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2024)->sum('pagu_rkpd_perubahan')/1000000000;
        }

        return [
            'chart' => [
                'type' => 'donut',
                'height' => 300,
            ],
            'series' => [
            round($pagu_rkpd_2024,2),
            round($pagu_apbd_2024),
            round($pagu_rkpd_perubahan_2024,2)
        ],
            'labels' => ['RKPD', 'APBD', 'RKPD PERUBAHAN',],
            'legend' => [
                'labels' => [
                    'fontFamily' => 'inherit',
                ],
            ],
            'options' => [
                'dataLabels'=>[
                    'enable'=> false
                ]
            ]
            ,
        ];
    }
}
