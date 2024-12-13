<?php

namespace App\Filament\Resources\TahapanResource\Pages;

use App\Filament\Resources\TahapanResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListTahapans extends ListRecords
{
    protected static string $resource = TahapanResource::class;
    protected static ?string $title = 'Tahapan';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tambah'),
        ];
    }
}
