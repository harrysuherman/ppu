<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenjaProgramResource\Pages;
use App\Filament\Resources\RenjaProgramResource\RelationManagers;
use App\Models\RenjaProgram;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RenjaProgramResource extends Resource
{
    protected static ?string $model = RenjaProgram::class;

    protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Program';
    protected static ?string $navigationGroup = 'Renja';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('kode_program')->label('Kode Program')->required(),
                    Forms\Components\TextInput::make('nama_program')->label('Nama Program')->required(),
                    Forms\Components\Textarea::make('indikator_program')->label('Indikator Program')->columnSpan('full')->required(),
                    Forms\Components\Textarea::make('target_sebelum')->label('Target Sebelum')->required(),
                    Forms\Components\Textarea::make('target_sesudah')->label('Target Sesudah')->required(),
                    Forms\Components\Textarea::make('pagu_rkpd')->required(),
                    Forms\Components\Textarea::make('pagu_apbd')->required(),
                    Forms\Components\Textarea::make('pagu_rkps_perubahan')->required(),
                ])->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('nama_program')->searchable()->wrap()
                ->description(fn (RenjaProgram $record): string => $record->kode_program, position: 'above')
                ,
                Tables\Columns\TextColumn::make('indikator_program')->wrap()->wrap(),
                Tables\Columns\TextColumn::make('target_sebelum')->wrap()
                ->description(fn (RenjaProgram $record): string => 'Sesudah '.$record->target_sesudah, position: 'above')
                ,
                Tables\Columns\TextColumn::make('pagu_n1')->label('Rencana Pagu Indikatif (N+1)')->numeric()->wrap()
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make()->label('Lihat')->modalHeading('Detail Renja Program'),
                Tables\Actions\EditAction::make()->modalHeading('Edit Renja Program'),
                Tables\Actions\Action::make('indikator_program')->icon('heroicon-o-information-circle')->label('Indikator')
                ->modalHeading('Indikator Program'),
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
            RelationManagers\IndikatorRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRenjaPrograms::route('/'),
            // 'create' => Pages\CreateRenjaProgram::route('/create'),
            // 'view' => Pages\ViewRenjaProgram::route('/{record}'),
            'edit' => Pages\EditRenjaProgram::route('/{record}/edit'),
        ];
    }
}
