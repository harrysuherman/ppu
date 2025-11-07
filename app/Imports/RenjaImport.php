<?php

namespace App\Imports;

use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use App\Models\RenjaUrusan;
use App\Models\RenjaBidang;
use App\Models\RenjaProgram;
use App\Models\RenjaKegiatan;
use App\Models\RenjaSubKegiatan;
use Auth;

class RenjaImport implements ToModel, WithStartRow
{

   public function model(array $row)
{
    // Menggunakan Null Coalescing Operator (?? null) untuk mencegah error "Undefined array key".
    $kode_urusan = $row[1] ?? null;
    $kode_bidang = $row[2] ?? null;
    $kode_program = $row[3] ?? null;
    $kode_kegiatan = $row[4] ?? null;
    $kode_sub_kegiatan = $row[5] ?? null;

    // Jika kode urusan (kunci utama) null, abaikan baris ini.
    if (is_null($kode_urusan)) {
        return null;
    }

    // Mengambil data lain dengan perlindungan yang sama.
    $nama_data = $row[6] ?? null;
    $indikator_data = $row[7] ?? null;
    $target_sebelum = $row[11] ?? null;
    $target_sesudah = $row[12] ?? null;

    // --- Perbaikan Pembersihan Angka Pagu Diterapkan di sini ---
    // Pastikan nilai default-nya adalah null sebelum dibersihkan.
    $pagu_rkpd_raw = $row[13] ?? null;
    $pagu_apbd_raw = $row[14] ?? null;
    $pagu_rkpd_perubahan_raw = $row[15] ?? null;
    $pagu_n1_raw = $row[22] ?? null;

    // Fungsi pembersihan string yang lebih terjamin:
    $clean_numeric = function ($value) {
        if (is_null($value)) {
            return 0; // Kembalikan 0 jika nilainya null
        }
        // Hapus semua karakter non-digit kecuali koma (,)
        $cleaned = preg_replace('/[^\d,]/', '', $value);
        // Hapus ',00' jika ada di akhir string
        $cleaned = str_replace(',00', '', $cleaned);
        // Hapus sisa titik (jika ada, sebagai pemisah ribuan)
        $cleaned = str_replace('.', '', $cleaned);
        // Pastikan hasilnya adalah integer
        return (int)$cleaned;
    };

    // Aplikasikan fungsi pembersihan
    $pagu_rkpd = $clean_numeric($pagu_rkpd_raw);
    $pagu_apbd = $clean_numeric($pagu_apbd_raw);
    $pagu_rkpd_perubahan = $clean_numeric($pagu_rkpd_perubahan_raw);
    $pagu_n1 = $clean_numeric($pagu_n1_raw);

    // --- Akhir Perbaikan Pembersihan Angka Pagu ---

    $data = null;

    if($kode_urusan != null AND $kode_bidang == null AND $kode_program == null AND $kode_kegiatan == null AND $kode_sub_kegiatan == null){
        $kode_u = $kode_urusan;
        $cek = RenjaUrusan::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->whereKodeUrusan($kode_u)->first();
        if (!$cek) {
            $data =  new RenjaUrusan([
                'kode_urusan'     => $kode_u,
                'nama_urusan'     => $nama_data,
                'skpd_id'    => Auth::user()->satuan_kerja_id,
                'tahun_anggaran' => session('tahun_anggaran'),
                'created_by'=> Auth::user()->id,
                'updated_by'=> Auth::user()->id,
            ]);
        }
    }
    else if($kode_urusan != null AND $kode_bidang != null AND $kode_program == null AND $kode_kegiatan == null AND $kode_sub_kegiatan == null){
        $kode_u = $kode_urusan;
        $kode_b = $kode_urusan.'.'.$kode_bidang;
        $cek = RenjaBidang::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->whereKodeBidang($kode_b)->first();
        if (!$cek) {
            $data =  new RenjaBidang([
                'kode_urusan'     => $kode_u,
                'kode_bidang'     => $kode_b,
                'nama_bidang'     => $nama_data,
                'skpd_id'    => Auth::user()->satuan_kerja_id,
                'tahun_anggaran' => session('tahun_anggaran'),
                'created_by'=> Auth::user()->id,
                'updated_by'=> Auth::user()->id,
            ]);
        }
    }
    else if($kode_urusan != null AND $kode_bidang != null AND $kode_program != null AND $kode_kegiatan == null AND $kode_sub_kegiatan == null){
        $kode_u = $kode_urusan;
        $kode_b = $kode_urusan.'.'.$kode_bidang;
        $kode_p = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program;
        $cek = RenjaProgram::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->whereKodeProgram($kode_p)->first();
        if (!$cek) {
            $data =  new RenjaProgram([
                'kode_urusan'     => $kode_u,
                'kode_bidang'     => $kode_b,
                'kode_program' => $kode_p,
                'nama_program'     => $nama_data,
                'indikator_program' => $indikator_data,
                'target_sebelum' => $target_sebelum,
                'target_sesudah' => $target_sesudah,
                'pagu_rkpd' => $pagu_rkpd,
                'pagu_apbd' => $pagu_apbd,
                'pagu_rkpd_perubahan' => $pagu_rkpd_perubahan,
                'pagu_n1' => $pagu_n1,
                'skpd_id'    => Auth::user()->satuan_kerja_id,
                'tahun_anggaran' => session('tahun_anggaran'),
                'created_by'=> Auth::user()->id,
                'updated_by'=> Auth::user()->id,
            ]);
        }
    }
    else if($kode_urusan != null AND $kode_bidang != null AND $kode_program != null AND $kode_kegiatan != null AND $kode_sub_kegiatan == null){
        $kode_u = $kode_urusan;
        $kode_b = $kode_urusan.'.'.$kode_bidang;
        $kode_p = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program;
        $kode_k = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program.'.'.$kode_kegiatan;
        $cek = RenjaKegiatan::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->where('kode_kegiatan',$kode_k)->first();

        $jml_target_sebelum =  0;
        $satuan_target_sebelum =  null;
        $jml_target_sesudah =  0;
        $satuan_target_sesudah =  null;

        if ($target_sebelum != null OR $target_sesudah != null) {
            $target_sebelum_arr =  explode(" ",$target_sebelum);
            $target_sesudah_arr =  explode(" ",$target_sesudah);

            // Pengecekan untuk memastikan elemen array ada
            $jml_target_sebelum =  isset($target_sebelum_arr[0]) ? (int)$target_sebelum_arr[0] : 0;
            $satuan_target_sebelum =  $target_sebelum_arr[1] ?? null;
            $jml_target_sesudah =  isset($target_sesudah_arr[0]) ? (int)$target_sesudah_arr[0] : 0;
            $satuan_target_sesudah =  $target_sesudah_arr[1] ?? null;
        }

        if (!$cek) {
            $data =  new RenjaKegiatan([
                'kode_urusan'     => $kode_u,
                'kode_bidang'     => $kode_b,
                'kode_program' => $kode_p,
                'kode_kegiatan' => $kode_k,
                'nama_kegiatan'     => $nama_data,
                'indikator_kegiatan' => $indikator_data,
                'target_sebelum' => $target_sebelum,
                'target_sesudah' => $target_sesudah,
                'jml_target_sebelum' => $jml_target_sebelum,
                'jml_target_sesudah' => $jml_target_sesudah,
                'satuan_target_sebelum' => $satuan_target_sebelum,
                'satuan_target_sesudah' => $satuan_target_sesudah,
                'pagu_rkpd' => $pagu_rkpd,
                'pagu_apbd' => $pagu_apbd,
                'pagu_rkpd_perubahan' => $pagu_rkpd_perubahan,
                'prioritas_nasional'=> $row[18] ?? null,
                'prioritas_daerah'=> $row[19] ?? null,
                'kelompok_sasaran'=> $row[20] ?? null,
                'pagu_n1' => $pagu_n1,
                'penanggung_jawab'    => $row[23] ?? null,
                'skpd_id'    => Auth::user()->satuan_kerja_id,
                'tahun_anggaran' => session('tahun_anggaran'),
                'created_by'=> Auth::user()->id,
                'updated_by'=> Auth::user()->id,
            ]);
        }
    }
    else if($kode_urusan != null AND $kode_bidang != null AND $kode_program != null AND $kode_kegiatan != null AND $kode_sub_kegiatan != null){
        $kode_u = $kode_urusan;
        $kode_b = $kode_urusan.'.'.$kode_bidang;
        $kode_p = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program;
        $kode_k = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program.'.'.$kode_kegiatan;
        $kode_sk = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program.'.'.$kode_kegiatan.'.'.$kode_sub_kegiatan;
        $cek = RenjaSubKegiatan::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(session('tahun_anggaran'))->where('kode_sub_kegiatan',$kode_sk)->first();

        $jml_target_sebelum =  0;
        $satuan_target_sebelum =  null;
        $jml_target_sesudah =  0;
        $satuan_target_sesudah =  null;

        if ($target_sebelum != null OR $target_sesudah != null) {
            $target_sebelum_arr =  explode(" ",$target_sebelum);
            $target_sesudah_arr =  explode(" ",$target_sesudah);

            // Pengecekan untuk memastikan elemen array ada
            $jml_target_sebelum =  isset($target_sebelum_arr[0]) ? (int)$target_sebelum_arr[0] : 0;
            $satuan_target_sebelum =  $target_sebelum_arr[1] ?? null;
            $jml_target_sesudah =  isset($target_sesudah_arr[0]) ? (int)$target_sesudah_arr[0] : 0;
            $satuan_target_sesudah =  $target_sesudah_arr[1] ?? null;
        }

        if (!$cek) {
            $data =  new RenjaSubKegiatan([
                'kode_urusan'     => $kode_u,
                'kode_bidang'     => $kode_b,
                'kode_program' => $kode_p,
                'kode_kegiatan' => $kode_k,
                'kode_sub_kegiatan' => $kode_sk,
                'nama_sub_kegiatan'     => $nama_data,
                'indikator_sub_kegiatan' => $indikator_data,
                'target_sebelum' => $target_sebelum,
                'target_sesudah' => $target_sesudah,
                'jml_target_sebelum' => $jml_target_sebelum,
                'jml_target_sesudah' => $jml_target_sesudah,
                'satuan_target_sebelum' => $satuan_target_sebelum,
                'satuan_target_sesudah' => $satuan_target_sesudah,
                'pagu_rkpd' => $pagu_rkpd,
                'pagu_apbd' => $pagu_apbd,
                'pagu_rkpd_perubahan' => $pagu_rkpd_perubahan,
                'lokasi' => $row[16] ?? null,
                'sumber_dana' => $row[17] ?? null,
                'prioritas_nasional'=> $row[18] ?? null,
                'prioritas_daerah'=> $row[19] ?? null,
                'kelompok_sasaran'=> $row[20] ?? null,
                'pagu_n1' => $pagu_n1,
                'penanggung_jawab'    => $row[23] ?? null,
                'skpd_id'    => Auth::user()->satuan_kerja_id,
                'tahun_anggaran' => session('tahun_anggaran'),
                'created_by'=> Auth::user()->id,
                'updated_by'=> Auth::user()->id,
            ]);
        }
    }
    else {
        // Baris yang tidak cocok dengan pola struktur (urusan, bidang, program, kegiatan, atau sub kegiatan)
        return null;
    }
    return $data;
}

    public function startRow(): int
    {
        return 11;
    }
}
