<?php
require_once '../security.php';
?>
<div style="padding: 20px">
<div class="alert alert-warning">
Por favor, faça o depósito em uma das contas abaixo e envie o comprovante para o email <strong>vendas@balash.com.br</strong>
</div>
<div class="col-sm-6" style="padding:20px">
  <strong>BANCO DO BRASIL</strong><br />
  Agência: 3460-6<br />
  Conta Corrente: 30.035-7<br />
  Nome: Frederico Ukita<br />
  CPF: 964.565.905-15<br />
</div>
<div class="col-sm-6" style="padding:20px">
  <strong>CAIXA ECONÔMICA FEDERAL</strong><br />
  Agência: 1051<br />
  Conta Poupança: 82.371-9<br />
  Código de Operação: 013<br />
  Nome: Frederico Ukita<br />
  CPF: 964.565.905-15<br />
</div>

</div>


<script>

function validate(){
  return true;
}
function startPayment() {
  //process();
  location.href = "carrinho/finalizar/confirmacao";
}

function onFinishPayment(res){



}
</script>