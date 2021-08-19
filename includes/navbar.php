<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
  <div class="container" style="height: 50px; font-weight: bold">
    <a class="navbar-brand" href="index.php">
      <img src="images/icon.jpg" alt="" width="27" height="21" class="d-inline-block align-text-top"/>
      BLOGBOOK
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
        <!-- Navigation Item -->
        <?php
          $navQuery = "SELECT * FROM menu";
          $runNav = $conn->query($navQuery);
          while($menu = $runNav->fetch_assoc()){
            $no = getSubMenuNo($conn,$menu['id']);
            if ($no == 0){
        ?>
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?=$menu['action']?>"><?=$menu['name']?></a>
          </li>
          <?php
            } else {
          ?>   
        <?php
            } 
          }
        ?>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search" style="width: 350px; ">
        <button class="btn btn-primary" type="submit" style="margin-right: 30px">Search</button>
        <?php
          if(isset($_SESSION['isUserLoggedIn']) && $_SESSION['isUserLoggedIn']) {
            $admin = getAdminInfo($conn, $_SESSION['email']);
        ?>
            <div class="btn-group">
              <button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                <?=$admin['full_name']?>
              </button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="admin.php?addpost">Write Post</a></li>
                <li><a class="dropdown-item" href="admin.php?managepost">Manage Post</a></li>
                <li><a class="dropdown-item" href="admin.php?managecomment">Manage Comment</a></li>
                <!-- <li><a class="dropdown-item" href="#"></a></li> -->
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="./includes/logout.php">Log out</a></li>
              </ul>
            </div>
        <?php
          }
          else {
        ?>
          <a href="login.php" class="btn btn-dark">&#128242 Sign In/Sign up</a>
        <?php 
          }
        ?>
        
      </form>
      <form class="d-flex">
        
      </form>
    </div>
  </div>
  
</nav>