<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use App\Filament\Widgets\StatsOverview;
use App\Filament\Widgets\Chart1;
use App\Filament\Widgets\Chart2;
use App\Filament\Widgets\ProgramRenja;
use App\Filament\Widgets\RealisasiKegiatanStatsOverview;
use Filament\Actions\Action;
use Filament\Forms;
use Filament\Forms\Form;

class Dashboard extends Page
{
    protected static ?string $navigationIcon = 'heroicon-o-document-text';
    protected static ?string $title = 'Dashboard';

    protected static string $view = 'filament.pages.dashboard';

    protected function getHeaderWidgets(): array
    {
        return [
            StatsOverview::class,
            RealisasiKegiatanStatsOverview::class,
            Chart1::class,
            Chart2::class,
            ProgramRenja::class,
        ];
    }

    protected function getHeaderActions(): array
    {
        return [
            Action::make('ganti_tahun_anggaran')->label('Ganti Tahun Anggaran')->icon('heroicon-o-adjustments-horizontal')
            ->form([
                Forms\Components\Card::make([
                    Forms\Components\Select::make('tahun_anggaran')->options([
                        '2024'=>'2024',
                        '2025'=>'2025',
                    ])->default(session('tahun_anggaran'))
                ]),
            ])
            ->action(function (array $data){
                session()->put('tahun_anggaran',$data['tahun_anggaran']);
                return redirect('admin/dashboard');
            })
            ,
        ];
    }
}
