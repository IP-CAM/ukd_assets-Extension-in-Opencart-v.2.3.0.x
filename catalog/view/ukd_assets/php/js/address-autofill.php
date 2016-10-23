//$('select[name=\'zone_id\']').val(<?php echo $zone_id ?>);

readonly(true);

address_autofill($('input[name=\'postcode\']'));

$('input[name=\'postcode\']').keyup(function(event) {

    address_autofill($(this));

}).attr('maxlength', 8);

function address_autofill(el) {
    if (el.val().length == 8) {
        $.ajax({
            url: 'https://viacep.com.br/ws/' + el.val() + '/json/',
            dataType: 'json',
            beforeSend: function(resp) {
                readonly(true);
            },
            success: function(json) {

                if (json['logradouro']) {
                    $('input[name=\'address_1\']').val(json['logradouro']);
                }
                if (json['bairro']) {
                    $('input[name=\'address_2\']').val(json['bairro']);
                }

                if (json['localidade']) {
                    $('input[name=\'city\']').val(json['localidade']).attr('readonly', true);
                } else {
                    $('input[name=\'city\']').attr('readonly', false);
                }

                if (json['uf']) {
                    $('select[name=\'zone_id\']').attr('readonly', true).find('option[data-sigla=' + json['uf'] + ']').prop('selected', true);
                } else {
                    $('select[name=\'zone_id\']').attr('readonly', false);
                }

            },
            complete: function(resp) {
                $('input[name=\'address_1\']').attr('readonly', false);
                $('input[name=\'address_2\']').attr('readonly', false);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                readonly(false);
            }
        })
    } else {
        $('input[name=\'city\']').val('').attr('readonly', false);
        $('select[name=\'zone_id\']').attr('readonly', false).find('option[data-sigla=none]').prop('selected', true);
    }
}

function readonly(s) {
    $('input[name=\'address_1\']').attr('readonly', s);
    $('input[name=\'address_2\']').attr('readonly', s);
    $('input[name=\'city\']').attr('readonly', s);
    $('select[name=\'zone_id\']').attr('readonly', s);
}