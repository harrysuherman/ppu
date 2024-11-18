<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenjaBidangResource\Pages;
use App\Filament\Resources\RenjaBidangResource\RelationManagers;
use App\Models\RenjaBidang;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RenjaBidangResource extends Resource
{
    protected static ?string $model = RenjaBidang::class;

    protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Bidang';
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
                Tables\Columns\TextColumn::make('kode_bidang')->searchable(),
                Tables\Columns\TextColumn::make('nama_bidang')->searchable(),
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
            'index' => Pages\ListRenjaBidangs::route('/'),
            'create' => Pages\CreateRenjaBidang::route('/create'),
            'view' => Pages\ViewRenjaBidang::route('/{record}'),
            'edit' => Pages\EditRenjaBidang::route('/{record}/edit'),
        ];
    }
}
