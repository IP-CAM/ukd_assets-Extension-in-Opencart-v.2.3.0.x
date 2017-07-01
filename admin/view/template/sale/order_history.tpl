<div class="table-responsive">
  <table class="table table-bordered">
    <thead>
      <tr>
        <td class="text-left"><?php echo $column_date_added; ?></td>
        <td class="text-left"><?php echo 'Cod. de Rastreamento'; ?></td>
        <td class="text-left"><?php echo $column_comment; ?></td>
        <td class="text-left"><?php echo $column_status; ?></td>
        <td class="text-left"><?php echo $column_notify; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php if ($histories) { ?>
      <?php foreach ($histories as $history) { ?>
      <tr>
        <td class="text-left"><?php echo $history['date_added']; ?></td>
        <td class="text-left">
          <?php
          $tracking_number = $history['tracking_number'];
          if($tracking_number && strlen($tracking_number) == 13):
          ?>
          <form method="POST" target="_blank" action="http://www2.correios.com.br/sistemas/rastreamento/resultado_semcontent.cfm" class="shipment-details-service__correios">
              <input type="hidden" name="Objetos" value="<?php echo $tracking_number; ?>">
              <input class="shipment-details-service__correios-action" type="submit" value="<?php echo $tracking_number; ?>">
          </form>
          <?php endif ?>
        </td>
        <td class="text-left"><?php echo $history['comment']; ?></td>
        <td class="text-left"><?php echo $history['status']; ?></td>
        <td class="text-left"><?php echo $history['notify']; ?></td>
      </tr>
      <?php } ?>
      <?php } else { ?>
      <tr>
        <td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
</div>
<div class="row">
  <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
  <div class="col-sm-6 text-right"><?php echo $results; ?></div>
</div>
