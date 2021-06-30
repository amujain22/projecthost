<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{   
?>

<!doctype html>
<html lang="en" class="no-js">

<head>
<?php	include('includes/headermain.php'); ?>	
	<title>Notifications</title>
	</head>

<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
	<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h3 class="page-title">Notifications</h3>
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Notification</div>
									   <div class="panel-body">
<?php 
$reciver = $_SESSION['alogin'];
$sql = "SELECT * from  notification where notireciver = (:reciver) order by time DESC";
$query = $dbh -> prepare($sql);
$query-> bindParam(':reciver', $reciver, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{				?>	
       <a href ="messages.php"> <h5 style="background:#ededed;padding:20px;"><i class="fa fa-bell text-primary"></i>&nbsp;&nbsp;<b class="text-primary">
	   <?php echo htmlentities($result->time);?></b>
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo htmlentities($result->notiuser);?> 
		 <?php echo htmlentities($result->notitype);?></h5> </a>
                       <?php $cnt=$cnt+1; }} ?>
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