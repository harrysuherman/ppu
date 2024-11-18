<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use App\Models\RenjaKegiatan as Renja;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\Layout\Panel;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;

class RenjaKegiatan extends BaseWidget
{
    protected int | string | array $columnSpan = 'full';

    public $kode_program;

    protected $queryString = [
        'kode_program',
    ];

    public function table(Table $table): Table
    {
        return $table
            ->heading('')
            ->query(
                Renja::query()
            )
            ->columns([
                // Panel::make([
                //     Tables\Columns\Layout\Split::make([
                //         TextColumn::make('nama_kegiatan')->searchable()->label('Nama Kegiatan')->description('Nama Kegiatan', position: 'above')->wrap()
                //         ->description(fn (Renja $record): string => $record->kode_kegiatan, position: 'above')
                //         ,
                //         TextColumn::make('indikator_kegiatan')->searchable()->label('Indikator')
                //         ->description('Indikator', position: 'above')
                //         ->wrap(),
                //         TextColumn::make('target_sebelum')->label('Target Sebelum')->description('Target Sebelum', position: 'above')->wrap(),
                //         TextColumn::make('target_sesudah')->label('Target Sesudah')->description('Target Sesudah', position: 'above')->wrap(),
                //         TextColumn::make('pagu_rkpd')->label('Pagu RKPD (Rp.)')->description('Pagu RKPD (Rp.)', position: 'above')->numeric(),
                //         TextColumn::make('pagu_apbd')->label('Pagu APBD (Rp.)')->description('Pagu APBD (Rp.)', position: 'above')->numeric(),
                //         TextColumn::make('pagu_rkpd_perubahan')->label('Pagu Perubahan (Rp.)')->description('Pagu Perubahan (Rp.)', position: 'above')->numeric(),
                //     ])
                // ])->collapsible()
                TextColumn::make('nama_kegiatan')->searchable()->label('Nama Kegiatan')->wrap()
                        ->description(fn (Renja $record): string => $record->kode_kegiatan, position: 'above')
                        ,
                        TextColumn::make('indikator_kegiatan')->searchable()->label('Indikator')
                        ->wrap(),
                        TextColumn::make('target_sebelum')->label('Target Sebelum')->wrap(),
                        TextColumn::make('target_sesudah')->label('Target Sesudah')->wrap(),
                        TextColumn::make('pagu_rkpd')->label('Pagu RKPD (Rp.)')->numeric(),
                        TextColumn::make('pagu_apbd')->label('Pagu APBD (Rp.)')->numeric(),
                        TextColumn::make('pagu_rkpd_perubahan')->label('Pagu Perubahan (Rp.)')->numeric(),
            ]);
    }
}
