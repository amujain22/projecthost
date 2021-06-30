<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
    if(isset($_GET['edit']))
	{
		$editid=$_GET['edit'];
	}

// 	if(isset($_GET['reply']))
// 	{
// 	$replyto=$_GET['reply'];
// 	}   

// 	if(isset($_POST['submit']))
//   {	
// 	$reciver=$_POST['email'];
//     $message=$_POST['message'];
// 	$notitype=' has send a message';
// 	$sender='Admin';
	
//     $sqlnoti="insert into notification (notiuser,notireciver,notitype) values (:notiuser,:notireciver,:notitype)";
//     $querynoti = $dbh->prepare($sqlnoti);
// 	$querynoti-> bindParam(':notiuser', $sender, PDO::PARAM_STR);
// 	$querynoti-> bindParam(':notireciver',$reciver, PDO::PARAM_STR);
//     $querynoti-> bindParam(':notitype', $notitype, PDO::PARAM_STR);
//     $querynoti->execute();

// 	$sql="insert into projects (sender, reciver, feedbackdata) values (:user,:reciver,:description)";
// 	$query = $dbh->prepare($sql);
// 	$query-> bindParam(':user', $sender, PDO::PARAM_STR);
// 	$query-> bindParam(':reciver', $reciver, PDO::PARAM_STR);
// 	$query-> bindParam(':description', $message, PDO::PARAM_STR);
//     $query->execute(); 
// 	$msg="Message Send";
//   }
?>

<!doctype html>
<html lang="en" class="no-js">

<head>	
	<title>Messages</title>
<?php	include('includes/headermain.php'); ?>
</head>

<body>
<?php



$id = $_GET['id'];

		$sql = "SELECT * from projects where id = $id";
		$query = $dbh -> prepare($sql);
		$query->execute();
		$result=$query->fetch(PDO::FETCH_OBJ);
		$cnt=1;	
?>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
	<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12">
                            <h2>Message</h2>
								<div class="panel panel-default">
									<div class="panel-heading">Message</div>
<?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>

									<div class="panel-body">
<form method="post" class="form-horizontal" enctype="multipart/form-data">

<div class="form-group">
	<label class="col-sm-2 control-label">Sender<span style="color:red"></span></label>
	<div class="col-sm-4">
	<input type="text" name="sender" class="form-control" readonly required value="<?php echo htmlentities($result->sender);?>">
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label">Message<span style="color:red"></span></label>
	<div class="col-sm-6">
	<textarea name="message" class="form-control" cols="30" rows="10" readonly><?php echo htmlspecialchars($result->feedbackdata);?></textarea>
	</div>
</div>

<input type="hidden" name="feedbackdata" class="form-control" required value=""> 
<!-- 
<div class="form-group">
	<div class="col-sm-8 col-sm-offset-2">
		<button class="btn btn-primary" name="submit" type="submit">Send Reply</button>
	</div>
</div> -->

</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<?php	include('includes/footer.php'); ?>
</body>
</html>
<?php } ?>