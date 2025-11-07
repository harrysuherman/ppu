<?php

namespace App\Filament\Resources;

use App\Filament\Resources\SpmResource\Pages;
use App\Filament\Resources\SpmResource\RelationManagers;
use App\Models\Spm;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SpmResource extends Resource
{
    protected static ?string $model = Spm::class;

    protected static ?string $navigationIcon = 'heroicon-o-bookmark-square';
    protected static ?string $navigationLabel = 'SPM';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('bidang')->label('SPM Bidang'),
                    Forms\Components\TextInput::make('alokasi_spm')->numeric()->label('Total Alokasi SPM'),
                    Forms\Components\TextInput::make('anggaran_skpd_pengampu')->numeric()->label('Anggaran SKPD Pengampu'),
                ])->columns(3)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('bidang')->label('Bidang'),
                Tables\Columns\TextColumn::make('alokasi_spm')->numeric()->label('Total Alokasi SPM'),
                Tables\Columns\TextColumn::make('anggaran_skpd_pengampu')->numeric()->label('Anggaran SKPD Pengampu'),
                Tables\Columns\TextColumn::make('persentase_alokasi')
                    ->label('Persentase Alokasi')
                    ->state(function (Spm $record): ?string {
                        if (empty($record->anggaran_skpd_pengampu) || (float)$record->anggaran_skpd_pengampu === 0.0) {
                            return 'N/A';
                        }
                        $persentase = ($record->alokasi_spm / $record->anggaran_skpd_pengampu) * 100;
                        return number_format($persentase, 2) . '%';
                    })
                    ->sortable()
                    ->alignEnd(),
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
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSpms::route('/'),
            // 'create' => Pages\CreateSpm::route('/create'),
            // 'edit' => Pages\EditSpm::route('/{record}/edit'),
        ];
    }
}
