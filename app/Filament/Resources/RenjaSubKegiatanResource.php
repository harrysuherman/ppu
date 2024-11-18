<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenjaSubKegiatanResource\Pages;
use App\Filament\Resources\RenjaSubKegiatanResource\RelationManagers;
use App\Models\RenjaSubKegiatan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RenjaSubKegiatanResource extends Resource
{
    protected static ?string $model = RenjaSubKegiatan::class;

    protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Sub Kegiatan';
    protected static ?string $navigationGroup = 'Renja';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('kode_sub_kegiatan')->label('Kode Sub Kegiatan')->required(),
                    Forms\Components\TextInput::make('nama_sub_kegiatan')->label('Nama Sub Kegiatan')->required(),
                    Forms\Components\Textarea::make('indikator_sub_kegiatan')->label('Nama Sub Kegiatan')->columnSpan('full')->required(),
                ])->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_sub_kegiatan')->searchable()->wrap()
                ->description(fn (RenjaSubKegiatan $record): string => $record->kode_sub_kegiatan, position: 'above'),
                Tables\Columns\TextColumn::make('indikator_sub_kegiatan')->wrap(),
                Tables\Columns\TextColumn::make('target_sebelum')->wrap()
                ->description(fn (RenjaSubKegiatan $record): string => 'Sesudah '.$record->target_sesudah, position: 'above')
                ,
                Tables\Columns\TextColumn::make('pagu_apbd')->label('Pagu APBD')->wrap()->numeric()
                ->description(fn (RenjaSubKegiatan $record): string => 'RKPD '.number_format($record->pagu_rkpd), position: 'above')
                ,
                Tables\Columns\TextColumn::make('pagu_rkpd_perubahan')->label('Pagu RKPD Perubahan')->wrap()->numeric()
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make()->label('Lihat')->modalHeading('Detail Renja Sub Kegiatan'),
                Tables\Actions\EditAction::make()->modalHeading('Edit Renja Sub Kegiatan'),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRenjaSubKegiatans::route('/'),
            // 'create' => Pages\CreateRenjaSubKegiatan::route('/create'),
            // 'view' => Pages\ViewRenjaSubKegiatan::route('/{record}'),
            // 'edit' => Pages\EditRenjaSubKegiatan::route('/{record}/edit'),
        ];
    }
}
