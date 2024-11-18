<?php

namespace App\Filament\Resources\DataSkpdResource\Pages;

use App\Filament\Resources\DataSkpdResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Support\Enums\MaxWidth;

class ListDataSkpds extends ListRecords
{
    protected static string $resource = DataSkpdResource::class;
    protected static ?string $title = 'Data SKPD';

    public function getMaxContentWidth(): MaxWidth
    {
        return MaxWidth::Full;
    }

    protected function getHeaderActions(): array
    {
        return [
            // Actions\CreateAction::make(),
        ];
    }
}
