<?php

namespace App\Filament\Resources;

use App\Filament\Resources\DataSkpdResource\Pages;
use App\Filament\Resources\DataSkpdResource\RelationManagers;
use App\Models\DataSkpd;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class DataSkpdResource extends Resource
{
    protected static ?string $model = DataSkpd::class;
    protected static ?string $navigationLabel = 'Data SKPD';
    protected static ?string $navigationGroup = 'SIPD';
    protected static bool $shouldRegisterNavigation = false;

    // protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('kode_skpd')->label('Kode SKPD')->required(),
                    Forms\Components\TextInput::make('nama_skpd')->label('Nama SKPD')->required(),
                    Forms\Components\TextInput::make('nama_kepala')->label('Nama Kepala')->required(),
                    Forms\Components\TextInput::make('nip_kepala')->label('NIP Kepala')->required(),
                ])->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('kode_skpd')->label('Kode SKPD')->wrap()->searchable(),
                Tables\Columns\TextColumn::make('nama_skpd')->label('Nama SKPD')->wrap()->searchable(),
                Tables\Columns\TextColumn::make('nama_kepala')->label('Nama Kepala')->wrap()->searchable(),
                Tables\Columns\TextColumn::make('nip_kepala')->label('NIP Kepala')->wrap()->searchable(),
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
            'index' => Pages\ListDataSkpds::route('/'),
            // 'create' => Pages\CreateDataSkpd::route('/create'),
            // 'view' => Pages\ViewDataSkpd::route('/{record}'),
            // 'edit' => Pages\EditDataSkpd::route('/{record}/edit'),
        ];
    }
}
