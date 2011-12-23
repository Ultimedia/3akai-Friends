<?php

    /** 
     * Actual e-mail code
     */
    $to = "mb841@caret.cam.ac.uk";
    $subject = "No Profile page";
    $body = $_POST['message'];
    $from = $_POST['email'];
    
    $message = $from . ' ' . $body;
    
    if(mail($to, $subject, $body)) {
        echo "Your message has been sent.<br/><br/> We will contact you shortly if your message requires a response, and you provided an email address.";
    }{
        echo false;
    }
?>