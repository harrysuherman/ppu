<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use App\Models\RenjaProgram;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;

class RenjaWidget extends BaseWidget
{
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(
               RenjaProgram::query()
            )
            ->heading('')
            ->columns([
                TextColumn::make('nama_program')->searchable()->label('Nama Program')->wrap()
                ->description(fn (RenjaProgram $record): string => $record->kode_program, position: 'above')
                ,
                TextColumn::make('indikator_program')->searchable()->label('Indikator')->wrap(),
                TextColumn::make('target_sebelum')->label('Target Sebelum')->wrap(),
                TextColumn::make('target_sesudah')->label('Target Sesudah')->wrap(),
                TextColumn::make('pagu_rkpd')->label('Pagu RKPD (Rp.)')->numeric(),
                TextColumn::make('pagu_apbd')->label('Pagu APBD (Rp.)')->numeric(),
                TextColumn::make('pagu_rkpd_perubahan')->label('Pagu Perubahan (Rp.)')->numeric(),
            ])
            ->actions([
                // Action::make('detail')->icon('heroicon-o-eye')
                //     ->action(function (RenjaProgram $record) {
                //         $record->is_featured = true;
                //         $record->save();
                // }),
                Action::make('kegiatan')->icon('heroicon-o-document-text')
                    ->url(fn (RenjaProgram $record): string => route('filament.admin.pages.renja-program', ['kode_program'=>$record->kode_program]))
                    ->action(function (RenjaProgram $record) {
                        $record->is_featured = true;
                        $record->save();
                }),
            ])
            ;
    }
}
