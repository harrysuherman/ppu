<?php

namespace App\Filament\Resources\UserResource\Pages;

use App\Filament\Resources\UserResource;
use Filament\Resources\Pages\ListRecords;
use Filament\Actions\CreateAction;

class ListUsers extends ListRecords
{
    protected static string $resource = UserResource::class;

    public function getTitle(): string
    {
        return 'Pengguna';
    }

    protected function getActions(): array
    {
        return [
            CreateAction::make()->label('Tambah')->icon('heroicon-o-plus-circle'),
        ];
    }
}
