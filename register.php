<?php
	require('includes/add_user.php');
?>

<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Blogbook - Sign Up</title>
  <link rel="icon" href="../images/icon.jpg" type="image/x-icon">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" />
  <style>
    :root{
      --main-bg:white;
    }

    .main-bg {
      background: var(--main-bg) !important;
    }

    input:focus, button:focus {
      border: 1px solid var(--main-bg) !important;
      box-shadow: none !important;
    }

    .form-check-input:checked {
      background-color: var(--main-bg) !important;
      border-color: var(--main-bg) !important;
    }

    .card, .btn, input{
      border-radius:0 !important;
    }
  </style>
</head>

<body class="main-bg">
  <!-- Login Form -->
  <div class="container" style="margin: auto">
    <div class="row justify-content-center mt-5">
      <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="card shadow">
          <div class="card-title text-center border-bottom">
            <h1 class="p-3">BLOGBOOK</h1>
            <p style="font-weight: bold">Sign up with Blogbook</p>
          </div>
          <div class="card-body">
            <form method="post">
							<div class="mb-4">
								<label for="full_name" class="form-label">Full Name</label>
								<input type="text" class="form-control" name="full_name" />
							</div>
              <div class="mb-4">
                <label for="username" class="form-label">Email</label>
                <input type="email" class="form-control" name="email" />
              </div>
              <div class="mb-4">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" name="password" />
              </div>
              <div class="d-grid">
                <button type="submit" class="btn btn-dark" name="signup">Register</button>
              </div>
              <div class="mb-4" style="margin-top: 10px">
                <p style="display: inline-block;">Already have an account? </p>
                <a href="login.php">Login</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>