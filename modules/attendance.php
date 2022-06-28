<?php 
	include 'config1.php';
	$updateFlag = 0;
?>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
		<script type="text/javascript" src="js/datatables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>            
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />  


<div class="container">
  <div class="row ">
    <div class="col-md-12 col-lg-12">
			<h1 class="page-header">Asistencias</h1>  
		</div>
	</div>
	<div class="row text-center">
		<div class="col-md-12 col-lg-12">
			<form action="index.php" method="get" class="form-inline" id="subjectForm" data-toggle="validator">
				<div class="form-group">
					<label for="select" class="control-label">Asignatura</label>
					<?php
											
											$query_subject = "SELECT subject.name, subject.id from subject 
											INNER JOIN user_subject WHERE user_subject.id = subject.id AND user_subject.uid = {$_SESSION['uid']}  ORDER BY subject.name";
											$sub=$conn->query($query_subject);
											$rsub=$sub->fetchAll(PDO::FETCH_ASSOC);
											echo "<select name='subject' class='form-control' required='required'>";
											for($i = 0; $i<count($rsub); $i++)
											{
												if ($_GET['subject'] == $rsub[$i]['id']) {
													echo"<option value='". $rsub[$i]['id']."' selected='selected'>".$rsub[$i]['name']."</option>";
												}
												else {
													echo"<option value='". $rsub[$i]['id']."'>".$rsub[$i]['name']."</option>";
												}
											}
											echo"</select>";
					?>									
				</div>
	
				<div class="form-group">
					<label for="select" class="control-label">Grupo</label>
					<?php
											
						$query_groupe = "SELECT groupe.name, groupe.gid from groupe
						INNER JOIN student_subject WHERE student_subject.gid = groupe.gid  GROUP BY groupe.name";
						$sub=$conn->query($query_groupe);
						$rsub=$sub->fetchAll(PDO::FETCH_ASSOC);
						echo "<select name='groupe' class='form-control' required='required'>";
						for($i = 0; $i<count($rsub); $i++)
						{
							if ($_GET['groupe'] == $rsub[$i]['gid']) {
								echo"<option value='". $rsub[$i]['gid']."' selected='selected'>".$rsub[$i]['name']."</option>";
							}
							else {
								echo"<option value='". $rsub[$i]['gid']."'>".$rsub[$i]['name']."</option>";
							}
						}
						echo"</select>";
					?>									
				</div>

				
				<div class="form-group" data-provide="datepicker">
					<label for="select" class="control-label">Fecha:</label>
					<input type="date" class="form-control" name="date" value="<?php print isset($_GET['date']) ? $_GET['date'] : ''; ?>" required>
				</div>

				<button type="submit" class="btn btn-success" style='border-radius:0%;' name="sbt_stn">Filtrar</button>
			</form>
				


			<?php
				if(isset($_GET['date']) && isset($_GET['subject']) && isset($_GET['groupe'])) :
			?>
			
			<?php 
				$todayTime = time();
				$submittedDate = strtotime($_GET['date']);
				if ($submittedDate <= $todayTime) :
			?>
			<form action="index.php" method="post">
			
			<div class="margin-top-bottom-medium">
				<button type="submit" class="btn btn-success btn-block" name="sbt_top">Guardar</button>
			</div>
			<div class="table-responsive">
			<table id="students_data" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th class="text-center">Login</th>
						<th class="text-center">Alumno</th>
						<th class="text-center">Grupo</th>
						<th class="text-center"><input type="checkbox" class="chk-head" /> Todos presentes</th>
					</tr>
				</thead>

				<?php
					 $dat = $_GET['date'];
					 $ddate = strtotime($dat);
					 $sub=$_GET['subject'];
					 $gro=$_GET['groupe'];
					$que= "SELECT sid, id, aid, ispresent, gid  from attendance  WHERE date  =$ddate
					AND id=$sub AND gid =$gro ORDER BY sid";
					$ret=$conn->query($que);
					$attData=$ret->fetchAll(PDO::FETCH_ASSOC);
					
					if(count($attData))
					{
						$updateFlag=1;
					}
					else{
						$updateFlag=0;

					}

					$qu = "SELECT student.sid, student.sname, student.lastname, student.second_lastname, student.login, student.groupe from student 
					INNER JOIN student_subject WHERE student.sid = student_subject.sid AND student_subject.gid  = {$_GET['groupe']} AND student_subject.id  = {$_GET['subject']} ORDER BY lastname";
					$stu=$conn->query($qu);
					$rstu=$stu->fetchAll(PDO::FETCH_ASSOC);

					
					echo"<tbody>";
					for($i = 0; $i<count($rstu); $i++)
					{
						echo"<tr>";

						if($updateFlag) {
							echo"<td>".$rstu[$i]['login']."<input type='hidden' name='st_sid[]' value='" . $rstu[$i]['sid'] . "'>" 
							."<input type='hidden' name='att_id[]' value='" . $attData[$i]['aid'] . "'>". "<input type='hidden' name='att_gid[]' value='" . $attData[$i]['gid'] . "'>". "</td>";
							echo"<td>".$rstu[$i]['sname']." ".$rstu[$i]['lastname']." ".$rstu[$i]['second_lastname']."</td>";
							echo"<td>".$rstu[$i]['groupe']."</td>";

							
								if(($rstu[$i]['sid'] ==  $attData[$i]['sid']) && ($attData[$i]['ispresent']))
								{

									echo "<td><input class='chk-present' checked type='checkbox' name='chbox[]' value='" . $rstu[$i]['sid'] . "'></td>";
								}
								else
								{
									echo "<td><input class='chk-present' type='checkbox' name='chbox[]' value='" . $rstu[$i]['sid'] . "'></td>";
								}
							}
							else {
								echo"<td>".$rstu[$i]['login']."<input type='hidden' name='st_sid[]' value='" . $rstu[$i]['sid'] . "'></td>";
								echo"<td>".$rstu[$i]['sname']." ".$rstu[$i]['lastname']." ".$rstu[$i]['second_lastname']."</td>";
								echo"<td>".$rstu[$i]['groupe']."</td>";
								echo"<td><input class='chk-present' type='checkbox' name='chbox[]' value='" . $rstu[$i]['sid'] . "'></td>";	
							}
						
							
						echo"</tr>";
					}
					echo"</tbody>";
				
				?>
			</table> 

			<?php if($updateFlag) : ?>
				<input type="hidden" name="updateData" value="1">
			<?php else: ?>
				<input type="hidden" name="updateData" value="0">
			<?php endif; ?>

			<input type="hidden" name="date" value="<?php print isset($_GET['date']) ? $_GET['date'] : ''; ?>">
			<input type="hidden" name="subject" value="<?php print isset($_GET['subject']) ? $_GET['subject'] : ''; ?>">
			<input type="hidden" name="groupe" value="<?php print isset($_GET['groupe']) ? $_GET['groupe'] : ''; ?>">
			<button type="submit" class="btn btn-success btn-block" name="sbt_top"> Guardar</button>
			
			</form>
			
			<?php
				else :
			?>
			
			<p>&nbsp;</p>
			<div class="alert alert-dismissible alert-success">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<strong>Error</strong> No se puede realizar registros futuros
			</div>	
			
			<?php
				endif;
			?>
			
			<?php endif;?>
			
			<?php

				if (isset($_POST['sbt_top'])) {
					if(isset($_POST['updateData']) && ($_POST['updateData'] == 1) ) {
							
						
					
							$id = $_POST['subject'];
							$gid = $_POST['groupe'];
							$uid = $_SESSION['uid'];
							$p = 0;
							$st_sid =  $_POST['st_sid'];
							$attt_aid =  $_POST['att_id'];
							$ispresent = array();
							if (isset($_POST['chbox'])) {
								$ispresent =  $_POST['chbox'];	
							}
							
							for($j = 0; $j < count($st_sid); $j++)
							{
									

								$stmtInsert = $conn->prepare("UPDATE attendance SET ispresent = :isMarked WHERE aid = :aid"); 
														
								if (count($ispresent)) {
									$p = (in_array($st_sid[$j], $ispresent)) ? 1 : 0;	
								}
								
								$stmtInsert->bindParam(':isMarked', $p);
								$stmtInsert->bindParam(':aid', $attt_aid[$j]); 
								$stmtInsert->execute();
								
							}		
						echo '<p>&nbsp;</p><div class="alert alert-dismissible alert-success">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>Asistencia guardada.
              </div>';	

					}
					else {
						
						
							$date = $_POST['date'];
						    $tstamp = strtotime($date);
							$id = $_POST['subject'];
							$uid = $_SESSION['uid'];
							$gid = $_POST['groupe'];
							$p = 0;
							$st_sid =  $_POST['st_sid'];
							$ispresent = array();
							if (isset($_POST['chbox'])) {
								$ispresent =  $_POST['chbox'];	
							}
							
							for($j = 0; $j < count($st_sid); $j++)
							{
									
									$stmtInsert = $conn->prepare("INSERT INTO attendance (sid, date, ispresent, uid, id, gid) 
								VALUES (:sid, :date, :ispresent, :uid, :id, :gid)");
									
									if (count($ispresent)) {
										$p = (in_array($st_sid[$j], $ispresent)) ? 1 : 0;	
									}
									

									$stmtInsert->bindParam(':sid', $st_sid[$j]);
									$stmtInsert->bindParam(':date', $tstamp);
									$stmtInsert->bindParam(':ispresent', $p);
									$stmtInsert->bindParam(':uid', $uid);
									$stmtInsert->bindParam(':id', $id); 
									$stmtInsert->bindParam(':gid', $gid); 
									$stmtInsert->execute();
							
						}
						echo '<p>&nbsp;</p><div class="alert alert-dismissible alert-success">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>Asistencia guardada.
              </div>';	
					}
				}			
			?>
		</div>
	</div>
</div>
			</body>
			</html>
<script>
$(document).ready(function(){  
      $('#students_data').DataTable();  
 }); 

	$('#subjectForm').validator();	

</script>