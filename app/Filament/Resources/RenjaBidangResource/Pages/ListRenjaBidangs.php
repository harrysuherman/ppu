<?php

namespace App\Filament\Resources\RenjaBidangResource\Pages;

use App\Filament\Resources\RenjaBidangResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListRenjaBidangs extends ListRecords
{
    protected static string $resource = RenjaBidangResource::class;
    protected static ?string $title = 'Renja Bidang';

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make()->label('Tambah')->icon('heroicon-o-plus-circle'),
        ];
    }
}
