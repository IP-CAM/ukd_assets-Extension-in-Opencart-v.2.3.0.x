<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Balash - Manutenção</title>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <style>
    /* * Globals */
    /* Links */

    a,
    a:focus,
    a:hover {
      color: #FFB2DB;
    }

    .cover-heading {
      font-size: 60px;
    }
    /* Custom default button */

    .btn-default,
    .btn-default:hover,
    .btn-default:focus {
      color: #333;
      text-shadow: none;
      /* Prevent inheritance from `body` */
      background-color: #fff;
      border: 1px solid #fff;
    }
    /* * Base structure */

    html,
    body {
      height: 100%;
      background-color: #31182F;
    }

    body {
      color: #fff;
      text-align: center;
      text-shadow: 0 1px 3px rgba(0, 0, 0, 1);
    }
    /* Extra markup and styles for table-esque vertical and horizontal centering */

    .site-wrapper {
      display: table;
      width: 100%;
      height: 100%;
      /* For at least Firefox */
      min-height: 100%;
      -webkit-box-shadow: inset 0 0 200px #000;
      box-shadow: inset 0 0 200px #000;
    }

    .site-wrapper-inner {
      display: table-cell;
      vertical-align: top;
    }

    .cover-container {
      margin-right: auto;
      margin-left: auto;
    }
    /* Padding for spacing */

    .inner {
      padding: 30px;
    }
    /* * Header */

    .masthead-brand {
      margin-top: 10px;
      margin-bottom: 10px;
    }

    .masthead-nav>li {
      display: inline-block;
    }

    .masthead-nav>li+li {
      margin-left: 20px;
    }

    .masthead-nav>li>a {
      padding-right: 0;
      padding-left: 0;
      font-size: 16px;
      font-weight: bold;
      color: #fff;
      /* IE8 proofing */
      color: rgba(255, 255, 255, .75);
      border-bottom: 2px solid transparent;
    }

    .masthead-nav>li>a:hover,
    .masthead-nav>li>a:focus {
      background-color: transparent;
      border-bottom-color: #a9a9a9;
      border-bottom-color: rgba(255, 255, 255, .25);
    }

    .masthead-nav>.active>a,
    .masthead-nav>.active>a:hover,
    .masthead-nav>.active>a:focus {
      color: #fff;
      border-bottom-color: #fff;
    }

    .masthead,
    .mastfoot,
    .cover-container {
      width: 100%;
    }

    .masthead {
      border-bottom: 2px solid #EF218F;
    }
  </style>
</head>

<body>
  <div class="site-wrapper">
    <div class="site-wrapper-inner">
      <div class="cover-container">
        <div class="masthead clearfix">
          <div class="inner">
            <h3 class="masthead-brand"><img src="image/catalog/logo.png"/></h3> </div>
        </div>
        <div class="inner cover">
          <h1 class="cover-heading">Ooops!</h1>
          <p class="lead">
            <?php echo $message; ?> </p>
        </div>
        <div class="mastfoot">
          <div class="inner">
            <p>Email<br/><a href="mailto:contato@balash.com.br">contato@balash.com.br</a><br/><br/> Whatsapp <br/><a href="tel:+5571987186507">(71) 98718 6507</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
