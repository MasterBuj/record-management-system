<?php
if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
	include('connect.php');
	$id = $_GET['id'];
	$result = $db->prepare("DELETE FROM transaction WHERE id= :delTransac");
	$result->bindParam(':delTransac', $id);
	$result->execute();
	header("location: index.php");
}
header("location: index.php");
