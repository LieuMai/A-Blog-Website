<?php
	require('db.inc.php');

	if(isset($_POST['addcomment'])){
		$name = $conn->real_escape_string($_POST['name']);
		$comment = $conn->real_escape_string($_POST['comment']);
		$post_id = $_POST['post_id'];

		$query="INSERT INTO comments(comment,name,post_id) VALUES ('$comment','$name','$post_id')";
		
		if($conn->query($query)) {
			header("location:../post.php?id=$post_id");
		} else {
			echo "comment is not added";
		}
	}
?>