<?php 
	require('db.inc.php');
	if(isset($_POST['signup'])) {
		$full_name = $conn->real_escape_string($_POST['full_name']);
		$email = $conn->real_escape_string($_POST['email']);
		$password = $conn->real_escape_string($_POST['password']);

		$query = "INSERT INTO admin(full_name, email, password) VALUES ('$full_name', '$email', '$password')";
		
		if ($conn->query($query)) {
			// echo "<script>alert('Register successful!');</script>";
			header('Location:login.php');
		}
		else {
			echo "<script>alert('Your email address already existed!');</script>";
		}
	} 
?>