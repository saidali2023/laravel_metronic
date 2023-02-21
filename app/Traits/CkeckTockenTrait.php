<?php

namespace App\Traits;
use Response;
use Carbon\Carbon;

trait CkeckTockenTrait
{
    private $ttl = 100160;
    //
    private function generateAccessToken($accountId, $email,$name)
    {
            $access_token = "";
            $secretKey = Config("app.key");
            $secretIv = Config("app.key");
            $encryptMethod = "AES-256-CBC";
            $signature = hash('sha256', $secretKey);
            $iv = substr(hash('sha256', $secretIv), 0, 16);

            $header = [
                "alg" => "sha256",
                "typ" => "JWT",
            ];

            $payload = [
                "account_id" => $accountId,
                "user_email" => $email,
                "user_name" => $name,
                "creation_ttl_date" => Carbon::now('UTC')->timestamp,
                "expire_ttl_date" => Carbon::now('UTC')->addMinute($this->ttl)->timestamp,
                "creation_refrech_ttl_date" => "",
                "expire_refrech_ttl_date" => "",
            ];
            
            $encryptedHeader = base64_encode(openssl_encrypt(json_encode($header), $encryptMethod, $signature, 0, $iv));

            $encryptedPayload = base64_encode(openssl_encrypt(json_encode($payload), $encryptMethod, $signature, 0, $iv));
            $access_token = $encryptedHeader . "." . $encryptedPayload . "." . $signature;

            return $access_token;
    }
    //
    //function to validate access token
    private function validateAccessToken($access_token)
    {
        $tokenArray = explode(".", $access_token);
        $output = 0;
        if (count($tokenArray) == 3) {
            $secretKey = Config("app.key");
            $secretIv = Config("app.key");
            $encryptMethod = "AES-256-CBC";
            $signature = hash('sha256', $secretKey);
            $iv = substr(hash('sha256', $secretIv), 0, 16);
            if ($tokenArray[2] == $signature) {
                $header = openssl_decrypt(base64_decode($tokenArray[0]), $encryptMethod, $signature, 0, $iv);
                $header = json_decode($header);
                if ((isset($header->alg) && $header->alg == "sha256") && (isset($header->typ) && $header->typ == "JWT")) {
                    
                    $payload = openssl_decrypt(base64_decode($tokenArray[1]), $encryptMethod, $signature, 0, $iv);
                    $payload = json_decode($payload);
                    if ( isset($payload->account_id) 
                        && isset($payload->user_email)
                        && isset($payload->user_name)
                        && isset($payload->creation_ttl_date) 
                        && isset($payload->expire_ttl_date) 
                        && isset($payload->creation_refrech_ttl_date) 
                        && isset($payload->expire_refrech_ttl_date) ) 
                    {   
                        $output = $payload;
                    }
                }
            }
        }
        return $output;
    }

    // function to validate access token time
    public function validateAccessTokenTime($payload)
    {
        $output = 0;
        $dateNow = Carbon::now('UTC')->timestamp;
        if ($payload->creation_refrech_ttl_date == "" && $payload->expire_refrech_ttl_date == "") 
        {
            $creation_ttl_date = $payload->creation_ttl_date;
            $expire_ttl_date = $payload->expire_ttl_date;
            $expire_refresh_ttl_date = Carbon::createFromTimestampUTC($payload->creation_ttl_date)->timestamp;
            $expire_refresh_ttl_date = Carbon::createFromTimestampUTC($expire_refresh_ttl_date)->addMinutes(Config("config.refresh_ttl"))->timestamp;
        } 
        else 
        {
            $creation_ttl_date = $payload->creation_ttl_date;
            $expire_ttl_date = $payload->expire_ttl_date;
            $expire_refresh_ttl_date = $payload->expire_refrech_ttl_date;
        }
        if ($payload->expire_ttl_date > $dateNow) 
        {
            if ($expire_refresh_ttl_date > $dateNow) 
            {
                //token is ok
                $output = 1;
            } 
            else 
            {
                //token need refresh
                $output = 2;
            }
        } 
        else 
        {
            //token expired
            $output = 3;
        }
        return $output;
    }

    //function to generate refresh access token
    public function generateRefreshAccessToken($accountId, $email,$name)
    {
        $accessToken = "";
        $dateNow = Carbon::now('UTC')->timestamp;
        $secretKey = Config("app.key");
        $secretIv = Config("app.key");
        $encryptMethod = "AES-256-CBC";
        $signature = hash('sha256', $secretKey);
        $iv = substr(hash('sha256', $secretIv), 0, 16);

        $header = [
            "alg" => "sha256",
            "typ" => "JWT",
        ];

        $payload = [
           "account_id" => $accountId,
           "user_email" => $email,
           "user_name" => $name,
           "creation_ttl_date" => Carbon::now('UTC')->timestamp,
           "expire_ttl_date" => Carbon::now('UTC')->addMinute($this->ttl)->timestamp,
           "creation_refrech_ttl_date" => "",
           "expire_refrech_ttl_date" => "",
       ];

        $encryptedHeader = base64_encode(openssl_encrypt(json_encode($header), $encryptMethod, $signature, 0, $iv));

        $encryptedPayload = base64_encode(openssl_encrypt(json_encode($payload), $encryptMethod, $signature, 0, $iv));
        $accessToken = $encryptedHeader . "." . $encryptedPayload . "." . $signature;
        return $accessToken;
    }
}