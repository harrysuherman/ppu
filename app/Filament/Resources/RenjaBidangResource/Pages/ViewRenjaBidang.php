<?php

namespace App\Filament\Resources\RenjaBidangResource\Pages;

use App\Filament\Resources\RenjaBidangResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewRenjaBidang extends ViewRecord
{
    protected static string $resource = RenjaBidangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
