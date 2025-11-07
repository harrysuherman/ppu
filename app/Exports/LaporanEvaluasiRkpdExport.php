<?php

namespace App\Exports;

use App\Models\RenjaUrusan;
use App\Models\RenjaBidang;
use App\Models\RenjaProgram;
use App\Models\RenjaKegiatan;
use App\Models\RenjaSubKegiatan;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithTitle;
use Illuminate\Support\Facades\Log;

class LaporanEvaluasiRkpdExport implements FromCollection, WithHeadings, WithStyles, ShouldAutoSize, WithTitle
{
    protected $satuan_kerja_id;
    protected $rowCounts = [
        'urusan' => 0,
        'bidang' => 0,
        'program' => 0,
        'kegiatan' => 0,
        'sub_kegiatan' => 0,
    ];
    protected $rowPositions = [
        'urusan' => [],
        'bidang' => [],
        'program' => [],
        'kegiatan' => [],
        'sub_kegiatan' => [],
    ];

    public function __construct($satuan_kerja_id)
    {
        $this->satuan_kerja_id = $satuan_kerja_id;
    }

    public function collection()
    {
        $data = [];
        $tahun = session('tahun_anggaran',date('Y'));
        $rowIndex = 4;

        // Log untuk debugging
        Log::info('Exporting Laporan Evaluasi RKPD', [
            'tahun_anggaran' => $tahun,
            'satuan_kerja_id' => $this->satuan_kerja_id
        ]);

        // Ambil data Urusan tanpa global scope jika perlu
        $urusans = RenjaUrusan::withoutGlobalScopes()
            ->where('tahun_anggaran', $tahun)
            ->when($this->satuan_kerja_id, fn($q) => $q->where('skpd_id', $this->satuan_kerja_id))
            ->get();

        Log::info('Jumlah Urusan ditemukan: ' . $urusans->count());

        if ($urusans->isEmpty()) {
            $data[] = ['Tidak ada data Urusan untuk tahun ' . $tahun . ' dan SKPD ' . $this->satuan_kerja_id, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''];
            return collect($data);
        }

        $this->rowCounts['urusan'] = $urusans->count();

        foreach ($urusans as $ru) {
            $data[] = [$ru->kode_urusan . '.', $ru->nama_urusan, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''];
            $this->rowPositions['urusan'][] = $rowIndex++;

            $bidangs = RenjaBidang::withoutGlobalScopes()
                ->where('kode_urusan', $ru->kode_urusan)
                ->where('tahun_anggaran', $tahun)
                ->when($this->satuan_kerja_id, fn($q) => $q->where('skpd_id', $this->satuan_kerja_id))
                ->get();

            $this->rowCounts['bidang'] += $bidangs->count();
            Log::info("Urusan {$ru->kode_urusan} - Jumlah Bidang: " . $bidangs->count());

            foreach ($bidangs as $rb) {
                $data[] = [$rb->kode_bidang . '.', $rb->nama_bidang, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''];
                $this->rowPositions['bidang'][] = $rowIndex++;

                $programs = RenjaProgram::withoutGlobalScopes()
                    ->where('kode_bidang', $rb->kode_bidang)
                    ->where('kode_urusan', $ru->kode_urusan)
                    ->where('tahun_anggaran', $tahun)
                    ->when($this->satuan_kerja_id, fn($q) => $q->where('skpd_id', $this->satuan_kerja_id))
                    ->get();

                $this->rowCounts['program'] += $programs->count();
                Log::info("Bidang {$rb->kode_bidang} - Jumlah Program: " . $programs->count());

                foreach ($programs as $rp) {
                    $data[] = [
                        $rp->kode_program . '.',
                        $rp->nama_program,
                        $rp->indikator_program,
                        $rp->target_n1,
                        number_format($rp->pagu_n1),
                        '', // Realisasi Kinerja RPJMD 2023
                        '', // Realisasi Anggaran RPJMD 2023
                        $rp->target_sesudah,
                        number_format($rp->pagu_apbd),
                        $rp->target_sebelum,
                        number_format($rp->pagu_rkpd_perubahan),
                        '', '', '', '', '', '', '', '', // Triwulan
                        '', '', // Realisasi Capaian 2024
                        '', '', // Tingkat Capaian 2024
                        '', '', // Realisasi RPD 2024
                        '', '', // Tingkat Capaian RPD
                        $rp->skpd ? $rp->skpd->nama_satker : ''
                    ];
                    $this->rowPositions['program'][] = $rowIndex++;

                    $kegiatans = RenjaKegiatan::withoutGlobalScopes()
                        ->where('kode_program', $rp->kode_program)
                        ->where('kode_bidang', $rb->kode_bidang)
                        ->where('kode_urusan', $ru->kode_urusan)
                        ->where('tahun_anggaran', $tahun)
                        ->when($this->satuan_kerja_id, fn($q) => $q->where('skpd_id', $this->satuan_kerja_id))
                        ->get();

                    $this->rowCounts['kegiatan'] += $kegiatans->count();
                    Log::info("Program {$rp->kode_program} - Jumlah Kegiatan: " . $kegiatans->count());

                    foreach ($kegiatans as $rk) {
                        $data[] = [
                            $rk->kode_kegiatan . '.',
                            $rk->nama_kegiatan,
                            $rk->indikator_kegiatan,
                            $rk->taget_n1 . ' ' . $rk->satuan_target_sesudah,
                            number_format($rk->pagu_n1),
                            '', // Realisasi Kinerja RPJMD 2023
                            '', // Realisasi Anggaran RPJMD 2023
                            $rk->jml_target_sesudah . ' ' . $rk->satuan_target_sesudah,
                            number_format($rk->pagu_apbd),
                            $rk->jml_target_sebelum . ' ' . $rk->satuan_target_sebelum,
                            number_format($rk->pagu_rkpd_perubahan),
                            '', '', '', '', '', '', '', '', // Triwulan
                            '', '', // Realisasi Capaian 2024
                            '', '', // Tingkat Capaian 2024
                            '', '', // Realisasi RPD 2024
                            '', '', // Tingkat Capaian RPD
                            $rk->skpd ? $rk->skpd->nama_satker : ''
                        ];
                        $this->rowPositions['kegiatan'][] = $rowIndex++;

                        $subKegiatans = RenjaSubKegiatan::withoutGlobalScopes()
                            ->where('kode_kegiatan', $rk->kode_kegiatan)
                            ->where('kode_program', $rp->kode_program)
                            ->where('kode_bidang', $rb->kode_bidang)
                            ->where('kode_urusan', $ru->kode_urusan)
                            ->where('tahun_anggaran', $tahun)
                            ->when($this->satuan_kerja_id, fn($q) => $q->where('skpd_id', $this->satuan_kerja_id))
                            ->get();

                        $this->rowCounts['sub_kegiatan'] += $subKegiatans->count();
                        Log::info("Kegiatan {$rk->kode_kegiatan} - Jumlah Sub Kegiatan: " . $subKegiatans->count());

                        foreach ($subKegiatans as $rsk) {
                            $jml_realisasi_capaian = $rsk->jml_realisasi_tw1 + $rsk->jml_realisasi_tw2 + $rsk->jml_realisasi_tw3 + $rsk->jml_realisasi_tw4;
                            $nilai_realisasi_capaian = $rsk->nilai_realisasi_tw1 + $rsk->nilai_realisasi_tw2 + $rsk->nilai_realisasi_tw3 + $rsk->nilai_realisasi_tw4;

                            $data[] = [
                                $rsk->kode_sub_kegiatan . '.',
                                $rsk->nama_sub_kegiatan,
                                $rsk->indikator_sub_kegiatan,
                                $rsk->jml_target_rpd_2024_2026 . ' ' . $rsk->satuan_target_rpd_2024_2026,
                                number_format($rsk->nilai_target_rpd_2024_2026),
                                '', // Realisasi Kinerja RPJMD 2023
                                '', // Realisasi Anggaran RPJMD 2023
                                $rsk->jml_target_sesudah . ' ' . $rsk->satuan_target_sesudah,
                                number_format($rsk->pagu_apbd),
                                $rsk->jml_target_sebelum . ' ' . $rsk->satuan_target_sebelum,
                                number_format($rsk->pagu_rkpd_perubahan),
                                $rsk->jml_realisasi_tw1,
                                number_format($rsk->nilai_realisasi_tw1),
                                $rsk->jml_realisasi_tw2,
                                number_format($rsk->nilai_realisasi_tw2),
                                $rsk->jml_realisasi_tw3,
                                number_format($rsk->nilai_realisasi_tw3),
                                $rsk->jml_realisasi_tw4,
                                number_format($rsk->nilai_realisasi_tw4),
                                $jml_realisasi_capaian,
                                number_format($nilai_realisasi_capaian),
                                $rsk->jml_target_sesudah ? number_format($jml_realisasi_capaian / $rsk->jml_target_sesudah * 100, 2) : '0.00',
                                $rsk->pagu_apbd ? number_format($nilai_realisasi_capaian / $rsk->pagu_apbd * 100, 2) : '0.00',
                                $rsk->jml_target_sesudah ? number_format($jml_realisasi_capaian / $rsk->jml_target_sesudah * 100, 2) : '0.00',
                                $rsk->nilai_target ? number_format($nilai_realisasi_capaian / $rsk->nilai_target * 100, 2) : '0.00',
                                '', // Realisasi Kinerja RPD 2024
                                '', // Realisasi Anggaran RPD 2024
                                $rsk->skpd->nama_satker
                            ];
                            $this->rowPositions['sub_kegiatan'][] = $rowIndex++;
                        }
                    }
                }
            }
        }

        if (empty($data)) {
            $data[] = ['Tidak ada data yang dapat diekspor untuk filter yang diberikan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''];
        }

        return collect($data);
    }

    public function headings(): array
    {
        return [
            ['Kode', 'Urusan/Bidang Urusan Pemerintahan Daerah dan Program/Kegiatan/Sub Kegiatan', 'Indikator Kinerja Program (Outcome) / Kegiatan (Output)', 'Target RPD 2024-2026', '', 'Realisasi Capaian Kinerja RPJMD s/d RKPD Tahun (2023)', '', 'Target Kinerja dan Anggaran Renja Tahun Berjalan Yang Dievaluasi (2024)', '', 'Target Kinerja dan Anggaran Perubahan Tahun Berjalan Yang Dievaluasi (2023)', '', 'Realisasi Kinerja Triwulan', '', '', '', '', '', '', '', 'Realisasi Capaian Kinerja Dan Anggaran Renja yang Dievaluasi (2024)', '', 'Tingkat Capaian Kinerja dari Realisasi Anggaran RKPD Tahun 2024 (%)', '', 'Realisasi Kinerja dan Anggaran RPD s/d Tahun 2024', '', 'Tingkat Capaian Kinerja dan Realisasi Anggaran RPD s/d Tahun 2024', '', 'SKPD Penanggung Jawab'],
            ['', '', '', '', '', '', '', '', '', '', '', 'I', '', 'II', '', 'III', '', 'IV', '', '', '', '', '', '', '', '', '', ''],
            ['', '', '', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', 'K', 'Rp', '']
        ];
    }

    public function styles(Worksheet $sheet)
    {
        $sheet->mergeCells('A1:A3');
        $sheet->mergeCells('B1:B3');
        $sheet->mergeCells('C1:C3');
        $sheet->mergeCells('D1:E2');
        $sheet->mergeCells('F1:G2');
        $sheet->mergeCells('H1:I2');
        $sheet->mergeCells('J1:K2');
        $sheet->mergeCells('L1:S1');
        $sheet->mergeCells('T1:U2');
        $sheet->mergeCells('V1:W2');
        $sheet->mergeCells('X1:Y2');
        $sheet->mergeCells('Z1:AA2');
        $sheet->mergeCells('AB1:AB3');

        $lastRow = $sheet->getHighestRow();

        $styles = [
            // Style header
            1 => [
                'font' => ['bold' => true],
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => 'D3D3D3']],
                'borders' => ['allBorders' => ['borderStyle' => 'thin', 'color' => ['rgb' => '666666']]],
            ],
            2 => [
                'font' => ['bold' => true],
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => 'D3D3D3']],
                'borders' => ['allBorders' => ['borderStyle' => 'thin', 'color' => ['rgb' => '666666']]],
            ],
            3 => [
                'font' => ['bold' => true],
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => 'E6E6E6']],
                'borders' => ['allBorders' => ['borderStyle' => 'thin', 'color' => ['rgb' => '666666']]],
            ],
            // Style untuk kolom tertentu
            'A' => ['alignment' => ['horizontal' => 'left']],
            'B' => ['alignment' => ['horizontal' => 'left']],
            'C' => ['alignment' => ['horizontal' => 'left']],
            'AB' => ['alignment' => ['horizontal' => 'left']],
            // Border untuk seluruh tabel
            "A4:AB$lastRow" => [
                'borders' => [
                    'allBorders' => [
                        'borderStyle' => 'thin',
                        'color' => ['rgb' => '666666']
                    ]
                ]
            ],
        ];

        // Terapkan style untuk Urusan
        foreach ($this->rowPositions['urusan'] as $row) {
            $styles["A$row:AB$row"] = [
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => '3B3B3B']],
                'font' => ['color' => ['rgb' => 'FFFFFF']]
            ];
        }

        // Terapkan style untuk Bidang
        foreach ($this->rowPositions['bidang'] as $row) {
            $styles["A$row:AB$row"] = [
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => '595858']],
                'font' => ['color' => ['rgb' => 'FFFFFF']]
            ];
        }

        // Terapkan style untuk Program
        foreach ($this->rowPositions['program'] as $row) {
            $styles["A$row:AB$row"] = [
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => 'C84A2E']],
                'font' => ['color' => ['rgb' => 'FFFFFF']]
            ];
        }

        // Terapkan style untuk Kegiatan
        foreach ($this->rowPositions['kegiatan'] as $row) {
            $styles["A$row:AB$row"] = [
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => 'CA720D']],
                'font' => ['color' => ['rgb' => 'FFFFFF']]
            ];
        }

        // Terapkan style untuk Sub Kegiatan
        foreach ($this->rowPositions['sub_kegiatan'] as $row) {
            $styles["A$row:AB$row"] = [
                'fill' => ['fillType' => 'solid', 'startColor' => ['rgb' => '737C5B']],
                'font' => ['color' => ['rgb' => 'FFFFFF']]
            ];
        }

        return $styles;
    }

    public function title(): string
    {
        return 'Laporan Evaluasi RKPD';
    }
}
