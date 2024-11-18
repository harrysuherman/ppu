<?php

namespace App\Filament\Resources\RenjaBidangResource\Pages;

use App\Filament\Resources\RenjaBidangResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRenjaBidang extends EditRecord
{
    protected static string $resource = RenjaBidangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
