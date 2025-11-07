<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenjaKegiatanResource\Pages;
use App\Filament\Resources\RenjaKegiatanResource\RelationManagers;
use App\Models\RenjaKegiatan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RenjaKegiatanResource extends Resource
{
    protected static ?string $model = RenjaKegiatan::class;

    // protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Kegiatan';
    protected static ?string $navigationGroup = 'RENJA';
    protected static ?int $navigationSort = 4;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('kode_kegiatan')->label('Kode Kegiatan')->required(),
                    Forms\Components\TextInput::make('nama_kegiatan')->label('Nama Kegiatan')->required(),
                    Forms\Components\Textarea::make('indikator_kegiatan')->label('Indikator Kegiatan')->columnSpan('full')->required(),
                ])->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_kegiatan')->searchable()->wrap()
                ->description(fn (RenjaKegiatan $record): string => $record->kode_kegiatan, position: 'above')
                ,
                Tables\Columns\TextColumn::make('target_sesudah')->wrap()->label('Target')
                // ->description(fn (RenjaKegiatan $record): string => 'Sesudah '.$record->target_sesudah, position: 'above')
                ,
                Tables\Columns\TextColumn::make('pagu_apbd')->label('Pagu APBD')->wrap()->numeric()
                // ->description(fn (RenjaKegiatan $record): string => 'RKPD '.number_format($record->pagu_rkpd), position: 'above')
                ,
                // Tables\Columns\TextColumn::make('pagu_rkpd_perubahan')->label('Pagu RKPD Perubahan')->wrap()->numeric()
                // Tables\Columns\TextColumn::make('satuan_kerja_bidang')->label('Bidang')->wrap()
            ])
            ->filters([
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()->label('Lihat'),
                    Tables\Actions\EditAction::make(),
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListRenjaKegiatans::route('/'),
            // 'create' => Pages\CreateRenjaKegiatan::route('/create'),
            // 'view' => Pages\ViewRenjaKegiatan::route('/{record}'),
            // 'edit' => Pages\EditRenjaKegiatan::route('/{record}/edit'),
        ];
    }

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $data['satuan_kerja_id'] = 1;
        return $data;
    }
}
