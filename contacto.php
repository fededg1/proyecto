<!DOCTYPE html>

<html lang="en">

<head>
<h1>
    <?php echo 
     "CONTACTANOS POR ESTE MEDIO";?>

<?php include ('header.php')
?>
Contacto     </h1>

<section class="contacto_contenido">
<form action="enviar_consulta.php" method="POST">
    <input type="text" name="nombreapellido" placeholder="Nombre y Apellido"
    class="contacto_input" required>
    <br>
    <input type="email" name="mail" placeholder="Mail"
    class="contacto_input" required>
    <br>
    <input type="text" name="telefono" placeholder="Tel"
    class="contacto_input" required>
    <br>
    <textarea name="mensaje" placeholder="mensaje" id="" cols="30" rows="10" required ></textarea>
    <br>
    <input type="submit" value="Enviar"
    class="contacto_input" required>
</form>
<?php
if (isset(($_GET ["e"])))
{
echo '<h2>MENSAJE ENVIADO CON EXITO</h2>' ;}
?> 
</section>

<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Tipo de Contacto</title>

</head>

<body>

<h1>
    </body>
    
</html>