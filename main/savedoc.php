<?php
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['saveDoc'])) {

    include('connect.php');

    $docname = $_POST['docname'];

    $q = $db->prepare("SELECT name FROM doc_type WHERE name= :docName");

    $q->bindParam(':docName', $docname);
    $q->execute();
    $rows = $q->fetch(PDO::FETCH_NUM);

    if (!$rows > 0) {

        $sql = $db->prepare("INSERT INTO doc_type (name) VALUES (:docName)");
        $sql->execute(array(':docName' => $docname));
        header("location: doctype.php");
    } else {
        header("location: doctype.php?err=duplicate&n=" . $docname);
    }
} else {
    header("location: doctype.php");
}
