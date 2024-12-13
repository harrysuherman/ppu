<?php

namespace App\Filament\Resources\RenjaKegiatanResource\Pages;

use App\Filament\Resources\RenjaKegiatanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRenjaKegiatans extends ListRecords
{
    protected static string $resource = RenjaKegiatanResource::class;
    protected static ?string $title = 'Renja Kegiatan';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tambah')->icon('heroicon-o-plus-circle'),
        ];
    }

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $data['satuan_kerja_id'] = 1;
        return $data;
    }
}
