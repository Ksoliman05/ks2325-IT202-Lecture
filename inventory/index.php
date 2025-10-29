<?php
session_start();
require_once("category.php");
require_once("item.php");
require_once("config.php");
?>
<!DOCTYPE html>
<html>
<head>
   <title>Inventory Helper</title>
   <link rel="stylesheet" type="text/css" href="ih_styles.css">
   <link rel="icon" type="image/png" href="images/logo.png">
</head>
<body>
   <header>
       <?php include("header.inc.php"); ?>
   </header>
   <section style="height: 425px;">
       <nav>
           <?php include("nav.inc.php"); ?>
       </nav>
       <main>
           <?php
           if (isset($_REQUEST['content'])) {
               include($_REQUEST['content'] . ".inc.php");
           } else {
               include("main.inc.php");
           }
           ?>
       </main>
   </section>
   <footer>
       <?php include("footer.inc.php"); ?>
   </footer>
</body>
</html>