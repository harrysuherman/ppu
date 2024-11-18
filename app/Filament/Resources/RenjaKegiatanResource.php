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

    protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Kegiatan';
    protected static ?string $navigationGroup = 'Renja';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                //
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('kode_kegiatan')->searchable(),
                Tables\Columns\TextColumn::make('nama_kegiatan')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListRenjaKegiatans::route('/'),
            'create' => Pages\CreateRenjaKegiatan::route('/create'),
            'view' => Pages\ViewRenjaKegiatan::route('/{record}'),
            'edit' => Pages\EditRenjaKegiatan::route('/{record}/edit'),
        ];
    }
}
