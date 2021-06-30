<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
    if(isset($_GET['del']) && isset($_GET['name']))
    {
    $id=$_GET['del'];
    $title=$_GET['name'];
    
    
    $sql = "delete from projects WHERE id=:id";
    $query = $dbh->prepare($sql);
    $query -> bindParam(':id',$id, PDO::PARAM_STR);
    $query -> execute();
    
    $sql2 = "insert into deletedprojects (project) values (:title)";
    $query2 = $dbh->prepare($sql2);
    $query2 -> bindParam(':title',$title, PDO::PARAM_STR);
    $query2 -> execute();

$notitype='Deleted a project';
$reciver='Admin';
$sender=$_SESSION['alogin'];

$sqlnoti="insert into notification (notiuser,notireciver,notitype) values (:notiuser,:notireciver,:notitype)";
$querynoti = $dbh->prepare($sqlnoti);
$querynoti-> bindParam(':notiuser', $sender, PDO::PARAM_STR);
$querynoti-> bindParam(':notireciver',$reciver, PDO::PARAM_STR);
$querynoti-> bindParam(':notitype', $notitype, PDO::PARAM_STR);
$querynoti->execute();
    
    $msg="Data Deleted successfully";
    }
 ?>

<!doctype html>
<html lang="en" class="no-js">

<head>	
	<title>Manage Projects</title>
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

						<h2 class="page-title">Manage Project</h2>

						<!-- Zero Configuration Table -->
						<div class="panel panel-default">
							<div class="panel-heading">List Users</div>
							<div class="panel-body">
							<?php if($error){?><div class="errorWrap" id="msgshow"><?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap" id="msgshow"><?php echo htmlentities($msg); ?> </div><?php }?>
				<div style="overflow-x:auto;">
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%" >
									<thead>
										<tr>
										       <th>Sr No.</th>
												<!-- <th>User Email</th> -->
												<th>Title</th>
                                                <th>Project description</th>
                                                <th>Attachment</th>
											    <th>Action</th>	
										</tr>
									</thead>
									
									<tbody>

<?php 
$sender = $_SESSION['alogin'];
$sql = "SELECT * from  projects where sender = (:sender)";
$query = $dbh -> prepare($sql);
$query-> bindParam(':sender', $sender, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{				?>	
										<tr>
											<td><?php echo htmlentities($cnt);?></td>
                                            <!-- <td><?php echo htmlentities($result->sender);?></td> -->
											<td><?php echo htmlentities($result->title);?></td>
                                            <td><?php echo htmlentities($result->feedbackdata);?></td>
                                            <td><a href="../project/attachment/<?php echo htmlentities($result->attachment);?>" ><?php echo htmlentities($result->attachment);?></a></td>
											
<td>
<a href="editproject.php?edit=<?php echo $result->id;?>" onclick="return confirm('Do you want to Edit');">&nbsp; <i class="fa fa-pencil"></i></a>&nbsp;&nbsp;

<a href="trackproject.php?del=<?php echo $result->id;?>&name=<?php echo htmlentities($result->title);?>" onclick="return confirm('Do you want to Delete');"><i class="fa fa-trash" style="color:red"></i></a>&nbsp;&nbsp;
</td>
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
