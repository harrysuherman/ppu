<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use App\Models\RenjaProgram;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use IbrahimBougaoua\FilaProgress\Tables\Columns\CircleProgress;
use IbrahimBougaoua\FilaProgress\Tables\Columns\ProgressBar;
use DB;
use Auth;
use App\Models\Scopes\RenjaProgram as Scope;
use Filament\Tables\Filters\SelectFilter;

class ProgramRenja extends BaseWidget
{
    protected int | string | array $columnSpan = 'full';
    protected static ?string $heading = 'Realisasi Program (Rp.)';

    public function table(Table $table): Table
    {
        if (Auth::user()->hasRole(['super_admin'])) {
            $query = RenjaProgram::query()->withoutGlobalScope(Scope::class)->whereTahunAnggaran(session('tahun_anggaran'));
        }
        else if (Auth::user()->hasRole(['satker'])) {
            $query = RenjaProgram::query();
        }
        else{

        }

        return $table
            ->query(
                $query
            )
            ->filters([
                SelectFilter::make('skpd_id')->label('Satuan Kerja')
                ->options(\App\Models\SatuanKerja::all()->pluck('nama_satker','id'))->hidden(fn()=> auth()->user()->hasRole(['satker']))
            ])
            ->columns([
                TextColumn::make('nama_program')->wrap(),
                // TextColumn::make('pagu_rkpd')->label('RKPD')->numeric()->wrap(),
                TextColumn::make('pagu_apbd')->label('APBD')->numeric()->wrap(),
                // TextColumn::make('pagu_rkpd_perubahan')->label('APBD Perubahan')->numeric(),
                CircleProgress::make('nilai_tw_1')->label('Triwulan I')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->sub_kegiatan->sum('nilai_realisasi_tw1'),
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('nilai_tw_2')->label('Triwulan II')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->sub_kegiatan->sum('nilai_realisasi_tw2'),
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('nilai_tw_3')->label('Triwulan III')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->sub_kegiatan->sum('nilai_realisasi_tw3'),
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('nilai_tw_4')->label('Triwulan IV')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->sub_kegiatan->sum('nilai_realisasi_tw4'),
                    ];
                })// ->hideProgressValue()
                ,
            ]);
    }

}
