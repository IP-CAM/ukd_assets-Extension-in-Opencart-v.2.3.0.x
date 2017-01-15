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
      <h1><?php echo $heading_title; ?></h1>
      <?php if ($orders) { ?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-right">
                <?php echo $column_order_id; ?>
              </td>
              <td class="text-left">
                <?php echo $column_product; ?>
              </td>
              <td class="text-left">
                <?php echo $column_status; ?>
              </td>
              <td class="text-left">
                <?php echo 'Pagamento' ?>
              </td>
              <td class="text-right">
                <?php echo $column_total; ?>
              </td>
              <td class="text-left">
                <?php echo $column_date_added; ?>
              </td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($orders as $order) { ?>
            <tr>
              <td class="text-right">#
                <?php echo $order['order_id']; ?>
              </td>
              <td class="text-left">
                <?php echo $order['products']; ?>
              </td>
              <td class="text-left">
                <?php echo $order['status']; ?>
              </td>
              <td class="text-left" id="<?php echo $order['order_id'] ?>" data-link="<?php echo $order['link'] ?>">                
              </td>
              <td class="text-right">
                <?php echo $order['total']; ?>
              </td>
              <td class="text-left">
                <?php echo $order['date_added']; ?>
              </td>
              <td class="text-left" id="col_<?php echo $order['order_id'] ?>"><a id="btn_<?php echo $order['order_id'] ?>" data-link="<?php echo $order['view']; ?>&link='<?php echo $order['link'] ?>'" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info"><i class="fa fa-eye"></i></a></td>
            </tr>
            <script>
              window.ukd_fn = window.ukd_fn || [];

              window.ukd_fn.push(

                function() {

                  var ref = "<?php echo ltrim($order['order_id'],'#'); ?>";
                  var btn = $('#btn_' + ref);
                  var col = $('#col_' + ref);

                  $.ajax({
                    type: "GET",
                    url: "transaction.php?ref=" + ref,
                    cache: false,
                    dataType: "json",
                    success: function(json) {
                      // $(xml).find('members').each(function() {
                      //   var name = $(this).find("name").text()
                      //   alert(name);
                      // });
                      if (json['transactions']) {

                        var link = $('#' + ref).data('link');
                        var status = json['transactions']['transaction']['status'];
                        var paymentMethod = json['transactions']['transaction']['paymentMethod']['type'];
                        var title = ['', '<span style="color:orangered">Pagamento pendente <i class="fa fa-exclamation-circle"></i></span></span>', 'Em análise', '<span style="color:SeaGreen">Pago <i class="fa fa-check"></i></span>',
                          'Disponível', '<span>Em disputa <i class="fa fa-warning"></i></span>', '<span>Devolvido <i class="fa fa-reply"></i></span>', '<span>Cancelado <i class=" fa fa-remove"></i></span>'
                        ];

                        if (status == 1) {
                          btn.attr("href", btn.data('link') + '&paynow=' + title[status]);
                          col.append(' <a class="btn btn-secondary" target="_blank" href="' + link + '">Pagar agora</a>');
                        } else if (status == 2 || status == 3) {
                          btn.attr("href", btn.data('link') + '&paid=' + title[status]);
                        } else if (status == 4) {
                          btn.attr("href", btn.data('link') + '&info=' + title[status]);
                        } else if (status == 5) {
                          btn.attr("href", btn.data('link') + '&info=' + title[status]);
                        } else if (status == 6) {
                          btn.attr("href", btn.data('link') + '&info=' + title[status]);
                        } else if (status == 7) {
                          btn.attr("href", btn.data('link') + '&info=' + title[status]);
                        }


                        if (paymentMethod == 1 && status == 1) {

                          $('#' + ref).html(title[2]);

                        } else {
                          $('#' + ref).html(title[status]);
                        }

                        console.log(json);
                      } else {

                        btn.attr("href", btn.data('link') );
                        $('#' + ref).html('');

                      }
                    }
                  });

                }
              )
            </script>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left">
          <?php echo $pagination; ?>
        </div>
        <div class="col-sm-6 text-right">
          <?php echo $results; ?>
        </div>
      </div>
      <?php } else { ?>
      <p>
        <?php echo $text_empty; ?>
      </p>
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