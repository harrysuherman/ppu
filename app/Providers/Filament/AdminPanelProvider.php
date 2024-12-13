<?php

namespace App\Providers\Filament;

use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\Widgets;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\AuthenticateSession;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Joaopaulolndev\FilamentEditProfile\FilamentEditProfilePlugin;
use Filament\Navigation\NavigationItem;
use Filament\Navigation\MenuItem;
use Filament\Navigation\NavigationGroup;
use Auth;
use Joaopaulolndev\FilamentEditProfile\Pages\EditProfilePage;
use Leandrocfe\FilamentApexCharts\FilamentApexChartsPlugin;
use Swis\Filament\Backgrounds\FilamentBackgroundsPlugin;
use Filament\Enums\ThemeMode;
use Filament\Support\Enums\MaxWidth;
use IbrahimBougaoua\FilaSortable\FilaSortablePlugin;
use SolutionForest\FilamentPanphp\Components\PanOverview;
use Njxqlus\FilamentProgressbar\FilamentProgressbarPlugin;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->maxContentWidth(MaxWidth::Full)
            ->brandName('APLIKASI EVALUASI PEMBANGUNAN PEMDA')
            ->brandLogo(fn () => view('filament.admin.logo'))
            ->default()
            ->id('admin')
            ->path('admin')
            ->login(\App\Filament\Pages\EditLogin::class)
            ->colors([
                'primary' => Color::Amber,
            ])
            ->discoverResources(in: app_path('Filament/Resources'), for: 'App\\Filament\\Resources')
            ->discoverPages(in: app_path('Filament/Pages'), for: 'App\\Filament\\Pages')
            ->pages([
                Pages\Dashboard::class,
            ])
            ->topNavigation()
            ->breadcrumbs(false)
            ->sidebarCollapsibleOnDesktop()
            ->sidebarFullyCollapsibleOnDesktop()
            ->defaultThemeMode(ThemeMode::Dark)
            ->discoverWidgets(in: app_path('Filament/Widgets'), for: 'App\\Filament\\Widgets')
            ->widgets([
                Widgets\AccountWidget::class,
                Widgets\FilamentInfoWidget::class,
            ])
            ->navigationGroups([
                NavigationGroup::make()
                     ->label('Renja')
                     ->icon('heroicon-o-chart-bar-square')
                    ,
                NavigationGroup::make()
                    ->label('Laporan')
                    ->icon('heroicon-o-document-text')
                    ,
                NavigationGroup::make()
                    ->label('Data Master')
                    ->icon('heroicon-o-table-cells')
                    ->collapsed()
                    ,
                NavigationGroup::make()
                    ->label('Settings')
                    ->icon('heroicon-o-cog-6-tooth')
                    ->collapsed()
                    ,
            ])
            ->plugins([
                \Schmeits\FilamentPanAnalyticsWidget\FilamentPanAnalyticsWidgetPlugin::make()
                ->searchable(),
                \TomatoPHP\FilamentUsers\FilamentUsersPlugin::make(),
                \Hasnayeen\Themes\ThemesPlugin::make(),
                \BezhanSalleh\FilamentShield\FilamentShieldPlugin::make(),
                FilamentEditProfilePlugin::make()
                ->slug('my-profile')
                ->setTitle('My Profile')
                ->setNavigationLabel('My Profile')
                ->setNavigationGroup('Group Profile')
                ->setIcon('heroicon-o-user')
                ->setSort(10)
                ->shouldRegisterNavigation(false)
                ->shouldShowDeleteAccountForm(false)
                ->shouldShowBrowserSessionsForm(false)
                ->shouldShowAvatarForm()
                ->customProfileComponents([
                    // \App\Livewire\CustomProfileComponent::class,
                ]),
                FilamentApexChartsPlugin::make(),
                FilamentBackgroundsPlugin::make(),
                FilaSortablePlugin::make(),
                FilamentProgressbarPlugin::make()->color('#29b')
            ])
            ->navigationGroups([
                NavigationGroup::make()
                     ->label('SIPD')
                     ->icon('heroicon-o-document-text')
                    ,
                NavigationGroup::make()
                    ->label('Settings')
                    ->icon('heroicon-o-cog-6-tooth')
                    ->collapsed()
                    ,
            ])
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
                \Hasnayeen\Themes\Http\Middleware\SetTheme::class
            ])
            ->tenantMiddleware([
                \Hasnayeen\Themes\Http\Middleware\SetTheme::class,
            ])
            ->authMiddleware([
                Authenticate::class,
            ])
            ->userMenuItems([
                MenuItem::make()
                        ->label('My Profile')
                        ->url(fn (): string => EditProfilePage::getUrl())
                        ->icon('heroicon-m-user-circle'),
                MenuItem::make()
                    ->label('Roles')
                    ->url('/admin/shield/roles')
                    ->icon('heroicon-o-shield-check')->visible(function(){
                        if(Auth::check()){
                            return auth()->user()->can('view_any_role');
                        }
                    }),
                MenuItem::make()
                    ->label('Permissions')
                    ->url('/admin/permissions')
                    ->icon('heroicon-o-lock-closed')
                    ->visible(function(){
                        if(Auth::check()){
                            return auth()->user()->can('view_any_permission');
                        }
                    }),
                // ...
            ])
            ;
    }
}
