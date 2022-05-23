
<div class="container">
  <div class="row">
    <div class="col-lg-6">
      <h3 class="text-center">Profesor</h3>
		<?php if(isset($_GET['invalid'])) : ?>
				<div class="form-group alert alert-dismissible alert-danger">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<strong>Se ha producido un error</strong> Usuario o contraseña inválidos.
				</div>
			
		<?php endif; ?>
	
      <form class="form-horizontal" id="loginForm" action="modules/verify.php" method="post" data-toggle="validator">
				<div class="form-group">
          <label for="inputEmail3" class="control-label">Usuario</label>
          <input type="text" class="form-control" id="inputEmail3" name="name" maxlength="16" required>
        </div>
        <div class="form-group">
          <label for="inputPassword3" class="control-label">Contraseña</label>
          <input type="password" class="form-control" id="inputPassword3"  name="pass" maxlength="16" required>
        </div>
        <div class="form-group">
          <input type="submit" name="submit" class="btn btn-success btn-block" style="border-radius:0%" value="Acceder">
        </div>
      </form>
   
    </div>


    <div class="col-lg-6">
      <h3 class="text-center">Estudiante</h3>
		<?php if(isset($_GET['student'])) : ?>
			
				<div class="form-group alert alert-dismissible alert-danger">
					<button type="button" class="close" data-dismiss="alert">×</button>
					<strong>Se ha producido un error</strong> Usuario o contraseña inválidos.
				</div>
			
		<?php endif; ?>
	
    <div class="col-md-8 col-md-offset-3 col-lg-8">
      <form class="form-horizontal" action="index.php" method="post" id="studentForm" data-toggle="validator">
        <div class="form-group">
          <label for="login" class="control-label">Número</label>
          <input type="number" class="form-control" id="login" maxlength="6" name="login" required>
        </div>
				
				<div class="form-group">
					<input type="submit" name="submit" class="btn btn-danger btn-block" style="border-radius:0%" value="Acceder">
				</div>
				
				<input type="hidden" name="student" value="y" />
      </form>
    </div> 
    </div>
  </div>

  <hr  />

</div>

<script>
	$('#loginForm').validator();
	$('#studentForm').validator();
</script>

