<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RenjaSubKegiatanResource\Pages;
use App\Filament\Resources\RenjaSubKegiatanResource\RelationManagers;
use App\Models\RenjaSubKegiatan;
use App\Models\RenjaProgram;
use App\Models\RenjaBidang;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Actions\StaticAction;
use Auth;
use Filament\Tables\Grouping\Group;

class RenjaSubKegiatanResource extends Resource
{
    protected static ?string $model = RenjaSubKegiatan::class;

    protected static ?string $navigationIcon = 'heroicon-o-chevron-right';
    protected static ?string $navigationLabel = 'Sub Kegiatan';
    protected static ?string $navigationGroup = 'Renja';
    protected static ?int $navigationSort = 5;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Card::make([
                    Forms\Components\TextInput::make('kode_sub_kegiatan')->label('Kode Sub Kegiatan')->required(),
                    Forms\Components\TextInput::make('nama_sub_kegiatan')->label('Nama Sub Kegiatan')->required(),
                    Forms\Components\Textarea::make('indikator_sub_kegiatan')->label('Indikator Sub Kegiatan')->columnSpan('full')->required(),
                    Forms\Components\Fieldset::make('Target Sebelum')
                    ->schema([
                        Forms\Components\TextInput::make('jml_target_sebelum')->label('Jumlah')->required(),
                        Forms\Components\TextInput::make('satuan_target_sebelum')->label('Satuan')->required(),
                    ]),
                    Forms\Components\Fieldset::make('Target Sesudah')
                    ->schema([
                        Forms\Components\TextInput::make('jml_target_sesudah')->label('Jumlah')->required(),
                        Forms\Components\TextInput::make('satuan_target_sesudah')->label('Satuan')->required(),
                    ]),
                ])->columns(2)
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->groups([
                Group::make('kegiatan.nama_kegiatan')->collapsible()
                    ->getDescriptionFromRecordUsing(fn (RenjaSubKegiatan $record): string => $record->kegiatan->kode_kegiatan),
            ])
            ->columns([
                Tables\Columns\TextColumn::make('nama_sub_kegiatan')->searchable()->wrap()
                ->description(fn (RenjaSubKegiatan $record): string => $record->kode_sub_kegiatan, position: 'above'),
                Tables\Columns\TextColumn::make('indikator_sub_kegiatan')->wrap(),
                Tables\Columns\TextColumn::make('jml_target_sesudah')->label('Target')
                ->wrap()
                ->description(fn (RenjaSubKegiatan $record): string => $record->satuan_target_sesudah, position: 'above')
                ,
                Tables\Columns\TextColumn::make('pagu_apbd')->label('APBD')->wrap()->numeric()
                ->description(fn (RenjaSubKegiatan $record): string => 'RKPD '.number_format($record->pagu_rkpd), position: 'above')
                ,
                Tables\Columns\TextColumn::make('pagu_rkpd_perubahan')->label('RKPD Perubahan')->wrap()->numeric(),
            ])
            ->filters([
                \Filament\Tables\Filters\SelectFilter::make('kode_bidang')->label('Bidang')
                ->options(RenjaBidang::all()->pluck('nama_bidang','kode_bidang')),
                \Filament\Tables\Filters\SelectFilter::make('kode_program')->label('Program')
                    ->options(RenjaProgram::all()->pluck('nama_program','kode_program'))
            ])
            ->actions([
                Tables\Actions\ActionGroup::make([
                    Tables\Actions\ViewAction::make()->label('Lihat')->modalHeading('Detail Renja Sub Kegiatan'),
                    Tables\Actions\EditAction::make()->modalHeading('Edit Renja Sub Kegiatan'),
                    Tables\Actions\DeleteAction::make()->label('Hapus')->modalHeading('Hapus Renja Sub Kegiatan'),
                ])->icon('heroicon-o-bars-3')->tooltip('Aksi')->label('Aksi'),
                Tables\Actions\Action::make('rpd_2024_2026')->icon('heroicon-o-chart-bar-square')->label('RPD 2024-2026')
                ->fillForm(fn (RenjaSubKegiatan $record): array => [
                    'jml_target_rpd_2024_2026' => $record->jml_target_rpd_2024_2026,
                    'satuan_target_rpd_2024_2026' => $record->satuan_target_rpd_2024_2026,
                    'nilai_target_rpd_2024_2026' => $record->nilai_target_rpd_2024_2026,
                    ])
                ->form([
                    Forms\Components\Card::make([
                            Forms\Components\TextInput::make('jml_target_rpd_2024_2026')->label('Jumlah')->numeric()->default(0),
                            Forms\Components\TextInput::make('satuan_target_rpd_2024_2026')->label('Satuan'),
                            Forms\Components\TextInput::make('nilai_target_rpd_2024_2026')->label('Rp.')->numeric()->default(0),
                    ])->columns(3),
                ])
                ->action(function (array $data, RenjaSubKegiatan $record): void {
                    $record->jml_target_rpd_2024_2026 = $data['jml_target_rpd_2024_2026'];
                    $record->satuan_target_rpd_2024_2026 = $data['satuan_target_rpd_2024_2026'];
                    $record->nilai_target_rpd_2024_2026 = $data['nilai_target_rpd_2024_2026'];
                    $record->save();
                })
                ,
                Tables\Actions\Action::make('realisasi')->icon('heroicon-o-banknotes')->label('Realisasi')
                ->modalHeading('Realisasi Sub Kegiatan')
                ->modalSubmitAction(fn (StaticAction $action) => $action->label('Simpan'))
                ->modalCancelAction(fn (StaticAction $action) => $action->label('Tutup'))
                ->fillForm(fn (RenjaSubKegiatan $record): array => [
                    'triwulan' => $record->triwulan,
                    'pagu_rkpd' => $record->pagu_rkpd,
                    'pagu_apbd' => $record->pagu_apbd,
                    'pagu_rkpd_perubahan' => $record->pagu_rkpd_perubahan,
                    'jumlah' => $record->jumlah,
                    'nilai' => $record->nilai,
                    'nama_sub_kegiatan' => $record->nama_sub_kegiatan,
                    'indikator_sub_kegiatan' => $record->indikator_sub_kegiatan,
                    'target_sebelum' => $record->target_sebelum,
                    'target_sesudah' => $record->target_sesudah,
                    'jml_target_sebelum' => $record->jml_target_sebelum,
                    'jml_target_sesudah' => $record->jml_target_sesudah,
                    'satuan_target_sebelum' => $record->satuan_target_sebelum,
                    'satuan_target_sesudah' => $record->satuan_target_sesudah,
                    'jml_realisasi_tw1' => $record->jml_realisasi_tw1,
                    'nilai_realisasi_tw1' => $record->nilai_realisasi_tw1,
                    'jml_realisasi_tw2' => $record->jml_realisasi_tw2,
                    'nilai_realisasi_tw2' => $record->nilai_realisasi_tw2,
                    'jml_realisasi_tw3' => $record->jml_realisasi_tw3,
                    'nilai_realisasi_tw3' => $record->nilai_realisasi_tw3,
                    'jml_realisasi_tw4' => $record->jml_realisasi_tw4,
                    'nilai_realisasi_tw4' => $record->nilai_realisasi_tw4,
                    'updated_by' => Auth::user()->id,
                ])
                ->form([
                    Forms\Components\Card::make([
                        Forms\Components\Hidden::make('updated_by'),
                        Forms\Components\TextInput::make('nama_sub_kegiatan')->disabled()->columnSpan('full'),
                        Forms\Components\TextInput::make('indikator_sub_kegiatan')->columnSpan('full')->disabled(),
                        Forms\Components\TextInput::make('pagu_rkpd')->disabled()->numeric()->label('Pagu RKPD'),
                        Forms\Components\TextInput::make('pagu_apbd')->disabled()->numeric()->label('Pagu APBD'),
                        Forms\Components\TextInput::make('pagu_rkpd_perubahan')->disabled()->numeric()->label('Pagu RKPD Perubahan'),
                        Forms\Components\Fieldset::make('Target Sebelum')
                        ->schema([
                            Forms\Components\TextInput::make('jml_target_sebelum')->disabled()->label('Jumlah')->required(),
                            Forms\Components\TextInput::make('satuan_target_sebelum')->disabled()->label('Satuan')->required(),
                        ]),
                        Forms\Components\Fieldset::make('Target Sesudah')
                        ->schema([
                            Forms\Components\TextInput::make('jml_target_sesudah')->disabled()->label('Jumlah')->required(),
                            Forms\Components\TextInput::make('satuan_target_sesudah')->disabled()->label('Satuan')->required(),
                        ]),
                        Forms\Components\Fieldset::make('Realisasi')
                        ->schema([
                            Forms\Components\TextInput::make('jml_realisasi_tw1')->required()->numeric()->label('Jumlah Realisasi Triwulan I'),
                            Forms\Components\TextInput::make('nilai_realisasi_tw1')->required()->numeric()->label('Nilai Realisasi Triwulan I (Rp).'),
                            Forms\Components\TextInput::make('jml_realisasi_tw2')->required()->numeric()->label('Jumlah Realisasi Triwulan II'),
                            Forms\Components\TextInput::make('nilai_realisasi_tw2')->required()->numeric()->label('Nilai Realisasi Triwulan II (Rp).'),
                            Forms\Components\TextInput::make('jml_realisasi_tw3')->required()->numeric()->label('Jumlah Realisasi Triwulan III'),
                            Forms\Components\TextInput::make('nilai_realisasi_tw3')->required()->numeric()->label('Nilai Realisasi Triwulan III (Rp).'),
                            Forms\Components\TextInput::make('jml_realisasi_tw4')->required()->numeric()->label('Jumlah Realisasi Triwulan IV'),
                            Forms\Components\TextInput::make('nilai_realisasi_tw4')->required()->numeric()->label('Nilai Realisasi Triwulan IV (Rp).'),
                        ])

                        // Forms\Components\Repeater::make('realisasi')->label('REALISASI')
                        // ->maxItems(4)->defaultItems(4)
                        // ->default([
                        //     ['triwulan' => 'TW1', 'jumlah' => 0,'nilai'=> 0],
                        //     ['triwulan' => 'TW2', 'jumlah' => 0,'nilai'=> 0],
                        //     ['triwulan' => 'TW3', 'jumlah' => 0,'nilai'=> 0],
                        //     ['triwulan' => 'TW4', 'jumlah' => 0,'nilai'=> 0],
                        // ])
                        // ->relationship()
                        // ->schema([
                        //     Forms\Components\Select::make('triwulan')->required()
                        //     ->options([
                        //         'TW1'=>'Triwulan 1',
                        //         'TW2'=>'Triwulan 2',
                        //         'TW3'=>'Triwulan 3',
                        //         'TW4'=>'Triwulan 4',
                        //     ])
                        //     ,
                        //     Forms\Components\TextInput::make('jumlah')->numeric()->required(),
                        //     Forms\Components\TextInput::make('nilai')->numeric()->required(),
                        // ])->columnSpan('full')->columns(3)->addActionLabel('Tambah Realisasi')->cloneable()
                    ])->columns(3)
                ])
                ->action(function (array $data, RenjaSubKegiatan $record): void {
                    $record->jml_realisasi_tw1 = $data['jml_realisasi_tw1'];
                    $record->jml_realisasi_tw2 = $data['jml_realisasi_tw2'];
                    $record->jml_realisasi_tw3 = $data['jml_realisasi_tw3'];
                    $record->jml_realisasi_tw4 = $data['jml_realisasi_tw4'];
                    $record->nilai_realisasi_tw1 = $data['nilai_realisasi_tw1'];
                    $record->nilai_realisasi_tw2 = $data['nilai_realisasi_tw2'];
                    $record->nilai_realisasi_tw3 = $data['nilai_realisasi_tw3'];
                    $record->nilai_realisasi_tw4 = $data['nilai_realisasi_tw4'];
                    $record->save();
                })
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
            'index' => Pages\ListRenjaSubKegiatans::route('/'),
            // 'create' => Pages\CreateRenjaSubKegiatan::route('/create'),
            // 'view' => Pages\ViewRenjaSubKegiatan::route('/{record}'),
            // 'edit' => Pages\EditRenjaSubKegiatan::route('/{record}/edit'),
        ];
    }
}
