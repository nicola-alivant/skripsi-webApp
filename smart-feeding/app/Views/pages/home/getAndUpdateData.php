<script>
    // Fungsi panggil data monitoring
    function getDataMonitoring() {
        showLoading();

        $.ajax({
            url: '<?= base_url('dataMonitoring'); ?>',
            type: 'GET',
            success: function(data) {
                // Pastikan data ada
                if (data) {
                    document.getElementById('suhuKolam').innerText = data.v0 + " °C";
                    document.getElementById('phKolam').innerText = data.v1;
                    document.getElementById('lamaPakan').innerText = data.v2 + " detik";
                    document.getElementById('jumlahIkan').value = data.v3;

                    document.getElementById('airPumpCheckbox').checked = data.v4 == 1;
                    
                    let label = data.v4 ? "Hidup" : "Mati";
                    document.getElementById('airPumpLabel').innerHTML = label;
                } else {
                    alert("No monitoring data found");
                }
                hideLoading();
            },
            error: function(err) {
                console.log("Error fetching data for monitoring:", err);
                hideLoading();
            },            
        });
    }

    // Fungsi panggil data timer
    function getDataTimer() {
        showLoading();

        $.ajax({
            url: '<?= base_url('dataTimer'); ?>',
            type: 'GET',
            success: function(data) {
                if (data) {
                    document.getElementById('timer1').value = data.v1;
                    document.getElementById('timer2').value = data.v2;

                    document.getElementById('timerCheckbox').checked = data.v4 == 1;

                    let label = data.v4 ? "Hidup" : "Mati";
                    document.getElementById('timerLabel').innerHTML = label;
                } else {
                    alert("No timer data found");
                }
                hideLoading();
            },
            error: function(err) {
                console.log("Error fetching data for timer:", err);
                hideLoading();
            },            
        });
    }

    // Fungsi untuk mengirim data feeding
    function submitDataFeeding(id, value) {
        showLoading();

        $.ajax({
            url: '<?= base_url('postDataFeeding/') ?>' + id + '/' + value,
            type: 'GET',
            success: function(response) {
                if (id == 'v0') {
                    setTimeout(function() {
                        hideLoading();
                    }, 5000);                    
                    console.log("Success saving feed data");
                }
                hideLoading();
            },
            error: function(err) {
                console.log("Error saving feed data:", err);
                hideLoading();
            },
        });
    }

    // Fungsi untuk mengirim data jumlah ikan
    function submitDataUtility(ide, value) {
        showLoading();

        $.ajax({
            url: '<?= base_url('postDataUtility/') ?>' + ide + '/' + value,
            type: 'GET',
            success: function(response) {                
                hideLoading();
            },
            error: function(err) {
                console.log("Error saving feed data:", err);
                hideLoading();
            },
        });
    }
</script>