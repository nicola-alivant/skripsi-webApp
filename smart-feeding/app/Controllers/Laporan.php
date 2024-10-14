<?php

namespace App\Controllers;

use App\Models\LaporanModel;
use App\Controllers\BaseController;

class Laporan extends BaseController
{
    protected $laporanModel;

    public function __construct()
    {
        $this->laporanModel = new LaporanModel();
    }

    public function index()
    {   
        return view('pages/laporan/laporan', ['page' => 'Laporan']);
    }

    function getDataReport() {
        $data = $this->laporanModel->getDataReport();    

        return $this->response->setJSON($data);
    }
}
