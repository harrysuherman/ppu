<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenjaUrusanResource\Pages;
use App\Filament\Resources\RenjaUrusanResource\RelationManagers;
use App\Models\RenjaUrusan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RenjaUrusanResource extends Resource
{
    protected static ?string $model = RenjaUrusan::class;

    protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Urusan';
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
            'index' => Pages\ListRenjaUrusans::route('/'),
            'create' => Pages\CreateRenjaUrusan::route('/create'),
            'view' => Pages\ViewRenjaUrusan::route('/{record}'),
            'edit' => Pages\EditRenjaUrusan::route('/{record}/edit'),
        ];
    }
}
