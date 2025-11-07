<div class="flex items-center justify-between p-4">
    <h1 class="text-xl font-semibold">Laporan Hasil Evaluasi RKPD - {{ $nama_satker }}</h1>
    <div class="flex space-x-2">
        @foreach ($headerActions as $action)
            {!! $action->render() !!} &nbsp;
        @endforeach
    </div>
</div>
