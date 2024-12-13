<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SatuanKerjaResource\Pages;
use App\Filament\Resources\SatuanKerjaResource\RelationManagers;
use App\Models\SatuanKerja;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SatuanKerjaResource extends Resource
{
    protected static ?string $model = SatuanKerja::class;
    protected static ?string $title = 'Satuan Kerja';
    protected static ?string $navigationLabel = 'Satuan Kerja';
    protected static ?string $navigationGroup = 'Settings';
    protected static ?string $navigationIcon = 'heroicon-o-chevron-right';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('nama_satker')->label('Nama Satuan Kerja'),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_satker')->label('Nama')->searchable()
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                // Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                // Tables\Actions\BulkActionGroup::make([
                //     Tables\Actions\DeleteBulkAction::make(),
                // ]),
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
            'index' => Pages\ListSatuanKerjas::route('/'),
            // 'create' => Pages\CreateSatuanKerja::route('/create'),
            // 'edit' => Pages\EditSatuanKerja::route('/{record}/edit'),
        ];
    }
}
