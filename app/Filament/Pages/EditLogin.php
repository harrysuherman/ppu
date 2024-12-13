<?php

namespace App\Filament\Pages;

use Filament\Forms\Form;
use Filament\Pages\Auth\Login as BaseLogin;
use Filament\Forms\Components\Select;

use Filament\Facades\Filament;
use Illuminate\Validation\ValidationException;
use Filament\Http\Responses\Auth\Contracts\LoginResponse;
use DanHarrin\LivewireRateLimiting\Exceptions\TooManyRequestsException;

class EditLogin extends BaseLogin
{
    public function form(Form $form): Form
    {
        return $form
            ->schema([
                $this->getEmailFormComponent(),
                $this->getPasswordFormComponent(),
                Select::make('tahun_anggaran')->options([
                    '2024'=>'2024',
                    '2025'=>'2025',
                ])->default(date('Y')),
                Select::make('jenis_anggaran')->options([
                    'Murni'=>'Murni',
                    // 'Perubahan'=>'Perubahan',
                ])->default('Murni'),
                $this->getRememberFormComponent(),
            ]);
    }

    public function authenticate(): ?LoginResponse
    {
        try {
            $this->rateLimit(5);
        } catch (TooManyRequestsException $exception) {
            throw ValidationException::withMessages([
                'email' => __('filament::login.messages.throttled', [
                    'seconds' => $exception->secondsUntilAvailable,
                    'minutes' => ceil($exception->secondsUntilAvailable / 60),
                ]),
            ]);
        }

        $data = $this->form->getState();

        if (!Filament::auth()->attempt([
            'email' => $data['email'],
            'password' => $data['password'],
        ], $data['remember'])) {
            throw ValidationException::withMessages([
                'email' => __('filament::login.messages.failed'),
            ]);
        }
        session()->put('tahun_anggaran',$data['tahun_anggaran']);
        session()->put('filter_skpd',null);
        session()->put('jenis_anggaran',null);
        session()->regenerate();
        // dd(session('tahun_anggaran'));

        return app(LoginResponse::class);
    }
}
