<?php
//Load Composer's autoloader
require '../vendor/autoload.php';

//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


//Create an instance; passing `true` enables exceptions

function enviarCorreo($destino, $asunto, $mensaje){
  
  $mail = new PHPMailer(true);
  
  try {
    //Server settings
    //$mail->SMTPDebug = SMTP::DEBUG_SERVER;                    //Enable verbose debug output
    $mail->isSMTP();                                            //Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                       //Set the SMTP server to send through
    $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
    $mail->Username   = 'diegofelipa6@gmail.com';               //SMTP username
    $mail->Password   = 'omnqjwtcemamwxnr';                      //SMTP password
    $mail->CharSet    = 'UTF-8';                                //Codificacion
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
    $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

    //Recipients
    $mail->setFrom('diegofelipa6@gmail.com', 'Área de Sistemas');
    $mail->addAddress($destino);               //Name is optional
    //$mail->addReplyTo('info@example.com', 'Information');
    //$mail->addCC('cc@example.com');
    //$mail->addBCC('bcc@example.com');

    //Archivos adjuntos
    //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
    //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

    //Content
    $mail->isHTML(true);                                  //Set email format to HTML
    $mail->Subject = $asunto; //Asunto
    $mail->Body    = $mensaje; //Soporta HTML
    $mail->AltBody = 'El mensaje requiere soporte html. Contactar al administrador'; //No soporta HTML

    $mail->send();
    //echo json_encode(["status" => true]);
  } catch (Exception $e) {
      //echo json_encode(["status" => false]);
  }
}

