<?php

namespace App\Filament\Pages;

use Filament\Pages\Page;
use Filament\Support\Enums\MaxWidth;
use Illuminate\Contracts\View\View;
use App\Models\SatuanKerja;
use Livewire\Attributes\On;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\LaporanEvaluasiRkpdExport;
use Filament\Actions\Action;
use Filament\Forms\Components\Select;
use Filament\Forms\Concerns\InteractsWithForms;
use Filament\Forms\Contracts\HasForms;

class LaporanEvaluasiRkpd extends Page implements HasForms
{
    use InteractsWithForms;

    protected static ?string $navigationLabel = 'Laporan Hasil Evaluasi RKPD';
    protected static ?string $navigationGroup = 'LAPORAN';
    protected static ?int $navigationSort = 2;

    protected static string $view = 'filament.pages.laporan-evaluasi-rkpd';

    public $satuan_kerja_id;
    public $nama_satker;

    public function mount()
    {
        $this->satuan_kerja_id = session('filter_skpd') ?? auth()->user()->satuan_kerja_id ?? null;
        $satker = SatuanKerja::find($this->satuan_kerja_id);
        $this->nama_satker = $satker ? $satker->nama_satker : 'Semua SKPD';
    }

    public function updated($property, $value)
    {
        if ($property === 'satuan_kerja_id') {
            session()->put('filter_skpd', $value);
            $satker = SatuanKerja::find($value);
            $this->nama_satker = $satker ? $satker->nama_satker : 'Semua SKPD';
            return redirect('admin/laporan-evaluasi-rkpd');
        }
    }

    #[On('cetak')]
    public function cetak()
    {
        $this->dispatch('cetak');
    }

    #[On('export-excel')]
    public function exportExcel()
    {
        $tahun = session('tahun_anggaran', date('Y'));
        $fileName = 'Laporan_Evaluasi_RKPD_' . ($this->nama_satker === 'Semua SKPD' ? 'All_SKPD' : $this->nama_satker) . '_' . $tahun . '.xlsx';
        return Excel::download(new LaporanEvaluasiRkpdExport($this->satuan_kerja_id), $fileName);
    }

    public function getMaxContentWidth(): MaxWidth
    {
        return MaxWidth::Full;
    }

    public function getHeader(): ?View
    {
        return view('filament.pages.laporan-evaluasi-rkpd-header-master', [
            'nama_satker' => $this->nama_satker,
            'headerActions' => $this->getHeaderActions()
        ]);
    }

    protected function getHeaderActions(): array
    {
        $actions = [];

        // Tambahkan action Filter SKPD hanya untuk super_admin
        if (auth()->check() && auth()->user()->hasRole('super_admin')) {
            $actions[] = Action::make('filterSkpd')
                ->label('Filter SKPD/Satuan Kerja')
                ->icon('heroicon-o-funnel')
                ->modalHeading('Pilih Satuan Kerja')
                ->form([
                    Select::make('satuan_kerja_id')
                        ->label('Satuan Kerja')
                        ->options(SatuanKerja::pluck('nama_satker', 'id')->toArray())
                        ->placeholder('Pilih Satuan Kerja')
                        ->default($this->satuan_kerja_id)
                        ->searchable()
                        ->required(),
                ])
                ->action(function (array $data) {
                    $this->satuan_kerja_id = $data['satuan_kerja_id'];
                    $this->updated('satuan_kerja_id', $this->satuan_kerja_id);
                });
        }

        // Tambahkan action Cetak
        $actions[] = Action::make('cetak')
            ->label('Print/Cetak')
            ->icon('heroicon-o-printer')
            ->action('cetak');

        // Tambahkan action Export Excel
        $actions[] = Action::make('exportExcel')
            ->label('Export Excel')
            ->icon('heroicon-o-document-arrow-down')
            ->action('exportExcel');

        return $actions;
    }
}
