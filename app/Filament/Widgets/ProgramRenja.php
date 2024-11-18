<?php

namespace App\Filament\Widgets;

use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use App\Models\RenjaProgram;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;

class ProgramRenja extends BaseWidget
{
    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table
            ->query(
                RenjaProgram::query()
            )
            ->columns([
                TextColumn::make('nama_program'),
                TextColumn::make('pagu_rkpd')->label('Pagu RKPD (Rp.)')->numeric(),
                TextColumn::make('pagu_apbd')->label('Pagu APBD (Rp.)')->numeric(),
                TextColumn::make('pagu_rkpd_perubahan')->label('Pagu Perubahan (Rp.)')->numeric(),
            ]);
    }

}
