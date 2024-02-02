<?php
$serverName = "Juanpc";
$connectionInfo = array("WPmangaland"=>"WPmangaland");
$conn = sqlsrv_connect($Juanpc, $connectionInfo);
if($conn)
{
echo "Connection established.<br>";
}
else
{
echo "Connection could not be established.<br>";
die( print_r( sqlsrv_errors(), true));
}

$stmt = $conn->prepare("Insert into moneda values (idmoneda,moneda)");

$idmoneda = $_POST['idmoneda'];
$moneda = $_POST['moneda'];

$stmt->execute();

$stmt->close();
$conn->close();
?>