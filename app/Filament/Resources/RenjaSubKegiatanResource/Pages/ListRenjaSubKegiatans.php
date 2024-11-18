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
            Actions\CreateAction::make()->label('Tambah'),
        ];
    }
}
