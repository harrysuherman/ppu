<?php

namespace App\Filament\Resources\RenstraProgramResource\RelationManagers;

use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KegiatanRelationManager extends RelationManager
{
    protected static string $relationship = 'kegiatan';

    public function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('kode_kegiatan')->required()->maxLength(10)->label('Kode Kegiatan'),
               Forms\Components\TextInput::make('nama_kegiatan')->required()->maxLength(255)->label('Nama Kegiatan')
            ]);
    }

    public function table(Table $table): Table
    {
        return $table
            ->recordTitleAttribute('nama_kegiatan')
            ->columns([
                Tables\Columns\TextColumn::make('kode_kegiatan'),
                Tables\Columns\TextColumn::make('nama_kegiatan'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
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
