<x-filament-panels::page>
    <div class="max-w-full p-6 bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700">
        <div class="relative overflow-x-auto sticky top-0">
            <div wire:loading wire:target="filter_bulan">
                Memperbarui data progres...
            </div>
            <br>
            <button wire:click="$dispatch('cetak')" style="--c-400:var(--primary-400);--c-500:var(--primary-500);--c-600:var(--primary-600);" class="fi-btn relative grid-flow-col items-center justify-center font-semibold outline-none transition duration-75 focus-visible:ring-2 rounded-lg fi-color-custom fi-btn-color-primary fi-color-primary fi-size-md fi-btn-size-md gap-1.5 px-3 py-2 text-sm inline-grid shadow-sm bg-custom-600 text-white hover:bg-custom-500 focus-visible:ring-custom-500/50 dark:bg-custom-500 dark:hover:bg-custom-400 dark:focus-visible:ring-custom-400/50 fi-ac-action fi-ac-btn-action">Cetak</button>
            <div id="printArea" class="table-wrp" style="height: 70vh;">
            <h2 class="uppercase mb-2">LAPORAN HASIL EVALUASU RKPD {{ session('thn_anggaran') }}</h2>
                <table class="w-full text-sm text-gray-300 dark:text-gray-400 ">
                    <thead
                        class="text-xs text-center uppercase sticky top-0" style="background:#CCC; z-index:1000">
                        <tr>
                            <th scope="col" class="px-2 border  py-2 sticky" rowspan="2" style="background:#CCC; left:40px;  z-index:2000">
                                Kode
                            </th>
                            <th scope="col" class="px-2 border  py-2 sticky" rowspan="2" style="min-width:300px; background:#CCC; left:40px;  z-index:2000">
                                Urusan/Bidang Urusan Pemerintahan Daerah dan Program/ Kegiatan/Sub Kegiatan
                            </th>
                            <th scope="col" class="px-2 border  py-2 sticky" rowspan="2" style="min-width:300px; background:#CCC; left:40px;  z-index:2000">
                                Indikator Kinerja Program (Outcome) / Kegiatan (Output)
                            </th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">
                                Target RPD Pada Tahun 2024 s/d 2026
                            </th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">
                                Realisasi Capaian Kinerja RPJMD s/d RKPD Tahun (2023)
                            </th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">
                                Target Kinerja dan Anggaran Renja Tahun Berjalan Yang Dievaluasi (2024)
                            </th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">Target Kinerja dan Anggaran Perubahan Tahun Berjalan Yang Dievaluasi (2023)</th>
                            <th scope="col" class="px-2 border  py-2" colspan="8">Realisasi Kinerja Triwulan</th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">Realisasi Capaian Kinerja Dan Anggaran Renja  yang Dievaluasi (2024)</th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">Tingkat Capaian Kinerja dari Realisasi Anggaran RKPD Tahun 2024 (%)</th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">Realisasi Kinerja dan Anggaran RPD s/d Tahun 2024 (Akhir Tahun Pelaksanaan RKPD)</th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2" colspan="2">Tingkat Capaian Kinerja dan Realisasi Anggaran RPD s/d Tahun 2024</th>
                            <th scope="col" class="px-2 border  py-2" rowspan="2">SKPD Penanggung Jawab</th>
                        </tr>
                        <tr>
                            <th scope="col" class="px-2 border  py-2" colspan="2">I</th>
                            <th scope="col" class="px-2 border  py-2" colspan="2">II</th>
                            <th scope="col" class="px-2 border  py-2" colspan="2">III</th>
                            <th scope="col" class="px-2 border  py-2" colspan="2">IV</th>
                        </tr>
                        <tr>
                            <th scope="col" class="px-2 border  py-2"></th>
                            <th scope="col" class="px-2 border  py-2"></th>
                            <th scope="col" class="px-2 border  py-2"></th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2">K</th>
                            <th scope="col" class="px-2 border  py-2">Rp</th>
                            <th scope="col" class="px-2 border  py-2"></th>
                        </tr>
                    </thead>
                    <tbody class="h-96 overflow-y-auto">
                        {{-- Urusan --}}
                        @foreach (App\Models\RenjaUrusan::get() as $ru)
                        <tr style="color:white; background:rgb(59, 59, 59);">
                            <td class="px-2 border  py-2 sticky left-0">{{ $ru->kode_urusan }}.</td>
                            <td class="px-2 border  py-2 sticky left-0" style="min-width:300px;">{{ $ru->nama_urusan }}</td>
                            <td class="px-2 border  py-2 sticky" style="min-width:300px;"></td>
                            <td class="px-2 border  py-2" colspan="26"></td>
                        </tr>
                            {{-- Bidang --}}
                            @foreach (App\Models\RenjaBidang::get() as $rb)
                            <tr style="color:white; background:rgb(89, 88, 88);">
                                <td class="px-2 border  py-2 sticky left-0">{{ $rb->kode_bidang }}.</td>
                                <td class="px-2 border  py-2 sticky left-0" style="min-width:300px;">{{ $rb->nama_bidang }}</td>
                                <td class="px-2 border  py-2 sticky" style="min-width:300px;"></td>
                                <td class="px-2 border  py-2" colspan="26"></td>
                            </tr>
                                {{-- Program --}}
                                @foreach (App\Models\RenjaProgram::get() as $rp)
                                <tr style="color:white; background:rgb(200, 74, 46);">
                                    <td class="px-2 border  py-2 sticky left-0">{{ $rp->kode_program }}.</td>
                                    <td class="px-2 border  py-2 sticky left-0" style="min-width:300px;">{{ $rp->nama_program }}</td>
                                    <td class="px-2 border  py-2 sticky left-0" style="min-width:300px;">
                                        {{ $rp->indikator_program }}
                                    </td>
                                    {{-- Target RPD Pada Tahun 2024 s/d 2026 --}}
                                    <td class="px-2 border  py-2"></td>
                                    {{-- Realisasi Capaian Kinerja RPJMD s/d RKPD Tahun (2023) --}}
                                    <td class="px-2 border  py-2"></td>
                                    {{-- Target Kinerja dan Anggaran Renja Tahun Berjalan Yang Dievaluasi --}}
                                    <td class="px-2 border  py-2 "></td>
                                    {{-- Target Kinerja dan Anggaran Perubahan Tahun Berjalan Yang Dievaluasi (2023) --}}
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                </tr>
                                    @foreach (App\Models\RenjaKegiatan::whereKodeProgram($rp->kode_program)->get() as $rk)
                                        <tr style="color:white; background:rgb(202, 114, 13);">
                                            <td class="px-2 border  py-2 sticky left-0">{{ $rk->kode_kegiatan }}.</td>
                                            <td class="px-2 border  py-2 sticky left-0" style="min-width:300px;">{{ $rk->nama_kegiatan }}</td>
                                            <td class="px-2 border  py-2 sticky left-0" style="min-width:300px;">{{ $rk->indikator_kegiatan }}</td>
                                            {{-- Target RPD Pada Tahun 2024 s/d 2026 --}}
                                            <td class="px-2 border  py-2"></td>
                                            {{-- Realisasi Capaian Kinerja RPJMD s/d RKPD Tahun (2023) --}}
                                            <td class="px-2 border  py-2"></td>
                                            {{-- Target Kinerja dan Anggaran Renja Tahun Berjalan Yang Dievaluasi --}}
                                            <td class="px-2 border  py-2 "></td>
                                            {{-- Target Kinerja dan Anggaran Perubahan Tahun Berjalan Yang Dievaluasi (2023) --}}
                                            <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                    <td class="px-2 border  py-2"></td>
                                        </tr>
                                            @foreach (App\Models\RenjaSubKegiatan::whereKodeKegiatan($rk->kode_kegiatan)->get() as $rsk)
                                            <tr style="background: #737c5b; color:white;">
                                                <td class="px-2 border  py-2 sticky left-0 sticky">{{ $rsk->kode_sub_kegiatan }}.</td>
                                                <td class="px-2 border  py-2 sticky left-0 sticky" style="min-width:300px;">{{ $rsk->nama_sub_kegiatan }}</td>
                                                <td class="px-2 border  py-2 sticky left-0 sticky" style="min-width:300px;">{{ $rsk->indikator_sub_kegiatan }}</td>
                                                {{-- Target RPD Pada Tahun 2024 s/d 2026 --}}
                                                <td class="px-2 border  py-2">
                                                    {{ $rsk->jml_target_rpd_2024_2026 }}  {{ $rsk->satuan_target_rpd_2024_2026 }}
                                                </td>
                                                <td class="px-2 border  py-2">
                                                    {{ number_format($rsk->nilai_target_rpd_2024_2026) }}
                                                </td>
                                                {{-- Target Kinerja dan Anggaran Renja Tahun Berjalan Yang Dievaluasi --}}
                                                <td class="px-2 border  py-2 "></td>
                                                {{-- Target Kinerja dan Anggaran Perubahan Tahun Berjalan Yang Dievaluasi (2023) --}}
                                                <td class="px-2 border  py-2"></td>
                                                <td class="px-2 border  py-2">{{ $rsk->jml_target_sesudah }}</td>
                                                <td class="px-2 border  py-2">{{ number_format($rsk->nilai_target) }}</td>
                                                <td class="px-2 border  py-2"></td>
                                                <td class="px-2 border  py-2"></td>
                                                <td class="px-2 border  py-2">{{ $rsk->jml_realisasi_tw1 }}</td>
                                                <td class="px-2 border  py-2">{{ number_format($rsk->nilai_realisasi_tw1) }}</td>
                                                <td class="px-2 border  py-2">{{ $rsk->jml_realisasi_tw2 }}</td>
                                                <td class="px-2 border  py-2">{{ number_format($rsk->nilai_realisasi_tw2) }}</td>
                                                <td class="px-2 border  py-2">{{ $rsk->jml_realisasi_tw3 }}</td>
                                                <td class="px-2 border  py-2">{{ number_format($rsk->nilai_realisasi_tw3) }}</td>
                                                <td class="px-2 border  py-2">{{ $rsk->jml_realisasi_tw4 }}</td>
                                                <td class="px-2 border  py-2">{{ number_format($rsk->nilai_realisasi_tw4) }}</td>
                                                @php
                                                $jml_realisasi_capaian = $rsk->jml_realisasi_tw1 + $rsk->jml_realisasi_tw2 + $rsk->jml_realisasi_tw3 + $rsk->jml_realisasi_tw4;
                                                $nilai_realisasi_capaian = $rsk->nilai_realisasi_tw1 + $rsk->nilai_realisasi_tw2 + $rsk->nilai_realisasi_tw3 + $rsk->nilai_realisasi_tw4;
                                                @endphp
                                                <td class="px-2 border  py-2">{{ $jml_realisasi_capaian }}</td>
                                                <td class="px-2 border  py-2">{{ number_format($nilai_realisasi_capaian) }}</td>
                                                <td class="px-2 border  py-2"> {{ ($jml_realisasi_capaian) ? number_format($jml_realisasi_capaian/$rsk->jml_target_sesudah*100,2) : 0.00 }} </td>
                                                <td class="px-2 border  py-2">{{ ($nilai_realisasi_capaian) ? number_format($nilai_realisasi_capaian/$rsk->pagu_apbd*100,2) : 0.00 }}</td>
                                                <td class="px-2 border  py-2"> {{ ($jml_realisasi_capaian) ? number_format($jml_realisasi_capaian/$rsk->jml_target_sesudah*100,2) : 0.00 }} </td>
                                                <td class="px-2 border  py-2">{{ ($nilai_realisasi_capaian) ? number_format($nilai_realisasi_capaian/$rsk->nilai_target*100,2) : 0.00 }}</td>
                                                <td class="px-2 border  py-2"></td>
                                                <td class="px-2 border  py-2"></td>
                                                <td class="px-2 border  py-2">{{ $rsk->skpd->nama_satker }}</td>
                                            </tr>
                                        @endforeach
                                    @endforeach
                                @endforeach
                            @endforeach
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</x-filament-panels::page>
<script>
    window.addEventListener("cetak", e => {
        var printContents = document.getElementById('printArea').innerHTML;
        var originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    })
</script>
@push('scripts')
    <script>
        function printDiv(divName) {
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
    </script>
@endpush
