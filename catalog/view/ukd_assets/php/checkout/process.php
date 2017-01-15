<?php

require_once '../security.php';

function sanitizeString($str)
{
    $str = preg_replace('![áàãâä]!ui', 'a', $str);
    $str = preg_replace('![éèêë]!ui', 'e', $str);
    $str = preg_replace('![íìîï]!ui', 'i', $str);
    $str = preg_replace('![óòõôö]!ui', 'o', $str);
    $str = preg_replace('![úùûü]!ui', 'u', $str);
    $str = preg_replace('![ç]!ui', 'c', $str);

    return $str;
}

$data = [];

foreach ($_POST as $key => $value) {

    //if (stripos($key, 'hash') === false )$value = strtoupper($value);

    if (stripos($value, 'http://') > -1 || stripos($value, 'https://') > -1) {
        $data[$key] = strtolower($value);
    } elseif (strpos($value, '@') > -1) {
        $data[$key] = sanitizeString(strtolower($value));
    } else {
        if (strpos($value, ' ') > -1) {
            $value = sanitizeString($value);
            $value = ucwords($value, ' ');
        } else {
            $value = sanitizeString($value);
        }
        $data[$key] = $value;
    }
}
<<<<<<< HEAD
// $data['email'] = 'fredukita@gmail.com';
// $data['token'] = '9E7583A0AB8F44EC9E6D72FB81C4693F';
=======

>>>>>>> 2aecf72a52b527fece512225e08573e3c88f55ea
$url = $data['transactions_url'].'?'.http_build_query($data, '', '&amp;');
$charset = 'ISO-8859-1';
$postFields = ($data ? http_build_query($data, '', '&') : "");
$contentLength = "Content-length: " . strlen($postFields);
$methodOptions = array(
    CURLOPT_POST => true,
    CURLOPT_POSTFIELDS => $postFields,
);

$options = array(
    CURLOPT_HTTPHEADER => array(
        'Content-Type: application/x-www-form-urlencoded; charset='.$charset,
        $contentLength,
    ),
    CURLOPT_URL => $url,
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_HEADER => false,
    CURLOPT_SSL_VERIFYPEER => false,
    CURLOPT_SSL_VERIFYHOST => false,
    CURLOPT_CONNECTTIMEOUT => 20,
);

$options = ($options + $methodOptions);

$curl = curl_init();
curl_setopt_array($curl, $options);
$resp = curl_exec($curl);

//ERRORS
$info = curl_getinfo($curl);
$error = curl_errno($curl);
$errorMessage = curl_error($curl);

curl_close($curl);

$finfo = new finfo(FILEINFO_MIME);

$status = $info['http_code'];

<<<<<<< HEAD
ob_end_clean();
=======
>>>>>>> 2aecf72a52b527fece512225e08573e3c88f55ea
header('Content-Type: application/json');

if ($error || strpos($finfo->buffer($resp), 'application/xml') == -1) {
    exit(json_encode(array('error' => $errorMessage)));
} else {
    //$xml = simplexml_load_string($resp);
    if ($resp != 'Unauthorized') {
        $xml = simplexml_load_string($resp);
<<<<<<< HEAD
=======
        $xml['status'] = $status;
>>>>>>> 2aecf72a52b527fece512225e08573e3c88f55ea
        exit(json_encode($xml));
    } else {
        exit(json_encode(array('error' => $resp)));
    }
}
