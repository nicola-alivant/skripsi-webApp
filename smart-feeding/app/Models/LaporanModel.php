<?php

namespace App\Models;

use CodeIgniter\Model;

class LaporanModel extends Model
{
    protected $client;

    public function __construct()
    {
        $this->client = \Config\Services::curlrequest();
    }

    public function getDataReport() {
        $url = "https://feedreport.domcloud.dev/reports";

        // Mengirim permintaan GET
        $response = $this->client->get($url);

        if ($response->getStatusCode() == 200) {
            return json_decode($response->getBody(), true);
        } else {
            return $response;
        }
    }
}
