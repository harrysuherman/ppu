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
use DB;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Actions\Action;
use Illuminate\Support\Str;

class RealisasiKegiatanTableAdmin extends BaseWidget
{
    protected static ?int $sort = 2;
    protected int | string | array $columnSpan = 'full';

    public $satuan_kerja_id = 6;

    protected $listeners = [
        'updateSatkerRealisasiKegiatanTableAdmin'=> 'updateData'
    ];

    public function updated($name, $value): void
    {
        if (Str::of($name)->contains('tableFilters')) {
            $this->dispatch('updateSatkerRealisasiKegiatanStatsOverviewAdmin', satuan_kerja_id: $value);
            // dd($value);
        }
    }

    public function updateData($satuan_kerja_id){
        // dd($satuan_kerja_id);
        $this->satuan_kerja_id = $satuan_kerja_id;
    }

    public function table(Table $table): Table
    {
        return $table
            ->emptyStateHeading('Tidak ada data!')
            ->query(
                RenjaSubKegiatan::query()->withoutGlobalScope(RenjaSubKegiatan::class)->where('skpd_id',session('filter_skpd'))
            )
            ->paginated([5,15,25,50,100])
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
                \Filament\Tables\Filters\SelectFilter::make('kode_program')->label('Program')
                    ->options(RenjaProgram::all()->pluck('nama_program','kode_program'))
            ])
            ->filtersTriggerAction(
                fn (Action $action) => $action
                    ->button()
                    ->label('Filter'),
            )
            ->deselectAllRecordsWhenFiltered(false)
            ;
    }
}
