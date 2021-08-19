<?php
 	require('db.inc.php');

	$id = $_GET['id'];

	$query = "DELETE FROM submenu WHERE id = '$id'";
	$run = $conn->query($query);
	
	header('location:../admin/index.php?managemenu');