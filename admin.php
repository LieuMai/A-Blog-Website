<?php
  require('includes/db.inc.php');
  include('includes/function.php');
?>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
      <link href="custom-bootstrap.css" rel="stylesheet">
      <title>
        Manage Account
      </title>
      <link rel="icon" href="images/icon.jpg" type="image/x-icon">

      
  </head>
  <body>
    <!-- Modal Add Category -->
    <div class="modal fade" id="modalCategory" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Add new category</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form action="includes/add_category.php" method="post">
              <div class="form-group">
                <label class="col-form-label">Catagory Name</label>
                <input type="text" class="form-control" name="category_name" required>
              </div>
              <button type="submit" name="addct" class="btn btn-primary" style="margin-top: 10px">Add Category</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- Navigation bar -->
    <?php include_once('includes/navbar.php'); ?>

    <section class="container">
      <section id="main-content">
        <section class="wrapper">

          <div class="row">
            <div class="col-lg-12 col-md-12">

              <?php
                if(isset($_GET['managepost'])) {
              ?>

              <!-- Manage Post -->
                  <div class="row">
                    <div class="col-lg-12">
                      <header class="panel-heading">
                        <h3>Manage Post</h3>
                      </header>
                      <section class="panel">
                        <table class="table table-striped table-advance table-hover">
                          <tbody>
                            <tr>
                              <th>#</th>
                              <th>Post Title</th>
                              <th>Post Category</th>
                              <th>Post Date</th>
                            </tr>
                            <?php
															$index = 0;
                              $posts = getAllPostsByAdmin($conn, $_SESSION['email']);
                              foreach ($posts as $post) {
                            ?>
                              <tr>
                                <td><?=++$index?></td>
                                <td><?=$post['title']?></td>
                                <td><?=getCategory($conn, $post['category_id'])?></td>
                                <td><?=date('F jS Y',strtotime($post['create_at']))?></td>
                                <td>
                                  <div class="btn-group">
                                    <a class="btn btn-danger" href="includes/remove_post.php?id=<?=$post['p_id']?>">Remove</a>
                                  </div>
                                </td>
                              </tr>
                            <?php
                              }
                            ?>
                          </tbody>
                        </table>
                      </section>
                    </div>
                  </div>
              <!-- end manage post -->
              <?php
                } elseif(isset($_GET['managecomment'])) {
              ?>
              <!-- Manage Comment -->
                <div class="row">
                    <div class="col-lg-12">
                      <header class="panel-heading">
                        <h3>Manage Comment</h3>
                      </header>
                      <section class="panel">
                        <table class="table table-striped table-advance table-hover">
                          <tbody>
                            <tr>
                              <th>#</th>
                              <th>Comment</th>
                              <th>Name</th>
                              <th>Post</th>
                            </tr>
                            <?php
                                $comments = getAllCommentsByAdmin($conn, $_SESSION['email']);
																$index = 0;
                                foreach ($comments as $comment) {
                            ?>
                              <tr>
                                <td><?=++$index?></td>
                                <td><?=$comment['comment']?></td>
                                <td><?=$comment['name']?></td>
                                <td><?=getPostTitle($conn,$comment['post_id'])?></td>
                              </tr>
                            <?php
                              }
                            ?>
                          </tbody>
                        </table>
                      </section>
                    </div>
                </div>
              <!-- end manage comment -->
              <?php
                } elseif(isset($_GET['managecategory'])) {
              ?>
              <!-- Manage Category -->
                <div class="row">
                  <div class="col-lg-12">
                    <header class="panel-heading">
                      <h3>Manage Category</h3>
                      <button class="btn btn-primary" data-bs-target="#modalCategory" data-bs-toggle="modal">Add New Category</button>
                    </header>
                    <section class="panel">
                      <table class="table table-striped table-advance table-hover">
                        <tbody>
                          <tr>
                            <th>#</th>
                            <th>Category Name</th>
                            <th>Action</th>
                          </tr>
                          <?php
                            $categories = getAllCategory($conn);
                            foreach ($categories as $ct) {
                          ?>
                            <tr>
                              <td><?=$ct['id']?></td>
                              <td><?=$ct['name']?></td>
                              <td>
                                <div class="btn-group">
                                  <a class="btn btn-danger" href="includes/remove_category.php?id=<?=$ct['id']?>">Remove</a>
                                </div>
                              </td>
                            </tr>
                          <?php
                            }
                          ?>
                        </tbody>
                      </table>
                    </section>
                  </div>
                </div>
              <!-- end mange category -->
              <?php
                } else {
              ?>
              <!-- Add Post -->
              <div class="col-lg-12">
                <section class="panel">
                  <div class="panel-body">
                    <div class="form">
                      <form action="includes/add_post.php" method="post" enctype="multipart/form-data" class="form-horizontal">
                        <div class="form-group">
                          <label>Post Title </label>
                          <input type="text" class="form-control col-sm-12" name="post_title" required>
                        </div>

                        <div class="form-group">
                            <label>Post Content</label>
                            <textarea class="form-control" name="post_content" style="height: 230px"></textarea>
                        </div>

                        <div class="form-group">
                          <div class="col-sm-6" style="float: left; width: 50%">
                            <label>Select Post Category</label>
                            <select class="form-control" name="post_category">
                              <?php
                                $categories = getAllCategory($conn);
                                foreach ($categories as $option) {
                              ?>
                                <option value="<?=$option['id']?>"><?=$option['name']?></option>
                              <?php
                                }
                              ?>
                            </select>
                          </div>
                          <div class="col-sm-6" style="float: right; width: 45%">
                            <label>Upload Photos </label>
                            <input type="file" class="form-control" name="post_image"/>
                          </div>
                        </div>
                        <div class="form-group">
                          <input class="btn btn-primary" type="submit" name="addpost" value="Add Post" style="margin-top: 20px">
                        </div>
                      </form>
                    </div>
                  </div>
                </section>
              </div>  
              <?php    
                }
              ?>

            </div>
          </div>

        </section>
      </section>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>    
  </body>
</html>