<?php
	session_start();
?>

<?php if (isset($_SESSION['islogin']) && $_SESSION['islogin'] == 1) : ?>
	<nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
			<ul class="nav sidebar-nav">
					<li class="sidebar-brand">

							<a href="index.php">
						
							</a>
					</li>
					<li>
							<a href="index.php?page=dashboard"><i class="glyphicon glyphicon-home"></i> Inicio</a>
					</li>
					<li>
							<a href="index.php"><i class="glyphicon glyphicon-calendar"></i> Asistencia</a>
					</li>
					<li>
							<a href="index.php?page=studentinfo"><i class="glyphicon glyphicon-user"></i> Lista de Alumnos</a>
					</li>
					<li>
							<a href="index.php?page=reports"><i class="glyphicon glyphicon-duplicate"></i> Reportes</a>
					</li>
					<li>
							<a href="index.php?page=logout"><i class="glyphicon glyphicon-off"></i> Salir</a>
					</li>
			</ul>
	</nav>
<?php else: ?>
	<nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
			<ul class="nav sidebar-nav">
					<li class="sidebar-brand">
							<a href="index.php">
								
							</a>
					</li>
					<li>
							<a href="index.php">Login</a>
					</li>
					<li>
							<a href="index.php">Profesores</a>
					</li>
					<li>
							<a href="index.php">Alumnos</a>
					</li>
			</ul>
	</nav>
<?php endif; ?>
