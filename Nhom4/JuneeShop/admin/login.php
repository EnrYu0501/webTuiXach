<?php 
	// gọi file adminlogin
	include '../classes/adminlogin.php';
 ?>
 <?php
 	// gọi class longin_admin
 	$class = new adminlogin(); 
 	if($_SERVER['REQUEST_METHOD'] == 'POST'){
 		// LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
 		$adminUser = $_POST['adminUser'];
 		$adminPass = md5($_POST['adminPass']);

 		$login_check = $class -> longin_admin($adminUser,$adminPass); // hàm check User and Pass khi submit lên

 	}
  ?>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/styleadminlogin.css" media="screen" />
</head>
<body>
<section id="content">
	<div class="color"></div>
	<div class="color"></div>
	<div class="color"></div>
	<div class="box">
		<div class="square" style="--i:0"></div>
		<div class="square" style="--i:1"></div>
		<div class="square" style="--i:2"></div>
		<div class="square" style="--i:3"></div>
		<div class="square" style="--i:4"></div>
		<div class="container">
			<form action="login.php" method="post" class="form">
			<h2>Đăng nhập Admin</h2>
			<span><?php 
				if(isset($login_check)){
					echo $login_check;
				}
			 ?>  </span>
			<div class="inputBox">
				<input type="text" placeholder="Nhập tên..." required="" name="adminUser"/>
			</div>
			<div class="inputBox">
				<input type="password" placeholder="Nhập mật khẩu.." required="" name="adminPass"/>
			</div>
			<div class="inputBox">
				<input type="submit" value="Đăng nhập"  class="btnlogin" />
			</div>
		</form>
		</div>
	</div>
</section>
</div><!-- container -->
</body>
</html>