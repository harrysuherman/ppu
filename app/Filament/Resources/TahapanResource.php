<?php

namespace App\Filament\Resources;

use App\Filament\Resources\TahapanResource\Pages;
use App\Filament\Resources\TahapanResource\RelationManagers;
use App\Models\Tahapan;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class TahapanResource extends Resource
{
    protected static ?string $model = Tahapan::class;

    // protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Tahapan';
    protected static ?string $navigationGroup = 'SETTING';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\Select::make('tahapan')->label('Tahapan')->options([
                        'IMPORT_RENJA'=>'Import Renja',
                        'VERIFIKASI_ISIAN_RENJA'=>'Verifikasi Isian Renja',
                        'PENGISIAN_REALISASI'=>'Pengisian Realisasi',
                        'PENGISIAN_TRIWULAN_I'=>'Pengisian Realisasi TW I',
                        'PENGISIAN_TRIWULAN_II'=>'Pengisian Realisasi TW II',
                        'PENGISIAN_TRIWULAN_III'=>'Pengisian Realisasi TW III',
                        'PENGISIAN_TRIWULAN_IV'=>'Pengisian Realisasi TW IV',
                    ]),
                    Forms\Components\DatePicker::make('tgl_mulai')->label('Tanggal Mulai'),
                    Forms\Components\DatePicker::make('tgl_selesai')->label('Tanggal Selesai'),
                ])->columns(3)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('tahapan'),
                Tables\Columns\TextColumn::make('tgl_mulai')->date('d F Y'),
                Tables\Columns\TextColumn::make('tgl_selesai')->date('d F Y'),
                Tables\Columns\ToggleColumn::make('aktif'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListTahapans::route('/'),
            // 'create' => Pages\CreateTahapan::route('/create'),
            // 'edit' => Pages\EditTahapan::route('/{record}/edit'),
        ];
    }
}
