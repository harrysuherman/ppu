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
        $kode_urusan = $row[1];
        $kode_bidang = $row[2];
        $kode_program = $row[3];
        $kode_kegiatan = $row[4];
        $kode_sub_kegiatan = $row[5];
        $data = [];
        if($kode_urusan != null AND $kode_bidang == null AND $kode_program == null AND $kode_kegiatan == null AND $kode_sub_kegiatan == null){
            $kode_u = $kode_urusan;
            $cek = RenjaUrusan::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(date('Y'))->whereKodeUrusan($kode_u)->first();
            if (!$cek) {
                $data =  new RenjaUrusan([
                    'kode_urusan'     => $kode_u,
                    'nama_urusan'     => $row[6],
                    'skpd_id'    => Auth::user()->satuan_kerja_id,
                    'tahun_anggaran' => date('Y'),
                    'created_by'=> Auth::user()->id,
                    'updated_by'=> Auth::user()->id,
                ]);
            }
            // dd('OK Urusan');
        }
        else if($kode_urusan != null AND $kode_bidang != null AND $kode_program == null AND $kode_kegiatan == null AND $kode_sub_kegiatan == null){
            $kode_u = $kode_urusan;
            $kode_b = $kode_urusan.'.'.$kode_bidang;
            $cek = RenjaBidang::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(date('Y'))->whereKodeBidang($kode_b)->first();
            if (!$cek) {
                $data =  new RenjaBidang([
                    'kode_urusan'     => $kode_u,
                    'kode_bidang'     => $kode_b,
                    'nama_bidang'     => $row[6],
                    'skpd_id'    => Auth::user()->satuan_kerja_id,
                    'tahun_anggaran' => date('Y'),
                    'created_by'=> Auth::user()->id,
                    'updated_by'=> Auth::user()->id,
                ]);
            }
            // dd('OK Bidang');
        }
        else if($kode_urusan != null AND $kode_bidang != null AND $kode_program != null AND $kode_kegiatan == null AND $kode_sub_kegiatan == null){
            $kode_u = $kode_urusan;
            $kode_b = $kode_urusan.'.'.$kode_bidang;
            $kode_p = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program;
            $cek = RenjaProgram::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(date('Y'))->whereKodeProgram($kode_p)->first();
            if (!$cek) {
                $data =  new RenjaProgram([
                    'kode_urusan'     => $kode_u,
                    'kode_bidang'     => $kode_b,
                    'kode_program' => $kode_p,
                    'nama_program'     => $row[6],
                    'indikator_program' => $row[7],
                    'target_sebelum' => $row[11],
                    'target_sesudah' => $row[12],
                    'pagu_rkpd' => str_replace(',00','',str_replace('.','',$row[13])),
                    'pagu_apbd' => str_replace(',00','',str_replace('.','',$row[14])),
                    'pagu_rkpd_perubahan' => str_replace(',00','',str_replace('.','',$row[15])),
                    'pagu_n1' => str_replace(',00','',str_replace('.','',$row[22])),
                    'skpd_id'    => Auth::user()->satuan_kerja_id,
                    'tahun_anggaran' => date('Y'),
                    'created_by'=> Auth::user()->id,
                    'updated_by'=> Auth::user()->id,
                ]);
            }
            // dd('OK Program');
        }
        else if($kode_urusan != null AND $kode_bidang != null AND $kode_program != null AND $kode_kegiatan != null AND $kode_sub_kegiatan == null){
            $kode_u = $kode_urusan;
            $kode_b = $kode_urusan.'.'.$kode_bidang;
            $kode_p = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program;
            $kode_k = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program.'.'.$kode_kegiatan;
            $cek = RenjaKegiatan::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(date('Y'))->where('kode_kegiatan',$kode_k)->first();
            // dd($cek);
            if (!$cek) {
                $data =  new RenjaKegiatan([
                    'kode_urusan'     => $kode_u,
                    'kode_bidang'     => $kode_b,
                    'kode_program' => $kode_p,
                    'kode_kegiatan' => $kode_k,
                    'nama_kegiatan'     => $row[6],
                    'indikator_kegiatan' => $row[7],
                    'target_sebelum' => $row[11],
                    'target_sesudah' => $row[12],
                    'pagu_rkpd' => str_replace(',00','',str_replace('.','',$row[13])),
                    'pagu_apbd' => str_replace(',00','',str_replace('.','',$row[14])),
                    'pagu_rkpd_perubahan' => str_replace(',00','',str_replace('.','',$row[15])),
                    'prioritas_nasional'=> $row[18],
                    'prioritas_daerah'=> $row[19],
                    'kelompok_sasaran'=> $row[20],
                    'pagu_n1' => str_replace(',00','',str_replace('.','',$row[22])),
                    'penanggung_jawab'    => $row[23],
                    'skpd_id'    => Auth::user()->satuan_kerja_id,
                    'tahun_anggaran' => date('Y'),
                    'created_by'=> Auth::user()->id,
                    'updated_by'=> Auth::user()->id,
                ]);
                // dd($data->id);
            }
            // dd('OK Kegiatan');
        }
        else if($kode_urusan != null AND $kode_bidang != null AND $kode_program != null AND $kode_kegiatan != null AND $kode_sub_kegiatan != null){
            $kode_u = $kode_urusan;
            $kode_b = $kode_urusan.'.'.$kode_bidang;
            $kode_p = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program;
            $kode_k = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program.'.'.$kode_kegiatan;
            $kode_sk = $kode_urusan.'.'.$kode_bidang.'.'.$kode_program.'.'.$kode_kegiatan.'.'.$kode_sub_kegiatan;
            $cek = RenjaSubKegiatan::whereSkpdId(Auth::user()->satuan_kerja_id)->whereTahunAnggaran(date('Y'))->where('kode_sub_kegiatan',$kode_sk)->first();
            // dd($cek);
            if (!$cek) {
                $data =  new RenjaSubKegiatan([
                    'kode_urusan'     => $kode_u,
                    'kode_bidang'     => $kode_b,
                    'kode_program' => $kode_p,
                    'kode_kegiatan' => $kode_k,
                    'kode_sub_kegiatan' => $kode_sk,
                    'nama_sub_kegiatan'     => $row[6],
                    'indikator_sub_kegiatan' => $row[7],
                    'target_sebelum' => $row[11],
                    'target_sesudah' => $row[12],
                    'pagu_rkpd' => str_replace(',00','',str_replace('.','',$row[13])),
                    'pagu_apbd' => str_replace(',00','',str_replace('.','',$row[14])),
                    'pagu_rkpd_perubahan' => str_replace(',00','',str_replace('.','',$row[15])),
                    'lokasi' => $row[16],
                    'sumber_dana' => $row[17],
                    'prioritas_nasional'=> $row[18],
                    'prioritas_daerah'=> $row[19],
                    'kelompok_sasaran'=> $row[20],
                    'pagu_n1' => str_replace(',00','',str_replace('.','',$row[22])),
                    'penanggung_jawab'    => $row[23],
                    'skpd_id'    => Auth::user()->satuan_kerja_id,
                    'tahun_anggaran' => date('Y'),
                    'created_by'=> Auth::user()->id,
                    'updated_by'=> Auth::user()->id,
                ]);
                // dd($data->id);
            }
            // dd('OK Sub Kegiatan');
        }
        else {
            // dd('Tidak ada data');
        }
        return $data;
    }

    public function startRow(): int
    {
        return 11;
    }
}
