<?php
 	require('db.inc.php');
	$cid = $_GET['id'];
	$query = "DELETE FROM category WHERE id = '$cid'";
	$run = $conn->query($query);
	header('location:../admin.php?managecategory');
?>
 