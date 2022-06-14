<?php
	include 'config1.php';
	
	$present=0;
	$absent=0;
	$nottaken=0;
	$ttaken=0;
	$strno=$_POST['rollno'];
	
	// Student data collection
	$sql = "SELECT name, lastname, login, sid,rollno FROM student where $strno=rollno";
	$stmt = $conn->prepare($sql); 
	$stmt->execute();
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC); 
?>

<?php if (count($result)) : ?>
	
		<?php
			$tempnm=$result[0]['login'];
			$tempid=$result[0]['sid'];
			$rollno=$result[0]['rollno'];
		?>

		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<h1 class="page-header"><?php print $tempnm; ?> - Asistencias</h1>  
				</div>
			</div>
			<div class="row">
			<div class="col-md-12 col-lg-12">
			<?php
				if ($_POST['student'] === 'y' && isset($_POST['rollno'])) {
			
				 $sq= "SELECT DISTINCT date FROM attendance ORDER BY date";
				 $stmt2 = $conn->prepare($sq);
				 $stmt2->execute();
					$result2 = $stmt2->fetchAll(PDO::FETCH_ASSOC); 
											 
				echo "<table class='table table-striped table-hover reports-table'>";
					 echo"<tr><th>Asignatura</th>";
						for($k=0;$k<count($result2);$k++)
						{
							$tmdat=$result2[$k]['date'];							
						}
							
						echo"<th>Total</th><th colspan='2'>Porcentaje</th></tr>";

					 $ssql = "SELECT id FROM student_subject where $tempid=sid";
					 $stmt3 = $conn->prepare($ssql);
				 $stmt3->execute();
					 $result3 = $stmt3->fetchAll(PDO::FETCH_ASSOC);	
					 
					 for($nosub=0;$nosub<count($result3);$nosub++)
					 {
						$dpresent=0;
					$dabsent=0;
					$dnottaken=0;
					$dttaken=0;
						echo"<tr>";
						$subid=$result3[$nosub]['id'];
						$sqql = "SELECT name FROM subject where $subid=id";
						 $stmt4 = $conn->prepare($sqql);
					$stmt4->execute();
						$result4 = $stmt4->fetchAll(PDO::FETCH_ASSOC);	
						$sub=$result4[0]['name'];
						echo "<td><h6>$sub</h6></td>";
						for($i=0;$i<count($result2);$i++)
						 {
							$tmdat=$result2[$i]['date'];
							$sql1= "SELECT ispresent FROM attendance where sid=$tempid AND id=$subid AND date=$tmdat ORDER BY date";
							$stmt1 = $conn->prepare($sql1);	
							$stmt1->execute();
						$result1 = $stmt1->fetchAll(PDO::FETCH_ASSOC);	 
						$ttaken++;
						$dttaken++;
						 if (empty($result1)) {
								$nottaken++;
								$dnottaken++;
						 }else
						 {
							$res=$result1[0]['ispresent'];
							if($res==1)
							{
								
								$present++;
								$dpresent++;	
							}
								else
								{
									
									$absent++;
									$dabsent++;
								}
						 }
						
						 }
							$dtlec=$dttaken-$dnottaken;
							if($dtlec!=0)
								$dtper=round((100*$dpresent)/$dtlec, 2);
							else
								$dtper=0;
							echo"<td><strong>".$dpresent."</strong>/".$dtlec."</td>";
							echo"<td>".$dtper."&nbsp;%</td>";
							echo"</tr>";
					
					} 	 
					echo "</table>";
					$tlec=$ttaken-$nottaken;
					$tper=(100*$present)/$tlec;
					
							
				}
				else {
					header("location:index.php?student=invalid");
				}
		?>
				</div>
			</div>
		</div>
<?php else: ?>
	<?php header("location:index.php?student=invalid"); ?>
<?php endif; ?>