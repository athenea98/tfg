<?php 

	include 'config1.php';
	$uid = $_SESSION['uid'];
?>
<div class="container">
  <div class="row">
    <div class="col-md-12 col-lg-12">
			<h1 class="page-header">Alumnos</h1>  
		</div>
	</div>
	<div class="row">
		<div class="col-lg-4">
		
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Asignaturas</h3>
				</div>
				<div class="panel-body">
					
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
			</div>
		</div>
		<div class="col-lg-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Alumnos</h3>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>Login</th>
							<th>Nombre</th>
							<th>Grado</th>
							
						</tr>
					</thead>
					<tbody>
						<?php
							$outputData = '';
							$studentQuery = "SELECT DISTINCT name, lastname, second_lastname, login, grade FROM `user_subject` INNER JOIN student_subject INNER JOIN student WHERE user_subject.id = student_subject.id AND student_subject.sid = student.sid AND user_subject.uid = $uid ORDER BY lastname ";
							
							$stmtStudent = $conn->prepare($studentQuery); 
							$stmtStudent->execute();
							$resultStudent = $stmtStudent->fetchAll(PDO::FETCH_ASSOC); 
							
							for($i = 0; $i<count($resultStudent); $i++) {
								$outputData .= "<tr>";
								$outputData .= "<td>" . $resultStudent[$i]['login'] . "</td>";
								$outputData .= "<td>" . $resultStudent[$i]['name'] ." ". $resultStudent[$i]['lastname'] ." " . $resultStudent[$i]['second_lastname'] . "</td>";
								$outputData .= "<td>" . $resultStudent[$i]['grade'] ."</td>";
								$outputData .= "</tr>";
							}
							print $outputData;
							
						?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>