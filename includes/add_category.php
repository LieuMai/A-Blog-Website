<?php
 
 require('db.inc.php');

 if(isset($_POST['addct'])){
 	
 	$category_name = $conn->real_escape_string($_POST['category_name']);

	$query = "INSERT INTO category(name) VALUES ('$category_name');";

	$run = $conn->query($query);

	header('location:../admin.php?managecategory');
 }