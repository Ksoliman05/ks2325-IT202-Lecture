<?php
if (isset($_SESSION['login'])) {
   unset($_SESSION['login']);
}
if(headers_sent()){
   echo 'Click <a hred = "index.php?content=logout"><strong>here</strong></a> to logout.';
}
header("Location: index.php");
?>
