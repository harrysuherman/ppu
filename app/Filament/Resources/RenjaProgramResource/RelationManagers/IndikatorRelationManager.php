<?php

namespace App\Filament\Resources\RenjaProgramResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class IndikatorRelationManager extends RelationManager
{
    protected static string $relationship = 'indikator';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('indikator_program')->required()->maxLength(255)->columnSpan('full'),
                Forms\Components\TextInput::make('target')->required(),
                Forms\Components\TextInput::make('satuan')->required(),
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('indikator_program')
            ->columns([
                Tables\Columns\TextColumn::make('indikator_program'),
                Tables\Columns\TextColumn::make('target'),
                Tables\Columns\TextColumn::make('satuan'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make()->label('Tambah'),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }
}
