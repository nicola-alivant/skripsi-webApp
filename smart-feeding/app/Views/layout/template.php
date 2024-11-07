<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <script src="js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>Smart Feeding - <?= $page ?></title>

    <link href="plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="plugin/datatables/css/datatables.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<?= base_url(); ?>css/dashboard.css" rel="stylesheet">
    
    <script src="<?= base_url(); ?>js/jquery-3.7.1.min.js"></script>
    <script src="<?= base_url(); ?>js/dashboard.js"></script>
</head>

<body>
    <!-- Overlay dengan spinner untuk loading -->
    <div id="loadingOverlay" style="display: none;">
        <div class="spinner-border text-light" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
    </div>

    <header class="navbar sticky-top bg-dark flex-md-nowrap p-0 shadow" data-bs-theme="dark">
        <ul class="navbar-nav flex-row d-md-none">
            <li class="nav-item text-nowrap">
                <button class="nav-link px-3 text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="bi bi-list"></i>
                </button>
            </li>
        </ul>

        <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6 text-white" href="<?= base_url() ?>">Smart Feeding</a>
    </header>

    <div class="container-fluid">
        <div class="row">
            <div class="sidebar border border-right col-md-3 col-lg-2 p-0 bg-body-tertiary" style="height: -webkit-fill-available;">
                <div class="offcanvas-md offcanvas-end bg-body-tertiary" tabindex="-1" id="sidebarMenu" aria-labelledby="sidebarMenuLabel" style="height: 100vh;">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="sidebarMenuLabel">Smart Feeding</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
                    </div>

                    <div class="offcanvas-body d-md-flex flex-column p-0 pt-lg-3 overflow-y-auto">
                        <ul class="nav nav-pills flex-column m-2">
                            <li class="nav-item">
                                <a class="nav-link d-flex align-items-center gap-2 <?= ($page == 'Home') ? 'active text-white' : '' ?>" aria-current="page" href="<?= base_url() ?>">
                                    <i class="bi bi-house"></i>
                                    Home
                                </a>
                            </li>
                            <li class="nav-item mb-3">
                                <a class="nav-link d-flex align-items-center gap-2 <?= ($page == 'Laporan') ? 'active text-white' : '' ?>" href="<?= base_url('laporan') ?>">
                                    <i class="bi bi-clipboard-data"></i>
                                    Laporan
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <?= $this->renderSection('content') ?>

        </div>
    </div>

    <script src="plugin/bootstrap/js/bootstrap.bundle.min.js"></script>    
</body>

</html>