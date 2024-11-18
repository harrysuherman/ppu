<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use App\Models\RenjaProgram;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Actions\Action;
use Filament\Tables\Actions\BulkActionGroup;
use Filament\Tables\Actions\DeleteBulkAction;

class RenjaProgramHeader extends BaseWidget
{
    protected int | string | array $columnSpan = 'full';

    public $kode_program;

    protected $queryString = [
        'kode_program',
    ];

    public function table(Table $table): Table
    {
        return $table
            ->headerActions([
                Action::make('kembali')->label('Daftar Program')->icon('heroicon-o-chevron-left')
                ->url('/admin/renja')
            ])
            ->heading('Program')
            ->query(
                RenjaProgram::query()->whereKodeProgram($this->kode_program)
            )
            ->columns([
                TextColumn::make('nama_program')->label('Nama Program')->wrap()
                ->description(fn (RenjaProgram $record): string => $record->kode_program, position: 'above')
                ,
                TextColumn::make('indikator_program')->label('Indikator')->wrap(),
                TextColumn::make('target_sebelum')->label('Target Sebelum')->wrap(),
                TextColumn::make('target_sesudah')->label('Target Sesudah')->wrap(),
                TextColumn::make('pagu_rkpd')->label('Pagu RKPD (Rp.)')->numeric(),
                TextColumn::make('pagu_apbd')->label('Pagu APBD (Rp.)')->numeric(),
                TextColumn::make('pagu_rkpd_perubahan')->label('Pagu Perubahan (Rp.)')->numeric(),
            ])->paginated(false);
    }
}
