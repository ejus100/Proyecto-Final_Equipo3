<?php
include "conexion.php";
include "parametros.php";


$dbConn =  connect($db);

/*
  Aqui listamos todos los datos
 */
if ($_SERVER['REQUEST_METHOD'] == 'GET')
{
    if (isset($_GET['iddenuncia']))
    {
      //Mostramos un post
      $sql = $dbConn->prepare("SELECT * FROM denuncia where iddenuncia=:iddenuncia");
      $sql->bindValue(':iddenuncia', $_GET['iddenuncia']);
      $sql->execute();
      header("HTTP/1.1 200 OK");
      echo json_encode(  $sql->fetch(PDO::FETCH_ASSOC)  );
      exit();
	  }
    else {
      //Mostramos la lista de post
      $sql = $dbConn->prepare("SELECT * FROM denuncia");
      $sql->execute();
      $sql->setFetchMode(PDO::FETCH_ASSOC);
      header("HTTP/1.1 200 OK");
      echo json_encode( $sql->fetchAll()  );
      exit();
	}
}

// Creamos un nuevo post
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $input = $_POST;
    $sql = "INSERT INTO denuncia
          (nombre, apellido_pat, apellido_mat, tipo_denuncia, lugar, fecha)
          VALUES
          (:nombre, :apellido_pat, :apellido_mat, :tipo_denuncia, :lugar, :fecha)";
    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);
    $statement->execute();
    $postId = $dbConn->lastInsertId();
    if($postId)
    {
      $input['iddenuncia'] = $postId;
      header("HTTP/1.1 200 OK");
      echo json_encode($input);
      exit();
	 }
}
//Actualizamos
if ($_SERVER['REQUEST_METHOD'] == 'PUT')
{
    $input = $_GET;
    $postId = $input['iddenuncia'];
    $fields = getParams($input);

    $sql = "
          UPDATE denuncia
          SET $fields
          WHERE iddenuncia='$postId'
           ";

    $statement = $dbConn->prepare($sql);
    bindAllValues($statement, $input);

    $statement->execute();
    header("HTTP/1.1 200 OK");
    exit();
}

//Borramos
if ($_SERVER['REQUEST_METHOD'] == 'DELETE')
{
	$id = $_GET['iddenuncia'];
  $statement = $dbConn->prepare("DELETE FROM denuncia where iddenuncia=:iddenuncia");
  $statement->bindValue(':iddenuncia', $id);
  $statement->execute();
	header("HTTP/1.1 200 OK");
	exit();
}




//En caso de que ninguna de las opciones anteriores se haya ejecutado
header("HTTP/1.1 400 Bad Request");

?>