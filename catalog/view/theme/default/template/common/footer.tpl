<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr/>
    <div class="row">
        <div class="col-md-6 pull-left">
          <a href="https://pagseguro.uol.com.br/comprar/" target="_blank"><img src="image/pagseguro.png" /></a>
          <a href="https://www.google.com/transparencyreport/safebrowsing/diagnostic/?hl=pt-BR#url=www.balash.com.br" target="_blank"><img src="image/google-safe-browsing.png" /></a>
          <a style="cursor:pointer" target="_blank" onclick="javascript: window.open('https://www.sitelock.com/verify.php?site=balash.com.br', '_blank', 'width=600,height=600,toolbar=no,scrollbars=no,menubar=no,resizable=no,location=no,status=no')"><img src="image/sitelock-seal.png" /></a>


          <!-- <a href="#" onclick="window.open('https://www.sitelock.com/verify.php?site=balash.com.br','SiteLock','width=600,height=600,left=160,top=170');" ><img class="img-responsive" alt="SiteLock" title="SiteLock"  src="//shield.sitelock.com/shield/balash.com.br" /></a> -->

        </div>
        <div class="col-md-6 pull-right" style="text-align:right">
            <p><?php echo $powered; ?></p>
        </div>
    </div>
  </div>
</footer>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js"></script>
<script src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script ?>"></script>
<?php } ?>
<script>
for (i in window.ukd_fn) window.ukd_fn[i]();
</script>

<!-- <script data-main="catalog/view/ukd_assets/js/main" src="catalog/view/ukd_assets/js/require.js"></script> -->
</body></html>