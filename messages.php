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

 ?>

<!doctype html>
<html lang="en" class="no-js">

<head>	
	<title>Messages</title>
<?php	include('includes/headermain.php'); ?>
</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
		<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">

						<h2 class="page-title">Messages</h2>

						<!-- Zero Configuration Table -->
						<div class="panel panel-default">
							<div class="panel-heading">List Users</div>
							<div class="panel-body">
							<?php if($error){?><div class="errorWrap" id="msgshow"><?php  echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap" id="msgshow"><?php echo htmlentities($msg); ?> </div><?php }?>
					<div style="overflow-x:auto;">
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
									<thead>
										<tr>
										       <th>Sr No.</th>
											   <th>Time</th>
												<th>Sender</th>
												<th>Message</th>
										</tr>
									</thead>
									
									<tbody>

<?php 
$reciver = $_SESSION['alogin'];
$sql = "SELECT * from  projects where reciver = (:reciver) order by time DESC";
$query = $dbh -> prepare($sql);
$query-> bindParam(':reciver', $reciver, PDO::PARAM_STR);

$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{				?>	
										<tr>
											<td><?php echo htmlentities($cnt);?></td>
                                            <td><?php echo htmlentities($result->time);?></td>
                                            <td><?php echo htmlentities($result->sender);?></td>
											<td><a href="showmsg.php?id=<?php echo $result->id;?>"><?php echo htmlentities($result->feedbackdata);?></a></td>
										</tr>
										<?php $cnt=$cnt+1; }} ?>
										
									</tbody>
								</table>
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
