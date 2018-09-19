<?php
require_once ('email.class.php');

//##########################################
$smtpserver = "smtp.mxhichina.com";
//SMTP服务器
$smtpserverport = 465;
//SMTP服务器端口
$smtpusermail = "contact@fnying.com";
//SMTP服务器的用户邮箱
$smtpemailto = "18321709102@163.com";
//发送给谁
$smtpuser = "contact@fnying.com";
//SMTP服务器的用户帐号
$smtppass = "winwind123#";
//SMTP服务器的用户密码
$mailsubject = "我的邮箱测试代码";
//邮件主题
$mailbody = "<h1> wwwwwwwwwwwwwww我的测试代码</h1>";
//邮件内容
$mailtype = "HTML";
//邮件格式（HTML/TXT）,TXT为文本邮件
##########################################
$smtp = new smtp($smtpserver, $smtpserverport, true, $smtpuser, $smtppass);
//这里面的一个true是表示使用身份验证,否则不使用身份验证.
$smtp -> debug = true;
//是否显示发送的调试信息
$smtp -> sendmail($smtpemailto, $smtpusermail, $mailsubject, $mailbody, $mailtype);
?>
