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

    // protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Urusan';
    protected static ?string $navigationGroup = 'RENJA';
    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('kode_urusan')->label('Kode Urusan'),
                    Forms\Components\TextInput::make('nama_urusan')->label('Nama Urusan'),
                ])->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('kode_urusan')->searchable(),
                Tables\Columns\TextColumn::make('nama_urusan')->searchable(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()->label('Lihat'),
                    Tables\Actions\EditAction::make(),
                ])
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    // Tables\Actions\DeleteBulkAction::make(),
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
            // 'create' => Pages\CreateRenjaUrusan::route('/create'),
            // 'view' => Pages\ViewRenjaUrusan::route('/{record}'),
            // 'edit' => Pages\EditRenjaUrusan::route('/{record}/edit'),
        ];
    }
}
