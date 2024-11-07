<?php

namespace App\Controllers;

use App\Models\HomeModel;
use App\Controllers\BaseController;

class Home extends BaseController
{
    protected $homeModel;

    public function __construct()
    {
        $this->homeModel = new HomeModel();
    }

    public function index()
    {                
        return view('pages/home/home', ['page' => 'Home']);        
    }

    function getDataMonitoring() {
        $tokenMonitoring = 'Xm6mKgbYFGhd_1e_H3w_De0KItIv4TPb';    
        $dataMonitoring = $this->homeModel->getFromBlynk($tokenMonitoring);    

        return $this->response->setJSON($dataMonitoring);
    }

    function getDataTimer() {
        $tokenTimer = 'MWfNMKyrSoDcUmzZLGtvjbV4nT2qbNIl';
        $dataTimer = $this->homeModel->getFromBlynk($tokenTimer);

        return $this->response->setJSON($dataTimer);
    }

    function postDataFeeding($id, $value) {
        $dataTimer = $this->homeModel->postDataFeeding($id, $value);

        return $this->response->setJSON($dataTimer);
    }

    function postDataUtility($value) {
        $dataFishAmount = $this->homeModel->postDataUtility($value);

        return $this->response->setJSON($dataFishAmount);
    }
}
