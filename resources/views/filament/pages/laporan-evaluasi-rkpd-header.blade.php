<div>
    <header class="fi-header flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
        <div>
            <h1 class="fi-header-heading text-2xl font-bold tracking-tight text-gray-950 dark:text-white sm:text-3xl">
               Laporan Evaluasi RKPD
                @if (Auth::user()->hasRole(['super_admin']))
                {{ $nama_satker }}
                @endif
            </h1>
        </div>
        @if (Auth::user()->hasRole(['super_admin']))
        <div class="flex shrink-0 items-center gap-3">
            <div
                class="fi-input-wrp flex rounded-lg shadow-sm ring-1 transition duration-75 bg-white dark:bg-white/5 [&amp;:not(:has(.fi-ac-action:focus))]:focus-within:ring-2 ring-gray-950/10 dark:ring-white/20 [&amp;:not(:has(.fi-ac-action:focus))]:focus-within:ring-primary-600 dark:[&amp;:not(:has(.fi-ac-action:focus))]:focus-within:ring-primary-500 fi-fo-select">
                <div class="min-w-0 flex-1">
                    <select
                        class="fi-select-input block w-full border-none bg-transparent py-1.5 pe-8 text-base text-gray-950 transition duration-75 focus:ring-0 disabled:text-gray-500 disabled:[-webkit-text-fill-color:theme(colors.gray.500)] dark:text-white dark:disabled:text-gray-400 dark:disabled:[-webkit-text-fill-color:theme(colors.gray.400)] sm:text-sm sm:leading-6 [&amp;_optgroup]:bg-white [&amp;_optgroup]:dark:bg-gray-900 [&amp;_option]:bg-white [&amp;_option]:dark:bg-gray-900 ps-3"
                        wire:model.live="satuan_kerja_id">
                        <option value="">--- Pilih Satuan Kerja ---</option>
                        @foreach (App\Models\SatuanKerja::all() as $s)
                            <option value="{{ $s->id }}">{{ $s->nama_satker }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
        </div>
        @endif
    </header>
</div>
