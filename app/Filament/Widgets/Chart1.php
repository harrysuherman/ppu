<?php

namespace App\Filament\Widgets;

use Leandrocfe\FilamentApexCharts\Widgets\ApexChartWidget;
use DB;
use Auth;

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
    protected static ?string $heading = 'Pagu Anggaran (Miliar)';

    /**
     * Chart options (series, labels, types, size, animations...)
     * https://apexcharts.com/docs/options
     *
     * @return array
     */
    protected function getOptions(): array
    {
        if (Auth::user()->hasRole(['super_admin'])) {
            $pagu_rkpd_2021 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2021)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2021 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2021)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2021 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2021)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2022 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2022)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2022 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2022)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2022 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2022)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2023 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2023)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2023 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2023)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2023 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2023)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2024 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2024)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2024 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2024)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2024 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2024)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2025 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2025)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2025 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2025)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2025 = DB::table('renja_sub_kegiatan')->whereTahunAnggaran(2025)->sum('pagu_rkpd_perubahan')/1000000000;
        }
        else if (Auth::user()->hasRole(['satker'])) {
            $pagu_rkpd_2021 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2021)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2021 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2021)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2021 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2021)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2022 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2022)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2022 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2022)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2022 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2022)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2023 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2023)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2023 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2023)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2023 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2023)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2024 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2024)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2024 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2024)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2024 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2024)->sum('pagu_rkpd_perubahan')/1000000000;

            $pagu_rkpd_2025 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2025)->sum('pagu_rkpd')/1000000000;
            $pagu_apbd_2025 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2025)->sum('pagu_apbd')/1000000000;
            $pagu_rkpd_perubahan_2025 = DB::table('renja_sub_kegiatan')->whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(2025)->sum('pagu_rkpd_perubahan')/1000000000;
        }

        return [
            'chart' => [
                'type' => 'bar',
                'height' => 300,
            ],
            'series' => [
                [
                    'name' => '2021',
                    'data' => [
                        round($pagu_rkpd_2021,2),
                        round( $pagu_apbd_2021,2),
                        round($pagu_rkpd_perubahan_2021,2),
                    ],
                ]
                ,
                [
                    'name' => '2022',
                    'data' => [
                        round($pagu_rkpd_2022,2),
                        round( $pagu_apbd_2022,2),
                        round($pagu_rkpd_perubahan_2022,2),
                    ],
                ],
                [
                    'name' => '2023',
                    'data' => [
                        round($pagu_rkpd_2023,2),
                        round( $pagu_apbd_2023,2),
                        round($pagu_rkpd_perubahan_2023,2),
                    ],
                ],
                [
                    'name' => '2024',
                    'data' => [
                        round($pagu_rkpd_2024,2),
                        round( $pagu_apbd_2024,2),
                        round($pagu_rkpd_perubahan_2024,2),
                    ],
                ],
                [
                    'name' => '2025',
                    'data' => [
                        round($pagu_rkpd_2025,2),
                        round( $pagu_apbd_2025,2),
                        round($pagu_rkpd_perubahan_2025,2),
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
