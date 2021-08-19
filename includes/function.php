<?php

function getCategory($conn, $id){
	$query="SELECT * FROM category WHERE id=$id";
	$run = $conn->query($query);
	$data = $run->fetch_assoc();
	return $data['name'];
}

function getAllCategory($conn){
	$query="SELECT * FROM category";
	$run = $conn->query($query);
	$data = array();
	
	while($d = $run->fetch_assoc()){
		$data[]=$d;
	}
	return $data;
}

function getImagesByPost($conn, $post_id){
	$query="SELECT * FROM images WHERE post_id=$post_id";
	$run = $conn->query($query);
	$data = array();
	
	while($d = $run->fetch_assoc()){
		$data[]=$d;
	}
	return $data;
}

function getAllPosts($conn){
	$query="SELECT * FROM posts";
	$run=$conn->query($query);
	$data = array();

	while ($d = $run->fetch_assoc()) {
		$data[]=$d;
	}
	return $data;
}

function getAllPostsByAdmin($conn, $email){
	$query="SELECT p.id p_id, title, category_id, create_at, email FROM posts p JOIN admin a ON p.admin_id = a.id WHERE email='$email'";
	$run = $conn->query($query);
	$data = array();

	while ($d = $run->fetch_assoc()) {
		$data[]=$d;
	}
	return $data;
}

function getAdminByPost($conn,$post_id){
	$query="SELECT * FROM posts p join admin a on p.admin_id = a.id WHERE p.id=$post_id";
	$run = $conn->query($query);
	$data = array();
	
	while($d = $run->fetch_assoc()){
		$data[]=$d;
	}
	return $data;
}

function getPostTitle($conn, $post_id){
	$query="SELECT * FROM posts WHERE id=$post_id";
	$run=$conn->query($query);
	$data = $run->fetch_assoc();

	return $data['title'];
}

function getPostThumb($conn, $post_id){
	$query="SELECT * FROM images WHERE post_id=$post_id";
	$run=$conn->query($query);
	$data = $run->fetch_assoc();

	return $data['image'];
}

function getAllComments($conn){
	$query="SELECT * FROM comments";
	$run = $conn->query($query);
	$data = array();
	
	while($d = $run->fetch_assoc()){
		$data[]=$d;
	}
	return $data;
}

function getAllCommentsByAdmin($conn, $email){
	$query="SELECT comment, name, c.post_id post_id FROM comments c JOIN posts p ON c.post_id = p.id JOIN admin a ON p.admin_id = a.id WHERE email='$email'";
	$run = $conn->query($query);
	$data = array();
	
	while($d = $run->fetch_assoc()){
		$data[]=$d;
	}
	return $data;
}

function getComments($conn, $post_id){
	$query="SELECT * FROM comments WHERE post_id=$post_id";
	$run = $conn->query($query);
	$data = array();
	
	while($d = $run->fetch_assoc()){
		$data[]=$d;
	}
	return $data;
}

function getAllParentMenu($conn){
	$query="SELECT * FROM menu";
	$run=$conn->query($query);
	$data = array();

	while ($d = $run->fetch_assoc()) {
		$data[]=$d;
	}
	return $data;
}

function getParentMenu($conn,$menu_id){
	$query="SELECT * FROM menu WHERE id=$menu_id";
	$run=$conn->query($query);
	$data = array();

	while ($d = $run->fetch_assoc()) {
		$data[]=$d;
	}
	return $data;
}

function getParentMenuName($conn,$menu_id){
	$query="SELECT * FROM menu WHERE id=$menu_id";
	$result=$conn->query($query);
	$data = $result->fetch_assoc();
	
	return $data['name'];
}

function getAllSubMenu($conn){
	$query="SELECT * FROM submenu";
	$run=$conn->query($query);
	$data = array();

	while ($d = $run->fetch_assoc()) {
		$data[]=$d;
	}
	return $data;
}

function getSubMenu($conn,$menu_id){
	$query="SELECT * FROM submenu WHERE parent_menu_id=$menu_id";
	$run=$conn->query($query);
	$data = array();

	while ($d = $run->fetch_assoc()) {
		$data[]=$d;
	}
	return $data;
}

function getSubMenuNo($conn, $menu_id){
	$query="SELECT * FROM submenu WHERE parent_menu_id=$menu_id";
	$run=$conn->query($query);
	return $run->num_rows;
}

function getAdminInfo($conn, $email) {
	$query = "SELECT * FROM admin WHERE email='$email';";
	$run = $conn->query($query);
	$data = $run->fetch_assoc();
	return $data;
}

?>