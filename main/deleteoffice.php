<?php
if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
	include('connect.php');
	$id = $_GET['id'];
	$result = $db->prepare("DELETE FROM offices WHERE id= :delOffice");
	$result->bindParam(':delOffice', $id);
	$result->execute();
	header("location: offices.php");
}
header("location: offices.php");
