
 
<?php
	session_start();
?>
 

<!DOCTYPE html>
<html lang="pt">
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
    </head>
    <body role="image" background="./images/f1_capa">
        <div class="container">
			
  
   <!-- coluna de Espacamento  a esquerda-->
   
	    
        <div class="col-xs-12  col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4  col-sm-6 col-sm-offset-3" >
			<br>
			<section class="main"> 
				<form class="form-2" method="post" action="valida-login.php" >
				 	<div class="panel panel-table">
				 		<p class="clearfix">	
							<div  class="panel-primary panel-heading text-center" ><H2 class="panel-title "  >Portal de Notícias da F1</H2>
						</p>

					</div>
					<div class="panel-body"> 
					<div align="center">
					<p class="clearfix">
						<img src="./imagens/f1_capa.jpg" width=300 class="img-responsive" id="logo.jpg" alt="responsive image">
					</p>
					</div>
					<p class="clearfix" style="color: red">
					<?php
                        if(isset($_SESSION['loginErro'])){
                            echo $_SESSION['loginErro'];
                            unset($_SESSION['loginErro']);
                        }
                    ?>
                   
                    </p>
					<p class="clearfix">
						<input requires autofocus name="usuario" type="imputuser" class="form-control" class="td" size="30" maxlength="25" id="username" placeholder=" &#128272;Usuario"/>
					</p>
					
					<p class="clearfix">
						<td><input name="senha" type="password" class="form-control" class="td" size="30" maxlength="25" placeholder=" &#128272;Senha"/>
					</p>
					<br>
					<p class="clearfix">   
						<input class="btn btn-lg btn-primary " class="st" id="bt" type="submit" name="Submit" value="Entrar" />
					</p>
					 
					    <a href="cadastro.php"><div align="right">Criar conta</div></a>
						<a href="cadastro.php"><div align="right">Esqueci a senha</div></a>
					</div>
				</form>​​
			</section>
			</div>
			</div>
			</div>
        </div>
		
    </body>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</html>



 