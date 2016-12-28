<?php

function curlExec($url, $post = null, array $header = array())
{

    //Inicia o cURL
    $ch = curl_init($url);

    //Pede o que retorne o resultado como string
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

    //Envia cabeçalhos (Caso tenha)
    if (count($header) > 0) {
        curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
    }

    //Envia post (Caso tenha)
    // if ($post !== null) {
    //     curl_setopt($ch, CURLOPT_POSTFIELDS, $post);
    // }

    //Ignora certificado SSL
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

    //Manda executar a requisição
    $data = curl_exec($ch);

    //Fecha a conexão para economizar recursos do servidor
    curl_close($ch);

    //Retorna o resultado da requisição

    return $data;
}

$ref = $_GET['ref'];

$transaction = curlExec('https://ws.sandbox.pagseguro.uol.com.br/v2/transactions/?email=fredukita@gmail.com&token=9E7583A0AB8F44EC9E6D72FB81C4693F&reference=REF'.$ref);
$xml = simplexml_load_string($transaction);
echo json_encode($xml);



