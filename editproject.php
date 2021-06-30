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


	
    if(isset($_POST['submit']))
    {	
      $file = $_FILES['attachment']['name'];
      $file_loc = $_FILES['attachment']['tmp_name'];
      $folder="attachment/";
      $new_file_name = strtolower($file);
      $final_file=str_replace(' ','-',$new_file_name);
      
      $title=$_POST['title'];
      $description=$_POST['description'];
      $user=$_SESSION['alogin'];
      $reciver= 'Admin';
      $notitype='Updated a Project';
      $idedit=$_POST['idedit'];
      $attachment=[' '];
  
      if(move_uploaded_file($file_loc,$folder.$final_file))
          {
              $attachment=$final_file;
          }
      $notireciver = 'Admin';
      $sqlnoti="insert into notification (notiuser,notireciver,notitype) values (:notiuser,:notireciver,:notitype)";
      $querynoti = $dbh->prepare($sqlnoti);
      $querynoti-> bindParam(':notiuser', $user, PDO::PARAM_STR);
      $querynoti-> bindParam(':notireciver', $notireciver, PDO::PARAM_STR);
      $querynoti-> bindParam(':notitype', $notitype, PDO::PARAM_STR);
      $querynoti->execute();
    //   feedback (sender, reciver, title,feedbackdata,attachment) values (:user,:reciver,:title,:description,:attachment)";
	$sql="UPDATE projects SET title=(:title), feedbackdata=(:description), attachment=(:attachment) WHERE id=(:idedit)";
	$query = $dbh->prepare($sql);
	
	$query-> bindParam(':title', $title, PDO::PARAM_STR);
	$query-> bindParam(':description', $description, PDO::PARAM_STR);
	$query-> bindParam(':attachment', $attachment, PDO::PARAM_STR);
    $query-> bindParam(':idedit', $idedit, PDO::PARAM_STR);
    $query->execute(); 
	$msg="Project Updated Successfully";
}    
?>

<!doctype html>
<html lang="en" class="no-js">

<head>	
	<title>Edit Project</title>
<?php	include('includes/headermain.php'); ?>
</head>

<body>
<?php
		$sql = "SELECT * from projects where id = :editid";
		$query = $dbh -> prepare($sql);
		$query->bindParam(':editid',$editid,PDO::PARAM_INT);
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
                            <h3>Edit Project :  <?php echo htmlentities($result->title); ?></h3>
								<div class="panel panel-default">
									<div class="panel-heading">Edit Project</div>
<?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>

<div class="panel-body">
<form method="post" class="form-horizontal" enctype="multipart/form-data">

<div class="form-group">
    <!-- <input type="hidden" name="user" value="<?php echo htmlentities($result->email); ?>"> -->
	<label class="col-sm-2 control-label">Title<span style="color:red">*</span></label>
	<div class="col-sm-4">
	<input type="text" name="title" class="form-control" value =" <?php echo htmlentities($result->title); ?>"required>
	</div>

	<label class="col-sm-2 control-label">Attachment</label>
	<div class="col-sm-4">
	<input type="file" name="attachment" class="form-control" >
	</div>
</div>

<div class="form-group">
	<label class="col-sm-2 control-label">Description<span style="color:red">*</span></label>
	<div class="col-sm-10">
	<textarea class="form-control" rows="5" name="description" value =" <?php echo htmlentities($result->feedbackdata);?>" required ></textarea>
	</div>
</div>
<div class="form-group">
	<div class="col-sm-8 col-sm-offset-2">
    <input type="hidden" name="attachment" value="<?php echo htmlentities($result->attachment);?>" >
		<input type="hidden" name="idedit" value="<?php echo htmlentities($result->id);?>" >
</div>
</div>

<div class="form-group">
	<div class="col-sm-8 col-sm-offset-2">
		<button class="btn btn-primary" name="submit" type="submit">Save Changes</button>
	</div>
</div>

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