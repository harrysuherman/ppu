<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenjaProgramResource\Pages;
use App\Filament\Resources\RenjaProgramResource\RelationManagers;
use App\Models\RenjaProgram;
use App\Models\RenjaProgramIndikator;
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

    // protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Program';
    protected static ?string $navigationGroup = 'RENJA';
    protected static ?int $navigationSort = 3;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('kode_program')->label('Kode Program')->required(),
                    Forms\Components\TextInput::make('nama_program')->label('Nama Program')->required(),
                    Forms\Components\Textarea::make('indikator_program')->label('Indikator Program')->columnSpan('full'),
                    Forms\Components\Textarea::make('target_sebelum')->label('Referensi Target Sebelum'),
                    Forms\Components\Textarea::make('target_sesudah')->label('Referensi Target Sesudah'),
                    Forms\Components\Textarea::make('pagu_rkpd')->label('Pagu RKPD')->required(),
                    Forms\Components\Textarea::make('pagu_apbd')->required()->label('Pagu APBD'),
                    Forms\Components\Textarea::make('pagu_rkpd_perubahan')->required()->label('Pagu RKPD Perubahan'),
                    Forms\Components\Repeater::make('indikator')->columnSpan('full')->label('Rincian Indikator')
                    ->relationship()
                    ->schema([
                        Forms\Components\TextInput::make('indikator_program')->required()->columnSpan('full'),
                        Forms\Components\TextInput::make('target')->required(),
                        Forms\Components\TextInput::make('satuan')->required(),
                    ])->columns(2)
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
                // Tables\Columns\TextColumn::make('target_sebelum')->wrap()
                // ->description(fn (RenjaProgram $record): string => 'Sesudah '.$record->target_sesudah, position: 'above')
                // ,
                Tables\Columns\TextColumn::make('pagu_n1')->label('Rencana Pagu Indikatif (N+1)')->numeric()->wrap()
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()->label('Lihat')->modalHeading('Detail Renja Program'),
                    Tables\Actions\EditAction::make()->modalHeading('Edit Renja Program'),
                    Tables\Actions\DeleteAction::make()->label('Hapus')->modalHeading('Hapus Program'),
                ])->icon('heroicon-o-bars-3')->label('Aksi'),
                Tables\Actions\Action::make('indikator_program')->icon('heroicon-o-information-circle')->label('Indikator')
                ->modalHeading('Indikator Program')
                ->fillForm(fn (RenjaProgram $record): array => [
                    'indikator_program' => $record->indikator_program,
                    'target_sebelum' => $record->target_sebelum,
                    'target_sesudah' => $record->target_sesudah,
                    'indikator' => $record->indikator,
                ])
                ->form([
                    Forms\Components\Card::make([
                        Forms\Components\Textarea::make('indikator_program')->required(),
                        // Forms\Components\TextInput::make('target_sebelum')->label('Referensi Tagret')->required(),
                        Forms\Components\TextInput::make('target_sesudah')->label('Referensi Target')->required(),
                    ])->columns(2),
                    Forms\Components\Repeater::make('indikator')->label('Indikator Program')->addActionLabel('Tambah Indikator')
                    ->relationship()
                    ->schema([
                        Forms\Components\TextInput::make('indikator_program')->required()->columnSpan('full'),
                        Forms\Components\TextInput::make('target')->required(),
                        Forms\Components\TextInput::make('satuan')->required(),
                    ])->columns(2)
                    // ->collapsed()
                ])
                ->action(function (array $data, RenjaProgram $record): void {
                    // $record->author()->associate($data['authorId']);
                    $record->save();
                })
                ,

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
            // RelationManagers\IndikatorRelationManager::class,
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRenjaPrograms::route('/'),
            // 'create' => Pages\CreateRenjaProgram::route('/create'),
            // 'view' => Pages\ViewRenjaProgram::route('/{record}'),
            // 'edit' => Pages\EditRenjaProgram::route('/{record}/edit'),
        ];
    }
}
