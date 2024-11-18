<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RkaResource\Pages;
use App\Filament\Resources\RkaResource\RelationManagers;
use App\Models\Rka;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RkaResource extends Resource
{
    protected static ?string $model = Rka::class;

    // protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationLabel = 'RKA';
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
            'index' => Pages\ListRkas::route('/'),
            'create' => Pages\CreateRka::route('/create'),
            'view' => Pages\ViewRka::route('/{record}'),
            'edit' => Pages\EditRka::route('/{record}/edit'),
        ];
    }
}
