<?php 

	include 'config1.php';
	$uid = $_SESSION['uid'];
?>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
		<script type="text/javascript" src="js/datatables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>            
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />  

<div class="container">
  <div class="row">
    <div class="col-md-12 col-lg-12">
			<h1 class="page-header">Alumnos</h1>  
		</div>
	</div>
	
		<div class="col-lg-12">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h3 class="panel-title">Alumnos</h3>
				</div>
				<div class="panel-body">
					<table id="students_data" class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Asigantura</th>
							<th>Alumno</th>
							<th>Grupo</th>
							<th>Grado</th>
							
							
							
							
						</tr>
					</thead>
					<tbody>
						<?php
							$outputData = '';
							
							$studentQuery = "SELECT DISTINCT sname, lastname, second_lastname, groupe, login, name, grade FROM `user_subject` INNER JOIN student_subject INNER JOIN student  INNER JOIN subject WHERE user_subject.id = student_subject.id AND student_subject.sid = student.sid AND user_subject.uid = $uid AND user_subject.id = subject.id ORDER BY name";
							
							$stmtStudent = $conn->prepare($studentQuery); 
							$stmtStudent->execute();
							$resultStudent = $stmtStudent->fetchAll(PDO::FETCH_ASSOC); 
							
							for($i = 0; $i<count($resultStudent); $i++) {
								$outputData .= "<tr>";
								$outputData .= "<td>" . $resultStudent[$i]['name'] . "</td>";
								$outputData .= "<td>" . $resultStudent[$i]['sname'] ." ". $resultStudent[$i]['lastname'] ." " . $resultStudent[$i]['second_lastname'] . "</td>";
								$outputData .= "<td>" . $resultStudent[$i]['groupe'] ."</td>";
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
<script>
$(document).ready(function(){  
      $('#students_data').DataTable();  
 }); 

</script>