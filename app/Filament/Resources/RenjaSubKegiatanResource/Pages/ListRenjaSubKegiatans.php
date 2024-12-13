<?php

namespace App\Filament\Resources\RenjaSubKegiatanResource\Pages;

use App\Filament\Resources\RenjaSubKegiatanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Support\Enums\MaxWidth;

class ListRenjaSubKegiatans extends ListRecords
{
    protected static string $resource = RenjaSubKegiatanResource::class;
    protected static ?string $title = 'Renja Sub Kegiatan';

    public function getMaxContentWidth(): MaxWidth
    {
        return MaxWidth::Full;
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('refresh')->label('Refresh Data')->icon('heroicon-o-arrow-path')->color('success')
            ->url(route('filament.admin.resources.renja-sub-kegiatans.index')),
            Actions\CreateAction::make()->label('Tambah')->icon('heroicon-o-plus-circle'),
        ];
    }
}
