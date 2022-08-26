<!DOCTYPE html>
<html lang="pt-br">
<head text-align:"center">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="charts.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
         ['Descrição','Valor'],
         <?php
            include ("conexao.php");
            $sql = "SELECT * from tb_imovel";
            $consulta = mysqli_query($conexao,$sql);
            
            while($dados=mysqli_fetch_array($consulta))
            {
                $cidade=$dados['cidade'];
                $valor=$dados['valor']; ?>
                ['<?php echo $cidade ?>',<?php echo $valor ?>],
                <?php } ?>

        ]);
            

        var options = {
          title: 'PREÇOS DOS IMÓVEIS E LOCALIZAÇÃO'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
    <title>Gráfico Imóveis</title>
</head>
<body>
    <header>
      <h1>LOCALIZAÇÃO E VALORES DOS IMÓVEIS</h1>
      <hr>
    </header>

    <div id="piechart" style="width: 900px; height: 500px; margin-left:350px;"></div>

    <a href="index.html"><button type="button" class="btn btn-primary" style="margin-left: 15px; margin-bottom:25px;" >Página Inicial</button></a>

</body>
</html>