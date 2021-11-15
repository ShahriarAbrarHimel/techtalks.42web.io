<?php 
	include('../languages/lang_config.php');
	include('config/apply.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login - MLB Website</title>

	<link rel="stylesheet" type="text/css" href="<?php echo SITEURL; ?>assets/css/style.css">
</head>
<body>
	<div class="login">
		<h1><?php echo $lang['login_title'] ?></h1>
		<br>
		<?php 
			if(isset($_SESSION['login']))
			{
				echo $_SESSION['login'];
				unset($_SESSION['login']);
			}
		?>
		<form method="post" action="">
			<div class="title"><?php echo $lang['username'] ?></div>
			<input  class="full" type="text" name="username" placeholder="<?php echo $lang['username'] ?>" required="true">
			<br>
			<div  class="title"><?php echo $lang['password'] ?></div>
			<input   class="full" type="password" name="password" placeholder="<?php echo $lang['password'] ?>" required="true">
			<br>
			<div class="title">Secret Code</div>
			<input class="full" type="password" name="code" placeholder="XXXXXXXXX" required="true">
			<br>
			<br>
			<input class="btn-success btn-md full" type="submit" name="submit" value="<?php echo $lang['btn_login'] ?>">
			<br>
			<div class="language">
			<ul>
				<li>
			<a  href="<?php echo SITEURL; ?>">Back to Home</a>
			</li>
		</ul>
		</form>

		<div class="language">
			<ul>
				<li>
					<a href="<?php echo SITEURL; ?>admin/login.php?lang=en"><?php echo $lang['english'] ?></a>
				</li>
				<li>
					<a href="<?php echo SITEURL; ?>admin/login.php?lang=np"><?php echo $lang['nepali'] ?></a>
				</li>
				<li>
					<a href="<?php echo SITEURL; ?>admin/login.php?lang=cn"><?php echo $lang['chinese'] ?></a>
				</li>
				
			</ul>
			<footer class="footer">
		<div class="wrapper">
			<p>
				<?php echo $lang['copy_right'] ?>
			</p>
			<p>
				<?php echo $lang['developed_by'] ?> - <a href="" title="Web Developer in Nepal"><?php echo $lang['author'] ?></a>
			</p>
		</div>
	</footer>
		</div>

		<?php 
			if(isset($_POST['submit']))
			{
				//echo "Click";

$code="16514731";

$PASS=$_REQUEST["code"];

if ($code==$PASS)  {
  

				$username = $obj->sanitize($conn,$_POST['username']);
				$password = md5($obj->sanitize($conn,$_POST['password']));

				$tbl_name = "tbl_users";
				$where = "username='$username' && password='$password'";

				$query = $obj->select_data($tbl_name,$where);
				$res = $obj->execute_query($conn,$query);
				$count_rows = $obj->num_rows($res);
				if($count_rows>0)
				{
					$_SESSION['login'] = "<div class='success'>".$lang['login_success'].".</div>";
					$_SESSION['user'] = $username;
					header('location:'.SITEURL.'admin/');
				}
				else
				{
					$_SESSION['login'] = "<div class='error'>".$lang['login_fail']."</div>";
					header('location:'.SITEURL.'admin/login.php');
				}
			}
		}
		?>
	</div>
</body>
</html>