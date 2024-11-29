<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use App\Models\RenjaSubKegiatan;
use App\Models\RenjaBidang;
use App\Models\RenjaProgram;
use Auth;
use Filament\Tables\Grouping\Group;
use IbrahimBougaoua\FilaProgress\Infolists\Components\CircleProgressEntry;
use IbrahimBougaoua\FilaProgress\Infolists\Components\ProgressBarEntry;
use IbrahimBougaoua\FilaProgress\Tables\Columns\CircleProgress;
use IbrahimBougaoua\FilaProgress\Tables\Columns\ProgressBar;

class RealisasiKegiatanTable extends BaseWidget
{
    protected static ?int $sort = 2;
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(
                RenjaSubKegiatan::query()
            )
            ->paginated(['all'])
            ->groups([
                Group::make('kegiatan.nama_kegiatan')->collapsible()
                    ->getDescriptionFromRecordUsing(fn (RenjaSubKegiatan $record): string => $record->kegiatan->kode_kegiatan)
                    ,
            ])
            ->columns([
                Tables\Columns\TextColumn::make('nama_sub_kegiatan')->label('Sub Kegiatan')->searchable()->wrap()
                ->description(fn (RenjaSubKegiatan $record): string => $record->kode_sub_kegiatan, position: 'above')
                ,
                Tables\Columns\TextColumn::make('indikator_sub_kegiatan')->label('Indikator')->wrap(),
                Tables\Columns\TextColumn::make('jml_target_sesudah')->label('Target')
                ->description(fn (RenjaSubKegiatan $record): string => $record->satuan_target_sesudah, position: 'above')
                ->wrap(),
                Tables\Columns\TextColumn::make('pagu_apbd')->label('APBD')->wrap()->numeric()
                ,
                // Tables\Columns\TextColumn::make('pagu_rkpd_perubahan')->label('RKPD Perubahan')->wrap()->numeric(),
                // Tables\Columns\TextColumn::make('jml_realisasi_tw1')->label('TW I')
                // ->description(fn (RenjaSubKegiatan $record): string => 'Rp. '.number_format($record->nilai_realisasi_tw1), position: 'above')
                // ,
                // Tables\Columns\TextColumn::make('jml_realisasi_tw2')->label('TW II')
                // ->description(fn (RenjaSubKegiatan $record): string => 'Rp. '.number_format($record->nilai_realisasi_tw2), position: 'above')
                // ,
                // Tables\Columns\TextColumn::make('jml_realisasi_tw3')->label('TW III')
                // ->description(fn (RenjaSubKegiatan $record): string => 'Rp '.number_format($record->nilai_realisasi_tw3), position: 'above')
                // ,
                // Tables\Columns\TextColumn::make('jml_realisasi_tw4')->label('TW IV')
                // ->description(fn (RenjaSubKegiatan $record): string => 'Rp '.number_format($record->nilai_realisasi_tw4), position: 'above')
                // ,
                CircleProgress::make('jml_tw_1')->label('K (TW I)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->jml_target_sesudah,
                        'progress' => $record->jml_realisasi_tw1,
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('nilai_tw_1')->label('Rp. (TW I)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->nilai_realisasi_tw1,
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('jml_tw_2')->label('K (TW II)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->jml_target_sesudah,
                        'progress' => $record->jml_realisasi_tw2,
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('nilai_tw_2')->label('Rp. (TW II)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->nilai_realisasi_tw2,
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('jml_tw_3')->label('K (TW III)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->jml_target_sesudah,
                        'progress' => $record->jml_realisasi_tw3,
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('nilai_tw_3')->label('Rp. (TW III)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->nilai_realisasi_tw3,
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('jml_tw_4')->label('K (TW IV)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->jml_target_sesudah,
                        'progress' => $record->jml_realisasi_tw4,
                    ];
                })// ->hideProgressValue()
                ,
                CircleProgress::make('nilai_tw_4')->label('Rp. (TW IV)')
                ->getStateUsing(function ($record) {
                    return [
                        'total' => $record->pagu_apbd,
                        'progress' => $record->nilai_realisasi_tw4,
                    ];
                })// ->hideProgressValue()
            ])
            ->filters([
                \Filament\Tables\Filters\SelectFilter::make('kode_bidang')->label('Bidang')
                ->options(RenjaBidang::all()->pluck('nama_bidang','kode_bidang')),
                \Filament\Tables\Filters\SelectFilter::make('kode_program')->label('Program')
                    ->options(RenjaProgram::all()->pluck('nama_program','kode_program'))
            ])
            ;
    }
}
