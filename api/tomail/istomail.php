<?php
$email = $_REQUEST['emails'];
$subject = $_REQUEST['subject'];
$message = $_REQUEST['message'];
mail("abcd781518007@sina.cn", "Subject: $subject", $message, "From: $email");
echo "成功发送";
?>
