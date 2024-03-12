<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="pics/logo.jpg" type="image/x-icon"> 
        <title>Portal de Notícias da F1</title>
        <meta name="description" content="Login" />
        <meta name="keywords" content="Login" />
        <meta name="author" content="Haggy Tomas Manjolo" />
        
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="bootstrap/css/theme.css" rel="stylesheet">
	    <link href="bootstrap/manjolo.css" rel="stylesheet">
        <script src="bootstrap/js/ie-emulation-modes-warning.js"></script>
        <script src="js/modernizr.custom.63321.js"></script>
		<style>
		</style>
    <title>Document</title>
</head>
<body>
 

 
            <?php
				if(isset($_SESSION['mensagem'])){
					echo $_SESSION['mensagem'];
					unset($_SESSION['mensagem']);
				}
			?>
			
<div class="col-sm-9 col-md-9">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">Cadastrar Usuário</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
			<a href='listarUsuarios.php'><button type='button' class='btn btn-sm btn-info'><span class="glyphicon glyphicon-list-alt"></span> Listar Usuário</button></a>
		</div>
	</div>
	</div>

       	<div class="row">
        <div class="col-md-12">
          <form class="form-horizontal"  method="POST" action="Usuario-processa-cadastro.php">
          <div class="form-group">
				<div class="col-sm-9">
				</div>
			  </div>
		  		
			<div class="col-sm-12">
			  <div class="form-group">
				<div class="col-sm-4">
				Nome completo:
				  <input type="text" class="input-sm form-control" name="nome" placeholder="Nome Completo" required="" autofocus="">
				</div>
				<div class="col-sm-4">
				Usuário:
				  <input type="text" class="input sm form-control" name="usuario" placeholder="Usuário" required="">
				</div>
				
				<div class="col-sm-4">
				Nivel de Acesso:
				  <select class="input sm form-control" name="nivel_de_acesso" required="">
				  	<option value="">Selecione aqui</option>
					   <option value="1">Assinatura Basica</option>
					  <option value="2">Assinatura Premium</option>
					</select>
				</div>
			  </div>
			</div>
			  
			  <div class="col-sm-12">
					<div class="form-group">
						Senha:
						<input type="password" class="input sm form-control" name="senha" placeholder="Senha" required="">
					</div>
					<div class="col-sm-12">
						Confirmar senha:
						<input type="password" class="input sm form-control" name="confirmacao" placeholder="Confirme a Senha" required="">
					</div>
			  </div>
		 
			  <div class="col-sm-12">
			    <div class="form-group">
					<div class="col-sm-12 col col-xs-12 text-right">
					<button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-floppy-disk"></span> Cadastrar</button>
					</div>
			    </div>
			  </di>
			</form>
        </div>
		</div>
    </div><!-- /container -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>