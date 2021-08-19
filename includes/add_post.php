<?php

	require('db.inc.php');
	require('function.php');
	if(isset($_POST['addpost'])) {
		
		$ptitle = $conn->real_escape_string($_POST['post_title']);
		$pcontent = $conn->real_escape_string($_POST['post_content']);
		$cid = $_POST['post_category'];
		$admin = getAdminInfo($conn, $_SESSION['email']);
		$aid = $admin['id'];

		$query = "INSERT INTO posts(title, content, category_id, admin_id) VALUES ('$ptitle', '$pcontent', '$cid', '$aid');";

		$run = $conn->query($query);
		// // if ($error = $conn->error) die('Error, insert query failed with:' . $error);

		$post_id = $conn->insert_id;
		echo "<pre>";

		$image_name = $_FILES['post_image']['name'];
		$image_tmp = $_FILES['post_image']['tmp_name'];
		// print_r($_FILES['post_image']);
		move_uploaded_file($_FILES['post_image']['tmp_name'], '../images/' . $_FILES['post_image']['name']);
		$query = "INSERT INTO images(post_id, image) VALUES ('$post_id', '$image_name');";
		// echo $query;
		$run = $conn->query($query);

		// header('location:../admin/index.php?managepost');
		header('location:../post.php?id='. $post_id);
	}

?>