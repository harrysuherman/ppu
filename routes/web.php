<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect('admin/dashboard');
});
Route::get('/admin', function () {
    return redirect('admin/dashboard');
});
Route::get('api/program/store', 'App\Http\Controllers\API\ProgramController@insertProgramFromSipd')->name('api.program.store');
Route::get('api/kegiatan/store', 'App\Http\Controllers\API\KegiatanController@insertKegiatanFromSipd')->name('api.kegiatan.store');
Route::get('api/dataskpd/store', 'App\Http\Controllers\API\DataSkpdController@dataSkpdStore')->name('api.data-skpd.store');
