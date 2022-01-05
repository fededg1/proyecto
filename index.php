<!DOCTYPE html>

<html lang="en">

<head>
<h1>
    <?php echo 
     "PROYECTO DE CURSO PHP Y MYSQL";?>

<?php include ('header.php')
?>
</h1>

<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Tipo de Cursos</title>

</head>

<body>
<h1>
<?php 
$curso1 = "Curso Basico HTML";
$unidades = 8;
$precio = 5598.55;
$fecha = "15/12/2021";
$curso2 = "Curso Avanzado HTML";
$unidades2 = 15;
$precioavanzado = 8455.20;
$fechaavanzado = "20/12/2021";
?>
</h1>
<h2> 
<?php echo $curso1; ?>
<ul>
    <li>Duración: <?php echo $unidades; ?></li>
    <li>Precio: <?php echo $precio; ?></li>
    <li>Fecha de Inicio <?php echo $fecha; ?></li>
</ul>
</h2>
<h3>
<?php echo $curso2; ?>
<ul>
    <li>Duración: <?php echo $unidades2; ?></li>
    <li>Precio: <?php echo $precioavanzado; ?></li>
    <li>Fecha de Inicio <?php echo $fechaavanzado; ?></li>
</h3>
<h4>
<?php $duraciontotal = $unidades + $unidades2;
$preciototal = $precio + $precioavanzado;
$dolar = 200;
$preciodolar = $preciototal / $dolar; ?>

<?php echo "Sumatoria de ambos"; ?>
<ul>
    <li>
        Duración total: <?php echo $duraciontotal; ?>
    </li>
    <li>
        Precio total: $ <?php echo $preciototal; ?>
    </li>
    <li>
    Precio en dolares U$s <?php echo round ($preciodolar); ?>
    </li>
</ul>
<?php define("TIPOS DE CURSOS", "SEGUN SU DIFICULTAD");
echo "TIPOS DE CURSOS";
define('CURSOS', array ('PHP', 'JSON', 'HTML'));
const NIVELES = array ('INICIAL', 'AVANZADO', 'EXPERTO');
const FORMA_DE_PAGO = array ('EFECTIVO', 'TARJETA DE CREDITO', 'TRANSFERENCIA');
?>
<br>
<br>
<?php echo 'Hay promo solo si entre ambos superan los $10000 o los 60 U$D'?>
<br>
<br>
<?php if ($preciototal>=10000 || $preciodolar >=60) echo 'Hay promocion'
;else echo'No hay promo';?>
<br>
<br>
<?php echo 'El precio en pesos con este descuento te queda en ',($preciototal -= ($preciototal/10))
?>
<br>
<br>
<?php echo 'El precio en dolares con este descuento te queda en ',($preciodolar-= ($preciodolar/2.5))
?>
<br>
<br>
<?php echo "DESCUENTO ESPECIAL PARA CLIENTES QUE PAGUEN POR TRANSFERENCIA"?>
<br>
<?php echo "Hacer click en la opción para aplicar el descuento"
?>

</h4>
<h5>
    <nav>
        <ul>
            <li> <a href="index.php?pagos=eft">EFECTIVO </a></li>
            <li> <a href="index.php?pagos=tc">TARJETA DE CREDITO </a></li>
            <li> <a href="index.php?pagos=transferencia">TRANSFERENCIA </a></li>
        </ul>
    </nav>

<?php
if (!isset($_GET['pagos'])) echo 'No se selecciono nada';
else if ($_GET["pagos"]=="transferencia") echo ('Se suma tu promo y queda en '.($preciototal-=($preciototal/10))); 
else if ($_GET["pagos"]=="tc") echo ('El precio queda en '.($preciototal));
else if ($_GET["pagos"]=="eft") echo ('El precio queda en '.($preciototal));
else echo 'ERROR';
?>


</h5>
<h6>
<?php
 echo "Los cursos a seleccionar son"
?>
<section>
<nav>
        <ul>
            <li> <a href="index.php?curso=php">PHP </a></li>
            <li> <a href="index.php?curso=json">JSON</a></li>
            <li> <a href="index.php?curso=mysql">MySQL </a></li>
        </ul>
    </nav>
    <?php
    switch (isset($_GET['curso'])) {
    case 'curso=php':
        $Nombrecurso = 'PHP';
        $Niveles = 'Principiante';
        echo $Nombrecurso. ' '. $Niveles;
    break;
    case 'curso=json':
        $Nombrecurso = 'JSON';
        $Niveles = 'Avanzado';
        echo $Nombrecurso. ' '. $Niveles;
    break;
    case 'curso=mysql':
    $Nombrecurso = 'MySQL';
    $Niveles = 'Intermedio';
    echo $Nombrecurso. ' '. $Niveles;
    break;
    default:
    echo 'FALTA SELECCIONAR CURSO';
    }
 
    ?>

 </section>
</h6>

    </body>
    
</html>
