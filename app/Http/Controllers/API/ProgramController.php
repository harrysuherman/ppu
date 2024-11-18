<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class ProgramController extends Controller
{
    public function insertProgramFromSipd(Request $request){
        $cek = DB::table('sipd_program')->where([
            'id_program'=> $request->id_program,
            'nama_program'=> $request->nama_program,
            'id_urusan'=> $request->id_urusan,
            'tahun'=> $request->tahun,
            'kode_program'=> $request->kode_program,
        ])->get();
        if($cek->count() >=1){
            return response()->json([
                'message'=>'fail insert program',
            ]);
        }
        else{
            DB::table('sipd_program')->insert([
                'id_program'=> $request->id_program,
                'nama_program'=> $request->nama_program,
                'id_urusan'=> $request->id_urusan,
                'tahun'=> $request->tahun,
                'kode_program'=> $request->kode_program,
                'created_at'=> date('Y-m-d H:i:s'),
                'updated_at'=> date('Y-m-d H:i:s'),
            ]);
            return response()->json([
                'message'=>'success insert program',
            ]);
        }
    }
}
