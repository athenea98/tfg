<?php include 'config1.php';?>
<?php
	$suid = $_SESSION['uid'];
?>

<div class="container">
  <div class="row">
    <div class="col-md-12 col-lg-12">
			<h1 class="page-header">Reportes</h1>  
		</div>
	</div>

	<div class="row text-center">
		<div class="col-md-12 col-lg-12">
			<form action="" method="GET" class="form-inline" data-toggle="validator">
				<div class="form-group ">
					<label for="select" class="control-label">Asignatura:</label>
					<?php
						$query_subject = "SELECT subject.name, subject.id from subject 
					INNER JOIN user_subject WHERE user_subject.id = subject.id AND user_subject.uid = $suid  ORDER BY subject.name";

					
			
						$sub=$conn->query($query_subject);
						$rsub=$sub->fetchAll(PDO::FETCH_ASSOC);
						$subnm=$rsub[0]['name'];
						$subid=$rsub[0]['id'];
						
					
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
						echo "</select><br>";
					?>
				</div>


				<div class="form-group">
         
        </div>
				
				<div class="form-group" data-provide="datepicker">
					<label for="select" class="control-label">Fecha de inicio:</label>
					<input type="date" name="sdate" class="form-control" value="<?php print isset($_GET['sdate']) ? $_GET['sdate'] : ''; ?>" required>
				</div>
				
				<div class="form-group" data-provide="datepicker">
					<label for="select" class="control-label">Fecha final:</label>
					<input type="date" name="edate" class="form-control" value="<?php print isset($_GET['edate']) ? $_GET['edate'] : ''; ?>" required>
				</div>
				<button type="submit" class="btn btn-success btn-sm" name="submit">Generar PDF</button>
				<input type="hidden" name="page" value="reports">
				<button type="submit" class="btn btn-success btn-sm" name="submit">Filtrar</button>
			</form>
		</div>	
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
		
			<p>&nbsp;</p>
			<div class="report-data">
			
			
			<?php

				
				$t=time();
			

				if(isset($_GET['submit']) && !empty($_GET['sdate']) && !empty($_GET['edate']) && ($_GET['edate'] > $_GET['sdate']) && ($_GET['sdate']<$t) && ($_GET['edate']<$t))
				{
					$sdat = $_GET['sdate'];
					$edat= $_GET['edate'];

					$selsub=$_GET['subject'];
					
					$sdate = strtotime($sdat);
					
					$edate = strtotime($edat);
					
				
				if(($sdate<$t) && ($edate<=$t) && ($edate >= $sdate))
				{
					
					$query_student = "SELECT student.sid, student.sname, student.lastname, student.second_lastname, student.login, grade, groupe from student INNER JOIN student_subject WHERE student.sid = student_subject.sid AND student_subject.id  = {$selsub}  ORDER BY student.grade and student.groupe";
					$stu=$conn->query($query_student);
					$rstu=$stu->fetchAll(PDO::FETCH_ASSOC);
				
					echo "<table class='table table-striped table-bordered reports-table'>";
					echo "<thead>";
					echo "<tr>";
					echo "<th>Login</th>";
					echo "<th>Alumno</th>";
					echo "<th>Grado</th>";
					echo "<th>Grupo</th>";
					for($k=$sdate;$k<=$edate;$k=$k+86400)
					{
						$thisDate = date( 'd-m-Y', $k );
						$weekday= date("l", $k );
						$normalized_weekday = strtolower($weekday);
						if(($normalized_weekday!="saturday") && ($normalized_weekday!="sunday"))
						{
							echo "<th>".$thisDate."</th>";
						}
					}
					echo "<th>Presente/Total</th>";
					echo "<th>Porcentaje</th>";;
					echo "</tr>";
					echo "</thead>";
					echo "</tbody>";
					for($i=0;$i<count($rstu);$i++)
					{
						
						$present=0;
						$absent=0;
						$totlec=0;
						$perc=0;
						echo"<tr><td>".$rstu[$i]['login']."</td>";
						echo "<td>".$rstu[$i]['sname']." ".$rstu[$i]['lastname']." ".$rstu[$i]['second_lastname']."</td>";
						echo"<td>".$rstu[$i]['grade']."</td>";
						echo"<td>".$rstu[$i]['groupe']."</td>";
						$dsid=$rstu[$i]['sid'];
						
						for($j=$sdate;$j<=$edate;$j=$j+86400)
						{
							 
							$weekday= date("l", $j );
							$currentDate = date('Y-m-d', $j);
							$normalized_weekday = strtolower($weekday);
							 if(($normalized_weekday!="saturday") && ($normalized_weekday!="sunday"))
							 {


								 $sql = "SELECT sid ,ispresent FROM attendance WHERE sid=$dsid AND
								 id=$selsub AND date=$j AND $suid=uid " ;
								$stmt = $conn->prepare($sql); 
								$stmt->execute();
								$result = $stmt->fetchAll(PDO::FETCH_ASSOC); 
								if(!empty($result)){
								
									$totlec++;
									if($result[0]['ispresent']==1)
									{
										$present++;
										echo"<td><span class='text-success'>Presente</span></td>";
									}
									else
									{
										echo"<td><span class='text-danger'>Falta</span></td>";
										$absent++;
									}
								}else
								{
									echo "<td><a href='index.php?subject=" . $selsub . "&date=" . $currentDate . "'><button type='button' class='btn btn-info btn-sm report_button' style='border-radius:0%'>Falta Asistencia</button></a></td>";
								}
							}
						}
						if($totlec!=0)
							$perc=round((($present*100)/$totlec), 2);
						else
							$perc=0;
						echo"<td><strong>".$present."</strong>/".$totlec."</td>";
						echo"<td>".$perc."&nbsp;%</td>";
						echo"</tr>";
						
					}		
					echo "</tbody>";
					echo "</table>";
				}else
				{
					print '<div class="alert alert-dismissible alert-danger">
                <button type="button" class="close" data-dismiss="alert">??</button>
                <strong>Error</strong> No se puede realizar registros futuros
              </div>';
				}

				}else{
				}

			?>
			</div>
		</div>
	</div>
</div>