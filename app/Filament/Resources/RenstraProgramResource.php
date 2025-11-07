<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenstraProgramResource\Pages;
use App\Filament\Resources\RenstraProgramResource\RelationManagers;
use App\Models\RenstraProgram;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\TextInput;
use App\Filament\Resources\RenstraProgramResource\RelationManagers\KegiatanRelationManager;

class RenstraProgramResource extends Resource
{
    protected static ?string $model = RenstraProgram::class;

    // protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';
    protected static ?string $navigationGroup = 'RENSTRA';
    protected static ?string $navigationLabel = 'Program';
    protected static ?int $navigationSort = 2;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('kode_program')
                ->required()
                ->maxLength(10)
                ->unique(ignoreRecord: true), // Pastikan kode urusan unik
                TextInput::make('nama_program')
                ->required()
                ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('kode_program')->label('Kode Program')->searchable(),
                TextColumn::make('nama_program')->label('Nama Program')->searchable(),
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
             KegiatanRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRenstraPrograms::route('/'),
            'create' => Pages\CreateRenstraProgram::route('/create'),
            'edit' => Pages\EditRenstraProgram::route('/{record}/edit'),
        ];
    }
}
