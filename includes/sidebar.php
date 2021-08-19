<div class="col-4">
    <?php
      if(isset($_GET['id'])){
    ?>
      <div class="card mb-3">
        <h5 class="card-header">Comments</h5>
        <?php
          $comments = getComments($conn,$post_id);
          if (count($comments) == 0){
            echo '<div class="card-body"><p class="card-text">No comments!</p></div>';
          }
          foreach ($comments as $comment) {
        ?>
          <div class="card-body">
            <p class="card-text"><?=$comment['comment']?></p>
            <h2 class="blockquote-footer"><?=$comment['name']?></h2>
            <small> <p class="text-end text-secondary fst-italic"><?=date('F jS Y',strtotime($comment['created_at']))?></p></small>
          </div>
        <?php
          }
        ?>
      </div>
    <?php
      }
    ?> 
</div>