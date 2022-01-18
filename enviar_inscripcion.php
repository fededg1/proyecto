<?php
$DNI_form=$_POST["DNI"];
$Nombre_form=$_POST["Nombre"];
$Apellido_form=$_POST["Apellido"];
$Fechanac_form=$_POST["Fechanac"];
$Domicio_form=$_POST["Domicilio"];
$telefono_form=$_POST["Telefono"];
$mail_form=$_POST["mail"];
$cursosElegidos=$_POST["Eleccion_cursos"];
$Mensaje_form=$_POST["mensaje"];


$cursos = "";

foreach($cursosElegidos as $curso){
    $cursos .= $curso;
}

$cuerpo_mail = "Nombre y Apellido ".$Nombre_form. " ".$Apellido_form. " "."Fecha de Nacimiento ". " ". $Fechanac_form. " ". "Domicilio ". " ". $Domicio_form. " ". "Email ".$mail_form. " ". "Telefono ".$telefono_form. " Curso Elegido: " . $cursos . " Mensaje " . $Mensaje_form;

mail("f_degrandis@hotmail.com", "Nueva Inscripcion", $cuerpo_mail);


$conexion= mysqli_connect ("localhost", "id18256283_fededg1", "8nM!pjX|r0/SZTWW", "id18256283_clase");


//var_dump(ysqli_query);

mysqli_query($conexion, "INSERT INTO alumnos (DNI, Nombre, Apellido, fecha_nac, Domicilio, Mail, Telefono, PrimerMensaje, fk_id_clase) VALUES ('$DNI_form', '$Nombre_form', '$Apellido_form', '$Fechanac_form', '$Domicio_form', '$mail_form', '$telefono_form', '$Mensaje_form', (Select id_clase from clases where nombreclase = '$cursosElegidos[0]' ));");
$error = mysqli_error($conexion);
mysqli_close ($conexion);

if($error != "") {
    echo "Error: ". $error;
}else {
    header("Location: inscripcion.php?e=ok");
}

?>