<html>
  <!-- Example PHP to load the CPU. $num corresponds to approximately the number 
       of seconds you want to do work for, depending on machine size
  -->
  <head><title>V1 App example</title></head>
  <body>
    <br/><br/>
    <?php $hostname = gethostname(); ?>
    <center>
	  <h1>V1 app running on <?php echo "$hostname" ?> is doing work..</h1>
    <br/><br/>
    <?php
    ob_flush();
    flush();
    set_time_limit(0);

    if ($_SERVER['REQUEST_METHOD'] == "GET")
    {
      $num = $_GET["num"];
      for ($x = 0; $x <= $num * 7000000; $x++)
      {
        $var = $num+1;
      }
    }
    ?>
    <h1>Processing complete</h1>
    </center>
  </body>
</html>
