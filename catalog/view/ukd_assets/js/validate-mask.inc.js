$('input[name=telephone').mask('(00) 000000000', {placeholder: "(DDD) Número do telefone"});
$('input[name=postcode]').mask('00000000', {placeholder: "Use somente números. Ex.: 01031970"});
$('input[placeholder=CPF]').mask('00000000000');
getAddressByPostcode(form_id);

$('input[name=address_1]').prop('placeholder', 'Ex.: Rua Beltrano da Silva, 123');