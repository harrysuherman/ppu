<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenstraUrusanResource\Pages;
use App\Filament\Resources\RenstraUrusanResource\RelationManagers;
use App\Models\RenstraUrusan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use App\Filament\Resources\RenstraUrusanResource\RelationManagers\ProgramsRelationManager;

class RenstraUrusanResource extends Resource
{
    protected static ?string $model = RenstraUrusan::class;

    // protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'RENSTRA';
    protected static ?string $navigationLabel = 'Urusan';
    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('kode_urusan')
                ->required()
                ->maxLength(10)
                ->unique(ignoreRecord: true), // Pastikan kode urusan unik
                TextInput::make('nama_urusan')
                ->required()
                ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('kode_urusan')->label('Kode Urusan')->searchable(),
                TextColumn::make('nama_urusan')->label('Nama Urusan')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
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
            ProgramsRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRenstraUrusans::route('/'),
            // 'create' => Pages\CreateRenstraUrusan::route('/create'),
            'edit' => Pages\EditRenstraUrusan::route('/{record}/edit'),
        ];
    }
}
