<?php
 
 require('db.inc.php');

	$id = $_GET['id'];

	$query = "DELETE FROM posts WHERE id = '$id'";

	$run = $conn->query($query);
	
	header('location:../admin.php?managepost');
 