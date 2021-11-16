<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['saveOffice'])) {

    include('connect.php');

    $officename = $_POST['officename'];

    $q = $db->prepare("SELECT name FROM offices WHERE name= :officeName");

    $q->bindParam(':officeName', $officename);
    $q->execute();
    $rows = $q->fetch(PDO::FETCH_NUM);

    if (!$rows > 0) {

        $sql = $db->prepare("INSERT INTO offices (name) VALUES (:saveOffice)");
        $sql->execute(array(':saveOffice' => $officename));
        header("location: offices.php");
    } else {
        header("location: offices.php?err=duplicate&n=" . $officename);
    }
} else {
    header("location: offices.php");
}
