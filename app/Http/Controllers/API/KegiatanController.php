<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class KegiatanController extends Controller
{
    public function insertKegiatanFromSipd(Request $request){
        $cek = DB::table('sipd_kegiatan')->where([
            'id_bidang_urusan' => $request->id_bidang_urusan,
            'id_giat'=> $request->id_giat,
            'id_urusan'=> $request->id_urusan,
            'tahun'=> $request->tahun,
            'kode_giat'=> $request->kode_giat,
        ])->get();
        if($cek->count() >=1){
            return response()->json([
                'message'=>'fail insert kegiatan',
            ]);
        }
        else{
            DB::table('sipd_kegiatan')->insert([
                'id_bidang_urusan' => $request->id_bidang_urusan,
                'id_giat'=> $request->id_giat,
                'id_program'=> $request->id_program,
                'id_urusan'=> $request->id_urusan,
                'tahun'=> $request->tahun,
                'kode_giat'=> $request->kode_giat,
                'nama_giat'=> $request->nama_giat,
                'no_giat'=> $request->no_giat,
                'created_at'=> date('Y-m-d H:i:s'),
                'updated_at'=> date('Y-m-d H:i:s'),
            ]);
            return response()->json([
                'message'=>'success insert kegiatan',
            ]);
        }
    }
}
