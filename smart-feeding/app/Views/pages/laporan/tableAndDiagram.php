<script src="js/jquery-3.7.1.min.js"></script>

<script src="plugin/datatables/js/datatables.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/chart.js@4.3.2/dist/chart.umd.js" integrity="sha384-eI7PSr3L1XLISH8JdDII5YN/njoSsxfbrkCTnJrzXt+ENP5MOVBxD+l6sEG4zoLp" crossorigin="anonymous"></script>

<script>
    // Inisialisasi datatable
    var table = $('#tabel-data').DataTable({
        scrollX: true,
        pageLength : 10,
        lengthMenu: [[5, 10, 20, 25, 50], [5, 10, 20, 25, 50]]
    });

    // Ambil id chart
    var contextLamaPakan = document.getElementById('chartLamaPakan').getContext('2d');
    var contextSuhu = document.getElementById('chartSuhu').getContext('2d');
    var contextPh = document.getElementById('chartPh').getContext('2d');

    // Inisialisasi chart lama pakan
    var chartLamaPakan = new Chart(contextLamaPakan, {
        type: 'line',
        data: {
            labels: [],
            datasets: [{
                    label: 'Lama Pemberian Pakan (Detik)',
                    data: [], // Data detik akan diisi di sini
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    fill: true,
                    borderWidth: 4,
                    yAxisID: 'y1' // Menggunakan sumbu y1 untuk detik
                },
                {
                    label: 'Jumlah Pakan (Gram)',
                    data: [], // Data gram akan diisi di sini
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    fill: true,
                    borderWidth: 4,
                    yAxisID: 'y2' // Menggunakan sumbu y2 untuk gram
                }
            ]
        },
        options: {
            scales: {
                y1: {
                    type: 'linear',
                    position: 'left',
                    title: {
                        display: true,
                        text: 'Detik'
                    },
                    ticks: {
                        beginAtZero: true
                    }
                },
                y2: {
                    type: 'linear',
                    position: 'right',
                    title: {
                        display: true,
                        text: 'Gram'
                    },
                    ticks: {
                        beginAtZero: true
                    },
                    grid: {
                        drawOnChartArea: false // Mencegah tumpang tindih dengan sumbu y1
                    }
                },
                x: {
                    title: {
                        display: true,
                        text: 'Tanggal / Jam'
                    }
                }
            }
        }
    });


    // Inisialisasi chart suhu
    var chartSuhu = new Chart(contextSuhu, {
        type: 'line',
        data: {
            labels: [],
            datasets: [{
                label: 'Suhu Kolam',
                data: [],
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: true,
                borderWidth: 4,
            }]
        },
        options: {
            scales: {
                x: {
                    title: {
                        display: true,
                        text: 'Tanggal / Jam'
                    }
                },
                y: {
                    title: {
                        display: true,
                        text: 'Suhu Kolam (°C)'
                    }
                }
            }
        }
    });

    // Inisialisasi chart ph
    var chartPh = new Chart(contextPh, {
        type: 'line',
        data: {
            labels: [],
            datasets: [{
                label: 'Ph Kolam',
                data: [],
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: true,
                borderWidth: 4,
            }]
        },
        options: {
            scales: {
                x: {
                    title: {
                        display: true,
                        text: 'Tanggal / Jam'
                    }
                },
                y: {
                    title: {
                        display: true,
                        text: 'Ph Kolam'
                    }
                }
            }
        }
    });

    function updateChartLamaPakan() {
        // Bersihkan data chart
        chartLamaPakan.data.labels = [];
        chartLamaPakan.data.datasets[0].data = []; // Data untuk detik
        chartLamaPakan.data.datasets[1].data = []; // Data untuk gram

        // Ambil data yang sedang ditampilkan di halaman aktif DataTables
        var currentData = table.rows({
            page: 'current'
        }).data();

        currentData.each(function(rowData) {
            // Sesuaikan dengan posisi kolom di DataTables
            var label = rowData[1] + " / " + rowData[3];
            chartLamaPakan.data.labels.push(label); // Kolom tanggal

            // Ekstraksi detik dan gram dari kolom lama_pakan (misalnya "13 detik / 130 gram")
            var lamaPakan = rowData[6].split(' / '); // Mengambil dua bagian: [detik, gram]
            var detik = parseInt(lamaPakan[0]); // Ambil bagian detik
            var gram = parseInt(lamaPakan[1]); // Ambil bagian gram

            // Tambahkan data detik dan gram ke chart
            chartLamaPakan.data.datasets[0].data.push(detik); // Tambah detik
            chartLamaPakan.data.datasets[1].data.push(gram); // Tambah gram
        });

        // Update chart dengan data baru
        chartLamaPakan.update();
    }

    function updateChartSuhu() {
        // Bersihkan data chart
        chartSuhu.data.labels = [];
        chartSuhu.data.datasets[0].data = [];

        // Ambil data yang sedang ditampilkan di halaman aktif datatable
        var currentData = table.rows({
            page: 'current'
        }).data();

        currentData.each(function(rowData) {
            var label = rowData[1] + " / " + rowData[3];
            chartSuhu.data.labels.push(label);
            chartSuhu.data.datasets[0].data.push(rowData[4].replace("°C", ""));
        });

        chartSuhu.update();
    }

    function updateChartPh() {
        // Bersihkan data chart
        chartPh.data.labels = [];
        chartPh.data.datasets[0].data = [];

        // Ambil data yang sedang ditampilkan di halaman aktif datatable
        var currentData = table.rows({
            page: 'current'
        }).data();

        currentData.each(function(rowData) {
            var label = rowData[1] + " / " + rowData[3];
            chartPh.data.labels.push(label);
            chartPh.data.datasets[0].data.push(rowData[5]);
        });

        chartPh.update();
    }

    function fetchData() {
        showLoading();

        $.ajax({
            url: '<?= base_url('dataReport'); ?>',
            type: 'GET',
            success: function(data) {
                // Bersihkan tabel
                table.clear();

                // Pastikan data memiliki kolom 'reports'
                if (data && data.data.reports) {
                    var jumlah = 1;
                    data.data.reports.forEach(function(report) {
                        table.row.add([
                            jumlah++,
                            report.tanggal,
                            report.hari,
                            report.jam,
                            report.suhu_air,
                            report.ph_air,
                            report.lama_pakan,
                            report.status
                        ]).draw(false); // 'false' agar tidak me-refresh tabel setiap kali data ditambahkan                            
                    });

                    // Update chart
                    updateChartLamaPakan();
                    updateChartSuhu();
                    updateChartPh();

                } else {
                    alert("No reports found");
                }
            },
            error: function(err) {
                console.log("Error fetching data:", err);
            },
            complete: function() {
                hideLoading();
            }
        });
    }
</script>