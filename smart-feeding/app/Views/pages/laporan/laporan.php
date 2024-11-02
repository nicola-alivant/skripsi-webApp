<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h3 class="h3"><i class="bi bi-laptop"></i>&nbsp;&nbsp; Laporan</h3>
    </div>
    <table id="tabel-data" class="table table-striped table-bordered display nowrap" width="100%" cellspacing="0">
        <thead>
            <tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Hari</th>
                <th>Jam</th>
                <th>Suhu Air</th>
                <th>pH Air</th>
                <th>Jumlah Ikan</th>
                <th>Lama Pakan Diberikan</th>
                <th>Status</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>No</th>
                <th>Tanggal</th>
                <th>Hari</th>
                <th>Jam</th>
                <th>Suhu Air</th>
                <th>pH Air</th>
                <th>Jumlah Ikan</th>
                <th>Lama Pakan Diberikan</th>
                <th>Status</th>
            </tr>
        </tfoot>
        <tbody></tbody>
    </table>

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h3 class="h3"><i class="bi bi-laptop"></i>&nbsp;&nbsp; Diagram Lama Pemberian Pakan</h3>
    </div>
    <canvas class="my-4" id="chartLamaPakan"></canvas>

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h3 class="h3"><i class="bi bi-laptop"></i>&nbsp;&nbsp; Diagram Suhu Kolam</h3>
    </div>
    <canvas class="my-4" id="chartSuhu"></canvas>

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h3 class="h3"><i class="bi bi-laptop"></i>&nbsp;&nbsp; Diagram pH Kolam</h3>
    </div>
    <canvas class="my-4" id="chartPh"></canvas>
</main>

<?php include('tableAndDiagram.php'); ?>

<script>
    setInterval(fetchData, 200000);
    fetchData();

    // Event listener untuk reload chart setiap kali datatable melakukan redraw
    table.on('draw', function() {
        updateChartLamaPakan();
        updateChartSuhu();
        updateChartPh();
    });
</script>

<?= $this->endSection() ?>