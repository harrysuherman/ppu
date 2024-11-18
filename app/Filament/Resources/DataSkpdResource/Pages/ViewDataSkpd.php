<?php

namespace App\Filament\Resources\DataSkpdResource\Pages;

use App\Filament\Resources\DataSkpdResource;
use Filament\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewDataSkpd extends ViewRecord
{
    protected static string $resource = DataSkpdResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
