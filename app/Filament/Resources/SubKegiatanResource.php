<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SubKegiatanResource\Pages;
use App\Filament\Resources\SubKegiatanResource\RelationManagers;
use App\Models\SubKegiatan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SubKegiatanResource extends Resource
{
    protected static ?string $model = SubKegiatan::class;

    // protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'Sub Kegiatan';
    protected static ?string $navigationGroup = 'SIPD';
    protected static bool $shouldRegisterNavigation = false;

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
                //
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
            'index' => Pages\ListSubKegiatans::route('/'),
            'create' => Pages\CreateSubKegiatan::route('/create'),
            'view' => Pages\ViewSubKegiatan::route('/{record}'),
            'edit' => Pages\EditSubKegiatan::route('/{record}/edit'),
        ];
    }
}
