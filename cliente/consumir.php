<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="UTF-8">
		<title>INSEGURIDAD Y DELINCUENCIA EN CHIAPAS</title>
		<link rel="stylesheet" type="text/css" href="css/estilo.css">
		<link rel="stylesheet" type="text/css" href="css/galeria.css">
	</head>
	<body background="../img/foto1.jpg">

	<center>
    <h1>INSEGURIDAD Y DELINCUENCIA EN CHIAPAS</h1>  </center>
	
		<ul class="menu">
			<li><a href="Index.php">Inicio</a></li>
			<li><a href="Informacion.php">¿Qué es?</a></li>
			<li><a href="#">Municipios</a></li>
			<li><a href="realiza_denuncia.php">Realizar Denuncia</a></li>
			<li><a href="consumir.php">Denuncias</a></li>
		</ul>	
		
		
<?php
$data = json_decode(file_get_contents("http://localhost/inseguridad/servidor/servidor.php"), true );
print_r($data);
echo "<br>";
for($i=0; $i<count($data); $i++){
    echo $data[$i]["nombre"]."<br>";
    echo $data[$i]["apellido_pat"]."<br>";
    echo $data[$i]["apellido_mat"]."<br>";
    echo $data[$i]["tipo_denuncia"]."<br>";
    echo $data[$i]["lugar"]."<br>";
    echo $data[$i]["fecha"]."<br>";

}


?>
	</body>
</html>




