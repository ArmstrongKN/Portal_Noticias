<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Notícias Fórmula 1</title>
    <style>
        .container {
            display: flex;
            justify-content: space-around;
        }

        .noticia {
            width: 45%;
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
        }
    </style>

</head>
<body>

<nav class="navbar" style="background-color: #e3f2fd;">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><img src="imagens/jornal.png" widht=16 height=30>  O seu portal de Noticias</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login.php">Entrar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Pricing</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
 

<h1>Notícias da Fórmula 1</h1>

 

    <div class="container">
        <?php
        // Array simulando notícias da Fórmula 1
        $noticias_formula1 = array(
            "Lewis Hamilton vence o Grande Prêmio de Monza.",
            "Max Verstappen conquista pole position no Grande Prêmio do Brasil.",
            "Ferrari anuncia novo piloto para a próxima temporada.",
            "Mercedes revela melhorias no motor para o próximo campeonato.",
            "Red Bull Racing anuncia renovação de contrato com Sergio Perez."
        );

        // Exibe as notícias na página
        foreach ($noticias_formula1 as $noticia) {
            echo '<div class="noticia">';
            echo '<h2>' . $noticia . '</h2>';
            echo '<p>Descrição da notícia sobre ' . substr($noticia, 0, strpos($noticia, " ")) . '...</p>';
            echo '</div>';
        }
        ?>
    </div>
    <div class="container">
        <?php
        // Array simulando notícias da Fórmula 1
        $noticias_formula1 = array(
            "Lewis Hamilton vence o Grande Prêmio de Monza.",
            "Max Verstappen conquista pole position no Grande Prêmio do Brasil.",
            "Ferrari anuncia novo piloto para a próxima temporada.",
            "Mercedes revela melhorias no motor para o próximo campeonato.",
            "Red Bull Racing anuncia renovação de contrato com Sergio Perez."
        );

        // Exibe as notícias na página
        foreach ($noticias_formula1 as $noticia) {
            echo '<div class="noticia">';
            echo '<h2>' . $noticia . '</h2>';
            echo '<p>Descrição da notícia sobre ' . substr($noticia, 0, strpos($noticia, " ")) . '...</p>';
            echo '</div>';
        }
        ?>
    </div>

    <div class="container">
        <?php
        // Array simulando notícias da Fórmula 1
        $noticias_formula1 = array(
            "Lewis Hamilton vence o Grande Prêmio de Monza.",
            "Red Bull Racing anuncia renovação de contrato com Sergio Perez."
        );

        // Exibe as notícias na página
        foreach ($noticias_formula1 as $noticia) {
            echo '<div class="noticia">';
            echo '<h2>' . $noticia . '</h2>';
            echo '<p>Descrição da notícia sobre ' . substr($noticia, 0, strpos($noticia, " ")) . '...</p>';
            echo '</div>';
        }
        ?>
    </div>
      <div class="container">
          <div class="noticia">
              <h2>Lewis Hamilton vence o Grande Prêmio de Monza.</h2>
              <p>Descrição da notícia sobre a vitória de Lewis Hamilton em Monza...</p>
          </div>

          <div class="noticia">
              <h2>Max Verstappen conquista pole position no Grande Prêmio do Brasil.</h2>
              <p>Descrição da notícia sobre a pole position de Max Verstappen no Brasil...</p>
          </div>
      </div>

      <div class="container">
          <div class="noticia">
              <h2>Ferrari anuncia novo piloto para a próxima temporada..</h2>
              <p>Descrição da notícia sobre a vitória de Lewis Hamilton em Monza...</p>
          </div>

          <div class="noticia">
              <h2>Mercedes revela melhorias no motor para o próximo campeonato.</h2>
              <p>Descrição da notícia sobre a pole position de Max Verstappen no Brasil...</p>
          </div>
      </div>

      <div class="container">
          <div class="noticia">
              <h2>Red Bull Racing anuncia renovação de contrato com Sergio Perez.</h2>
              <p>Descrição da notícia sobre a vitória de Lewis Hamilton em Monza...</p>
          </div>

          <div class="noticia">
              <h2>Max Verstappen conquista pole position no Grande Prêmio do Brasil.</h2>
              <p>Descrição da notícia sobre a pole position de Max Verstappen no Brasil...</p>
          </div>
      </div>
</div>
<body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>