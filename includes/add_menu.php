<?php
 
 require('db.inc.php');

 if(isset($_POST['addmenu'])){
 	
 	$name = $conn->real_escape_string($_POST['menu_name']);
 	$action = $conn->real_escape_string($_POST['menu_link']);

	$query = "INSERT INTO menu(name,action) VALUES ('$name','$action');";

	$run = $conn->query($query);

	header('location:../admin/index.php?managemenu');
 }

  if(isset($_POST['addsubmenu'])){
 	
 	$parent = $_POST['parent_name'];
 	$name = $conn->real_escape_string($_POST['submenu_name']);
 	$action = $conn->real_escape_string($_POST['submenu_link']);

	$query = "INSERT INTO submenu(parent_menu_id, name, action) VALUES ('$parent','$name','$action');";

	$run = $conn->query($query);

	header('location:../admin/index.php?managemenu');
 }