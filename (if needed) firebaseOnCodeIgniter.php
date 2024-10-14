<?php include('template/header.php'); ?>
<?php include('template/sidebar.php'); ?>

<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h3 class="h3"><i class="bi bi-laptop"></i>&nbsp;&nbsp; Firebase</h3>
    </div>

    <!-- <div class="row d-flex justify-content-center flex-wrap flex-md-nowrap align-items-center"> -->
    <div class="row">
        <p id="jumlah"></p>
        <p id="detik"></p>
        <p id="data"></p>
    </div>


    <script type="module">
        const start = performance.now();

        import { initializeApp } from "https://www.gstatic.com/firebasejs/10.13.0/firebase-app.js";
        import { getDatabase, ref, set, child, get } from "https://www.gstatic.com/firebasejs/10.13.0/firebase-database.js";

        const firebaseConfig = {
            apiKey: "AIzaSyAlKy2w_voLYrdSdhw7VcR1Y1ORZzwIB0w",
            authDomain: "smart-feeding-3f254.firebaseapp.com",
            databaseURL: "https://smart-feeding-3f254-default-rtdb.asia-southeast1.firebasedatabase.app",
            projectId: "smart-feeding-3f254",
            storageBucket: "smart-feeding-3f254.appspot.com",
            messagingSenderId: "589256908696",
            appId: "1:589256908696:web:5cfb97b3c7e1ce753d15ed",
            measurementId: "G-W8Z93TRE9K"
        };

        // Initialize Firebase
        const app = initializeApp(firebaseConfig);
        
        const db = getDatabase(app);

        // function writeUserData(userId, tanggal, hari, jam, suhu_air, ph_air, lama_pakan, status, created_at, updated_at) {
        //     set(ref(db, 'reports/' + userId), {
        //         tanggal: tanggal,
        //         hari: hari,
        //         jam: jam,
        //         suhu_air: suhu_air,
        //         ph_air: ph_air,
        //         lama_pakan: lama_pakan,
        //         status: status,
        //         created_at: created_at,
        //         updated_at: updated_at,
        //     });
        // }
        // const d = new Date().toLocaleString();
        // writeUserData(1, '01-01-2001', 'Senin', '10:00', 28, 8, 13, 'Otomatis', d, d)

        const dbRef = ref(getDatabase());
        get(child(dbRef, `reports/`)).then((snapshot) => {
            if (snapshot.exists()) {
                // console.log(data);

                const end = performance.now();
                const delayMs = end - start;
                const delaySec = delayMs / 1000;
                
                let allData = '';
                for (let i = 1; i < snapshot.val().length; i++) {
                    const data = snapshot.val()[i];
                    allData += `
                        Id: ${data.reportId}<br>
                        Tanggal: ${data.tanggal}<br>
                        Hari: ${data.hari}<br>
                        Jam: ${data.jam}<br>
                        Suhu Air: ${data.suhu_air} °C<br>
                        pH Air: ${data.ph_air}<br>
                        Lama Pakan: ${data.lama_pakan} menit<br>
                        Status: ${data.status}<br>
                        Created At: ${data.created_at}<br>
                        Updated At: ${data.updated_at}<br><br>
                    `;   
                }
                document.getElementById('data').innerHTML = allData
                document.getElementById('detik').innerText = `Delay: ${delaySec.toFixed(2)} ms`;
                document.getElementById('jumlah').innerText = `Jumlah data: ${snapshot.val().length}`;
            } else {
                console.log("No data available");
            }
            }).catch((error) => {
                console.error(error);
        });
    </script>
</main>

<?php include('template/footer.php'); ?>