<!--
<?php
	$senderName = $_POST['senderName'];
	$senderEmail =  $_POST['senderEmail'];
	$sendToName = $_POST['sendToName'];
	$sendToEmail = $_POST['sendToEmail'];
	$emailMessage = $_POST['emailMessage'];

	$recipient = "$sendToEmail";
	$subject = "Augie Marcello.com Flex 2 Simple Email Form";
	$headers = "From: $senderEmail ";
	$message = "From: $senderName\nEmail Address: $senderEmail\nTo: $sendToName\nEmail Address: $sendToEmail\n\nMessage: $emailMessage";
	$message = StripSlashes($message);
	
	
	mail($recipient, $subject, $message, $headers)
?>
-->



