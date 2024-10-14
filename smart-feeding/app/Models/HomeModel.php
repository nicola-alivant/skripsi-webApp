<?php

namespace App\Models;

use CodeIgniter\Model;

class HomeModel extends Model
{
    protected $client;

    public function __construct()
    {
        $this->client = \Config\Services::curlrequest();
    }

    public function getFromBlynk($token) {        
        $url = "https://blynk.cloud/external/api/getAll?token=$token";

        // Mengirim permintaan GET
        $response = $this->client->get($url);

        if ($response->getStatusCode() == 200) {
            return json_decode($response->getBody(), true);
        } else {
            return null;
        }
    }

    public function postDataFeeding($id, $value) {        
        $url = "https://blynk.cloud/external/api/update?token=MWfNMKyrSoDcUmzZLGtvjbV4nT2qbNIl&$id=$value";

        // Mengirim permintaan GET
        $response = $this->client->get($url);

        if ($response->getStatusCode() == 200) {
            return json_decode($response->getBody(), true);
        } else {
            return null;
        }
    }

    public function postDataFishAmount($value) {        
        $url = "https://blynk.cloud/external/api/update?token=Xm6mKgbYFGhd_1e_H3w_De0KItIv4TPb&v3=$value";

        // Mengirim permintaan GET
        $response = $this->client->get($url);

        if ($response->getStatusCode() == 200) {
            return json_decode($response->getBody(), true);
        } else {
            return null;
        }
    }
}
