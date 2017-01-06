<?php
require_once '../security.php';
?>
<center style="margin-bottom:30px">
  <img src="http://www.thugnine.com.br/skin/frontend/base/default/MOIP/transparente/imagem/boleto-icon.png" />
<h2>Você está pagando via boleto bancário</h2>
</center>
<script>

function validate(){
  return true;
}
function startPayment() {
  process();
}

function onFinishPayment(res){

  var link =  res['paymentLink'].split('?c=');
  window.location = locationURL + '&type=boleto&link=' + link[0] + '&code=' + link[1];
  //alert(locationURL + '&link=' + res['paymentLink']);

}
</script>