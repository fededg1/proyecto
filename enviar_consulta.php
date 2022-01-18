<?php
$nombreapellido_form =$_POST["nombreapellido"];
$mail_form= $_POST["mail"];
$telefono_form= $_POST["telefono"];
$Mensaje_form= $_POST["mensaje"];


$cuerpo_mail = "Nombre y Apellido ".$nombreapellido_form. " ". "Email ".$mail_form. " ". "Telefono ".$telefono_form. " ". "Mensaje ".$Mensaje_form;

mail("f_degrandis@hotmail.com", "Nueva Consulta", $cuerpo_mail);


$conexion= mysqli_connect ("localhost", "id18256283_fededg", "-F}^b~D80onbwOeP", "id18256283_consultas");
mysqli_query ($conexion, "INSERT INTO consultasrecibidas VALUES (DEFAULT, '$nombreapellido_form', '$mail_form', '$telefono_form', '$Mensaje_form');");

mysqli_close ($conexion);
header("Location: contacto.php?e=ok");

?>