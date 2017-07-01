<?php

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, 'https://ws.sandbox.pagseguro.uol.com.br/v3/transactions/?email=fredukita@gmail.com&token=9E7583A0AB8F44EC9E6D72FB81C4693F&reference=REF'.$_GET['ref']);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
echo json_encode(simplexml_load_string(curl_exec($ch)));
curl_close($ch);
