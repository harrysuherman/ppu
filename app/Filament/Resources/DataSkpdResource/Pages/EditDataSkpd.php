<?php

namespace App\Filament\Resources\DataSkpdResource\Pages;

use App\Filament\Resources\DataSkpdResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditDataSkpd extends EditRecord
{
    protected static string $resource = DataSkpdResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
