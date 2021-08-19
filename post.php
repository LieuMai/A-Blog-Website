<?php
  require('includes/db.inc.php');
  require('includes/function.php');
?>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
      <title>
        <?=getPostTitle($conn, $_GET['id'])?>
      </title>
      <link rel="icon" href="images/icon.jpg" type="image/x-icon">
  </head>
  <body>

  <!-- Navigation bar -->
  <?php include_once('includes/navbar.php'); ?>

  <!-- Post -->
  <div>
    <div class="container m-auto mt-3 row">
      <div class="col-8">
        <?php
          $post_id = $_GET['id'];
          $post_admin = getAdminByPost($conn, $post_id);
          $postQuery="SELECT * FROM posts WHERE id=$post_id";
          $runPQ = $conn->query($postQuery);
          while ($post = $runPQ->fetch_assoc()) {
        ?> 
            <!-- Post title, time & category -->
          <div class="card mb-3">
            <div class="card-body">
              <h3 class="card-title" style="font-weight: bold;"><?=$post['title']?></h3>
              <p class="card-text text-secondary" style="font-weight: bold;">Author: <?= $post_admin[0]['full_name'] ?></p>
              <span class="badge bg-primary ">Posted on <?=date('F jS Y',strtotime($post['create_at']))?></span>
              <span class="badge bg-danger"><?=getCategory($conn, $post['category_id'])?></span>
              
              <div class="border-bottom mt-3"></div>
                <?php
                    $post_images = getImagesByPost($conn, $post['id']);
                ?>
                <!-- Post Images -->
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <?php
                        $c = 1;
                        foreach ($post_images as $image) {
                          if ($c > 1){
                            $sw = "";
                          } else {
                            $sw = "active";
                          }
                    ?>
                          <div class="carousel-item <?=$sw?>">
                            <img class="d-block w-100" src="images/<?=$image['image']?>" alt="">
                          </div>
                    <?php
                          $c++;
                        }
                    ?>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleControls" type="button" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only"></span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleControls" type="button" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only"></span>
                  </a>
                </div> <!-- image -->

                <p class="card-text"><?=$post['content']?></p>
                <div class="addthis_inline_share_toolbox_u2or"></div>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                  Comment on this
                </button>
            </div> <!-- card body -->
          </div> <!-- card mb-3 -->

          <!-- Modal -->
          <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Add Your Comment</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form action="includes/add_comment.php" method="POST">
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">Name</label>
                      <input type="name" class="form-control" id="exampleInputEmail1" name="name" aria-describedby="emailHelp" value=<?=$_SESSION['email']?>>
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputPassword1" class="form-label">Comment</label>
                      <input type="text" class="form-control" id="exampleInputPassword1" name="comment">
                    </div>
                    <input type="hidden" name="post_id" value="<?=$post_id?>">
                    <button type="submit" name="addcomment" class="btn btn-primary">Add Comment</button>
                  </form>
                </div>      
              </div>
            </div>
          </div> <!-- modal -->


          <!-- Related Posts -->
          <div>
              <h4>Related Posts</h4>
              <?php
                $pquery="SELECT * FROM posts WHERE category_id={$post['category_id']} ORDER BY id DESC;";
                $prun=$conn->query($pquery) or die($conn->error);
                while ($rpost=$prun->fetch_assoc()) {
                  if($rpost['id']==$post_id){
                    continue;
                  }
              ?>
              <a href="post.php?id=<?=$rpost['id']?>" style="text-decoration: none; color: black;">
              <div class="card mb-3" style="max-width: 700px;">
                <div class="row g-0">
                  <div class="col-md-5" style="background-image: url('images/<?=getPostThumb($conn,$rpost['id'])?>');background-size: cover"></div>
                  <div class="col-md-7">
                    <div class="card-body">
                      <h5 class="card-title"><?=$rpost['title']?></h5>
                      <p class="card-text text-truncate"><?=$rpost['content']?></p>
                      <p class="card-text"><small class="text-muted">Posted on <?=date('F jS Y',strtotime($rpost['create_at']))?></small></p>
                    </div>
                  </div>
                </div>
              </div>
              </a>
              <?php
                }
              }
              ?>  
          </div> <!-- related post -->
        </div> <!-- col-8 -->

        <?php include_once('includes/sidebar.php'); ?>
      </div> <!-- container -->
    </div> <!-- final -->
    <?php include_once('includes/footer.php'); ?>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <!-- Share Button -->
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-60965d3db1d8977f"></script>    
  </body>
</html>