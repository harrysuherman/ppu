<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class DataSkpdController extends Controller
{
    public function dataSkpdStore(Request $request){
        $cek = DB::table('sipd_data_skpd')->where([
            'id_daerah'=> $request->id_daerah,
            'id_skpd'=> $request->id_skpd,
            'id_unit'=> $request->id_unit,
            'kode_skpd'=> $request->kode_skpd,
        ])->get();
        if($cek->count() >=1){
            return response()->json([
                'message'=>'fail insert data skpd',
            ]);
        }
        else{
            DB::table('sipd_data_skpd')->insert([
                'id_bidang_urusan_1'=> $request->id_bidang_urusan_1,
                'id_bidang_urusan_2'=> $request->id_bidang_urusan_2,
                'id_bidang_urusan_3'=> $request->id_bidang_urusan_3,
                'id_daerah'=> $request->id_daerah,
                'id_kecamatan'=> $request->id_kecamatan,
                'id_skpd'=> $request->id_skpd,
                'id_unit'=> $request->id_unit,
                'kode_skpd'=> $request->kode_skpd,
                'nama_skpd'=> $request->nama_skpd,
                'nama_kepala'=> $request->nama_kepala,
                'nip_kepala'=> $request->nip_kepala,
                'created_at'=> date('Y-m-d H:i:s'),
                'updated_at'=> date('Y-m-d H:i:s'),
            ]);
            return response()->json([
                'message'=>'success insert data skpd',
            ]);
        }
    }
}
