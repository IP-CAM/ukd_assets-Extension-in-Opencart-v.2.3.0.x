<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li>
      <a href="<?php echo $breadcrumb['href']; ?>">
        <?php echo $breadcrumb['text']; ?>
      </a>
    </li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i>
    <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>
    <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left" colspan="2">
              <?php echo $text_order_detail; ?>
            </td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left" style="width: 50%;">
              <?php if ($invoice_no) { ?>
              <b><?php echo $text_invoice_no; ?></b>
              <?php echo $invoice_no; ?><br />
              <?php } ?>
              <b><?php echo $text_order_id; ?></b> #
              <?php echo $order_id; ?><br />
              <b><?php echo $text_date_added; ?></b>
              <?php echo $date_added; ?>
            </td>
            <td class="text-left" style="width: 50%;">
              <?php if ($payment_method) { ?>
              <b><?php echo $text_payment_method; ?></b>
              <?php echo $payment_method; ?><br />
              <?php } ?>
              <?php if ($shipping_method) { ?>
              <b><?php echo $text_shipping_method; ?></b>
              <?php echo $shipping_method; ?>
              <?php } ?>
            </td>
          </tr>
        </tbody>
      </table>

      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left" style="width: 50%; vertical-align: top;">
              <?php echo $text_payment_address; ?>
            </td>
            <?php if ($shipping_address) { ?>
            <td class="text-left" style="width: 50%; vertical-align: top;">
              <?php echo $text_shipping_address; ?>
            </td>
            <?php } ?>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left">
              <?php echo $payment_address; ?>
            </td>
            <?php if ($shipping_address) { ?>
            <td class="text-left">
              <?php echo $shipping_address; ?>
            </td>
            <?php } ?>
          </tr>
        </tbody>
      </table>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-left">
                <?php echo $column_name; ?>
              </td>
              <td class="text-left">
                <?php echo $column_model; ?>
              </td>
              <td class="text-right">
                <?php echo $column_quantity; ?>
              </td>
              <td class="text-right">
                <?php echo $column_price; ?>
              </td>
              <td class="text-right">
                <?php echo $column_total; ?>
              </td>
              <?php if ($products) { ?>
              <td style="width: 20px;"></td>
              <?php } ?>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($products as $product) { ?>
            <tr>
              <td class="text-left">
                <?php echo $product['name']; ?>
                <?php foreach ($product['option'] as $option) { ?>
                <br /> &nbsp;
                <small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                <?php } ?>
              </td>
              <td class="text-left">
                <?php echo $product['model']; ?>
              </td>
              <td class="text-right">
                <?php echo $product['quantity']; ?>
              </td>
              <td class="text-right">
                <?php echo $product['price']; ?>
              </td>
              <td class="text-right">
                <?php echo $product['total']; ?>
              </td>
              <td class="text-right" style="white-space: nowrap;">
                <?php if ($product['reorder']) { ?>
                <a href="<?php echo $product['reorder']; ?>" data-toggle="tooltip" title="<?php echo $button_reorder; ?>" class="btn btn-primary"><i class="fa fa-shopping-bag"></i></a>
                <?php } ?>
                <a href="<?php echo $product['return']; ?>" data-toggle="tooltip" title="<?php echo $button_return; ?>" class="btn btn-danger"><i class="fa fa-reply"></i></a></td>
            </tr>
            <?php } ?>
            <?php foreach ($vouchers as $voucher) { ?>
            <tr>
              <td class="text-left">
                <?php echo $voucher['description']; ?>
              </td>
              <td class="text-left"></td>
              <td class="text-right">1</td>
              <td class="text-right">
                <?php echo $voucher['amount']; ?>
              </td>
              <td class="text-right">
                <?php echo $voucher['amount']; ?>
              </td>
              <?php if ($products) { ?>
              <td></td>
              <?php } ?>
            </tr>
            <?php } ?>
          </tbody>
          <tfoot>
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td colspan="3"></td>
              <td class="text-right"><b><?php echo $total['title']; ?></b></td>
              <td class="text-right">
                <?php echo $total['text']; ?>
              </td>
              <?php if ($products) { ?>
              <td></td>
              <?php } ?>
            </tr>
            <?php } ?>
          </tfoot>
        </table>
      </div>
      <?php if ($comment) { ?>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left">
              <?php echo $text_comment; ?>
            </td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left">
              <?php echo $comment; ?>
            </td>
          </tr>
        </tbody>
      </table>
      <?php } ?>
      <?php if ($histories) { ?>
      <h3><?php echo $text_history; ?></h3>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left">
              <?php echo $column_date_added; ?>
            </td>
            <td class="text-left">
              <?php echo $column_status; ?>
            </td>
            <td class="text-left">
              <?php echo $column_comment; ?>
            </td>
            <td class="text-left"></td>
          </tr>
        </thead>
        <tbody>
          <?php if ($histories) { ?>
          <?php foreach ($histories as $history) { ?>
          <tr>
            <td class="text-left">
              <?php echo $history['date_added']; ?>
            </td>
            <td class="text-left">
              <?php
            if( isset($_GET['paid']) ){
              echo $_GET['paid'];
            }else{
              if( isset($_GET['info']) ) {
                echo $_GET['info'];
              }else if( isset($_GET['paynow'])){
                echo $_GET['paynow'];
              }else echo $history['status'];
            }
            ?>
            </td>
            <td class="text-left">
              <?php echo $history['comment']; ?>
            </td>
            <td class="text-left">
              <?php if( isset($_GET['paynow']) ) { ?>
              <a class="btn btn-secondary" target="_blank" href="<?php echo trim($_GET['link'],'\'') ?>">Pagar agora</a>'</td>
              <?php  } ?>

          </tr>
          <?php  } ?>
          <?php } else { ?>
          <tr>
            <td colspan="3" class="text-center">
              <?php echo $text_no_results; ?>
            </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <?php } ?>

      <?php if($payment_method == 'Depósito Bancário' && $history['status'] == 'Pendente') { ?>
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
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right">
          <a href="<?php echo $continue; ?>" class="btn btn-primary">
            <?php echo $button_continue; ?>
          </a>
        </div>
      </div>
      <?php echo $content_bottom; ?>
    </div>
    <?php echo $column_right; ?>
  </div>
</div>
<?php echo $footer; ?>