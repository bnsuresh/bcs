<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <style type="text/css">
    	body {
    		background-image: url("https://www.pixelstalk.net/wp-content/uploads/2016/05/Silver-Blur-Background-Wallpaper.jpg");
    	}
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Bikes &amp Cars</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="bikes.php">Bikes</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cars.php">Cars</a>
            </li>
                                    <li class="nav-item">
              <a class="nav-link" href="req.php">Request</a>
            </li>
            <?php if(isset($_SESSION['puser'])){
            	echo '     <li class="nav-item dropdown">
        <button class="dropdown-toggle" data-toggle="dropdown" href="#">Hello,'.strtoupper($_SESSION['puser']).'
        <span class="caret"></span></button>
        <ul class="dropdown-menu">
          <li><a href="logout.php">Logout</a></li>
        </ul>
      </li>';
            }
            else{
            	echo '<li class="nav-item">
              <a class="nav-link" href="login.php">Login</a>
            </li>';
            }
            	?>
                        <li class="nav-item">
              <a class="nav-link" href="admin/index.php">Admin</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <br><br><br>
      <section class="jumbotron text-center">
        <div class="container">
          <h1 class="jumbotron-heading">Welcome to Bike &amp Cars</h1>
          <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p>
          <p>
            <a href="bikes.php" class="btn btn-primary my-2">Browse Bikes</a>
            <a href="cars.php" class="btn btn-secondary my-2">Browse Cars</a>
          </p>
        </div>
      </section>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>