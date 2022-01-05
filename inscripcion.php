<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inscripcion</title>
    <script tipe= "text/javascript" src="dni.js"></script>
    <h1>
    <?php echo 
     "Inscribite completando el formulario";?>

<?php include ('header.php')
?>
Formulario de Inscripcion     </h1>

<section class="inscripcion_contenido">

<form action=" " id='form'>
    <input type="text" name="DNI" id="DNI" placeholder="DNI (Sin puntos)"
    class="dni_input" required>
    <button type="button" onclick="getData()" >Autocompletar</button>
    <br>
    </form>
<form action="enviar_inscripcion.php" method="POST">
    <input type="text" name="DNI" placeholder="DNI (Sin puntos)"
    class="inscripcion_input" required>
    <br>
    <input type="text" name="Nombre" placeholder="Nombre"
    class="inscripcion_input" required>
    <br>
    <input type="text" name="Apellido" placeholder="Apellido"
    class="inscripcion_input" required>
    <br>
    <input type="date" name="Fechanac" placeholder="Fecha de Nacimiento"
    class="inscripcion_input" required>
    <br>
    <input type="text" name="Domicilio" placeholder="Domicilio Fisico"
    class="inscripcion_input" required>
    <br>
    <input type="text" name="Telefono" placeholder="Telefono"
    class="inscripcion_input" required>
    <br>
    <input type="email" name="mail" placeholder="Mail"
    class="inscripcion_input" required>
    <br>
    <label><input type="checkbox" name="Eleccion_cursos[]" value="PHP"> PHP </label>
    <br>
    <label><input type="checkbox" name="Eleccion_cursos[]" value="JSON"> JSON </label>
    <br>
    <label><input type="checkbox" name="Eleccion_cursos[]" value="MySQL"> MySQL </label>
    <br>
    <textarea name="mensaje" placeholder="Contanos algo sobre vos" id="" cols="30" rows="10" required ></textarea>
    <br>
    <input type="submit" value="Enviar"
    class="inscripcion_input" required>
</form>
<?php
if (isset(($_GET ["e"])))
{
echo '<h2>Te has inscripto con EXITO</h2>' ;}
?> 
</section>
</head>
<body>
    
</body>
</html>