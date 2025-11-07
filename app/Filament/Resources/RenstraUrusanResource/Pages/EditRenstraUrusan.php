<?php

namespace App\Filament\Resources\RenstraUrusanResource\Pages;

use App\Filament\Resources\RenstraUrusanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditRenstraUrusan extends EditRecord
{
    protected static string $resource = RenstraUrusanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\Action::make('daftar')->icon('heroicon-o-list-bullet')->url(route('filament.admin.resources.renstra-urusans.index')),
        ];
    }
}
