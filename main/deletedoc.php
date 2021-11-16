<?php
if ($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['id'])) {
	include('connect.php');
	$id = $_GET['id'];
	$result = $db->prepare("DELETE FROM doc_type WHERE id= :delDoc");
	$result->bindParam(':delDoc', $id);
	$result->execute();
	header("location: doctype.php");
}
header("location: doctype.php");
