<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>


<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h3 class="h3"><i class="bi bi-laptop"></i>&nbsp;&nbsp; Monitoring Kolam</h3>
    </div>

    <div class="row d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center">
        <div class="card col-md-4 mb-4" style="width: 18rem; height: 90px;">
            <div class="card-body">
                <h5 class="card-title">Suhu Kolam</h5>
                <p class="card-text text-end" id="suhuKolam"></p>
            </div>
        </div>

        <div class="card col-md-4 mb-4 mx-5" style="width: 18rem; height: 90px;">
            <div class="card-body">
                <h5 class="card-title">pH Kolam</h5>
                <p class="card-text text-end" id="phKolam"></p>
            </div>
        </div>

        <div class="card col-md-4 mb-5" style="width: 18rem; height: 110px;">
            <div class="card-body">
                <h5 class="card-title">Lama Pemberian<br>Pakan Diberikan</h5>
                <p class="card-text text-end" id="lamaPakan"></p>
            </div>
            *1 detik = 1 gram
        </div>
    </div>

    <div class="row d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center">
        <div class="col-md-3 mb-5"></div>        

        <div class="card col-md-3 mb-4 mx-5" style="width: 18rem; height: 100px;">
            <div class="card-body">
                <h5 class="card-title">Air Pump</h5>
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center mt-2">
                    <label for="airPumpCheckbox" id="airPumpLabel"></label>
                    <div class="form-check form-switch mt-1">
                        <input class="form-check-input" type="checkbox" role="switch" id="airPumpCheckbox">
                    </div>
                </div>
            </div>
        </div>

        <div class="card col-md-3 mb-4 mx-5" style="width: 18rem; height: 100px;">
            <div class="card-body">
                <h5 class="card-title">Jumlah Ikan</h5>
                <input type="number" id="jumlahIkan" class="card-text text-end form-control" min="1">
            </div>
            *tidak boleh bernilai 0
        </div>

        <div class="col-md-3 mb-5"></div>
    </div>

    <div class="d-flex align-items-center justify-content-center my-3">
        <div class="btn btn-primary" id="btnBeriPakan">Beri pakan secara manual</div>
    </div>

    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h3 class="h3"><i class="bi bi-clock"></i>&nbsp;&nbsp; Timer Pakan</h3>
        <div class="btn-toolbar mb-2 mb-md-0">
            <div class="btn-group me-2">
            <div class="d-flex flex-wrap flex-md-nowrap">
                <label for="timerCheckbox" id="timerLabel" class="me-3"></label>
                    <div class="form-check form-switch">
                        <input class="form-check-input" type="checkbox" role="switch" id="timerCheckbox">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center">
        <div class="card col-md-6 mb-4 mx-3" style="width: 18rem; height: 100px;">
            <div class="card-body">
                <h5 class="card-title">Timer 1</h5>
                <input type="time" id="timer1" class="card-text text-end form-control">
            </div>
        </div>

        <div class="card col-md-6 mb-4 mx-3" style="width: 18rem; height: 100px;">
            <div class="card-body">
                <h5 class="card-title">Timer 2</h5>
                <input type="time" id="timer2" class="card-text text-end form-control">
            </div>
        </div>
    </div>
</main>

<?php include('getAndUpdateData.php'); ?>
<script>
    $(document).ready(function() {        
        // Event listener ketika tombol beri pakan manual ditekan
        $('#btnBeriPakan').on('click', function() {
            submitDataFeeding('v0', 1);            
        });

        // Event listener ketika tombol switch air pump ditekan
        $('#airPumpCheckbox').on('click', function() {
            if (!document.getElementById('airPumpCheckbox').checked) {
                submitDataUtility('v4', 0);
                document.getElementById('airPumpLabel').innerHTML = 'Mati';
            } else if (document.getElementById('airPumpCheckbox').checked) {
                submitDataUtility('v4', 1);
                document.getElementById('airPumpLabel').innerHTML = 'Hidup';
            }
        });

        // Event listener ketika tombol switch timer ditekan
        $('#timerCheckbox').on('click', function() {
            if (!document.getElementById('timerCheckbox').checked) {
                submitDataFeeding('v4', 0);
                document.getElementById('timerLabel').innerHTML = 'Mati';
            } else if (document.getElementById('timerCheckbox').checked) {
                submitDataFeeding('v4', 1);
                document.getElementById('timerLabel').innerHTML = 'Hidup';
            }
        });

        // Event listener ketika timer berubah
        $('#timer1').on('change', function() {
            const timeValue = $(this).val();
            submitDataFeeding('v1', timeValue);
        });

        $('#timer2').on('change', function() {
            const timeValue = $(this).val();
            submitDataFeeding('v2', timeValue);
        });

        // Event listener ketika jumlah ikan berubah
        $('#jumlahIkan').on('change', function() {
            let fishAmount = $(this).val();
            if (fishAmount < 1) {
                fishAmount = 1;

                document.getElementById('jumlahIkan').value = fishAmount;
            }
            submitDataUtility(fishAmount);
        });

        setInterval(getDataTimer, 200000);
        setInterval(getDataMonitoring, 200000);

        getDataTimer();
        getDataMonitoring();
    })
</script>
<?= $this->endSection() ?>