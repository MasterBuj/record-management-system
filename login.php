<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['commit'])) {

	$user = $_POST['uname'];
	$password = $_POST['pword'];

	if (!$user == '' || !$password == '') {
		// configuration
		$dbhost 	= "localhost";
		$dbname		= "record";
		$dbuser		= "root";
		$dbpass		= "";

		// database connection
		$conn = new PDO("mysql:host=$dbhost; dbname=$dbname", $dbuser, $dbpass);

		// query
		$result = $conn->prepare("SELECT * FROM user WHERE username= :uname AND password= :pass");

		//assign value of $user to :uname
		$result->bindParam(':uname', $user);
		//same as password
		$result->bindParam(':pass', $password);
		//connect and excute the query to database
		$result->execute();

		//fetch if user and pass match in database	
		$rows = $result->fetch(PDO::FETCH_NUM);
		// if number of match is grater than 0 login the user

		header('Location: ' . (($rows > 0) ? 'main/index.php' : 'index.php?errors=1'));
		exit();
	} else {
		header("location: index.php?errors=1");
	}
}
