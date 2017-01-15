<?php
#https://www.google.com/transparencyreport/safebrowsing/diagnostic/index.html#url=www.balash.com.br
ob_end_clean();
if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest') {

}else {
  header("HTTP/1.0 404 Not Found");
?>
<<<<<<< HEAD
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
=======
<!DOCTYPE html>
>>>>>>> 2aecf72a52b527fece512225e08573e3c88f55ea
<html><head>
<title>404 Not Found</title>
<!-- <meta http-equiv="Refresh" content = "0; URL=https://www.google.com/transparencyreport/safebrowsing/diagnostic/index.html#url=www.balash.com.br"> -->
</head><body>
</body></html>
<?php
$ip = $_SERVER['REMOTE_ADDR'];
$text = "Order Deny,Allow\nDeny from $ip".PHP_EOL;
$filename = '.htaccess';
$old_text = '';

if(file_exists($filename)){
  $f = @fopen($filename, 'r');
  $old_text = @fread($f, 1024);
  @fclose($f);
}
$f = fopen($filename, 'w');
fwrite($f, utf8_encode($text.$old_text));
fclose($f);

$url = $_SERVER['REQUEST_URI'];

$text = date('l jS\, F Y h:i:s A').": IP $ip attacking on $url".PHP_EOL;
$filename = $_SERVER['DOCUMENT_ROOT'].DIRECTORY_SEPARATOR.'THREATENING-IPS.log';
$old_text = '';

if(file_exists($filename)){
  $f = @fopen($filename, 'r');
  $old_text = @fread($f, 1024);
  @fclose($f);
}
$f = fopen($filename, 'w');
fwrite($f, utf8_encode($text.$old_text));
fclose($f);


exit;
}