<?php
    include("conexao.php");

    $endereco = $_POST['endereco'];
    $cidade = $_POST['cidade'];
    $estado = $_POST['estado'];
    $valor = $_POST['valor'];


    $sql = "INSERT INTO tb_imovel(endereco, cidade, estado, valor) VALUES ('$endereco', '$cidade', '$estado', '$valor')";


    

    if(mysqli_query($conexao,$sql)){
            
        echo "Imóvel Cadastrado com Sucesso" ."<br><br>". "" ;
    }else{
        echo "Erro".mysqli_connect_error($conexao);
    }

    echo "<a href=\"index.html\">RETORNAR A PÁGINA DE CADASTRO</a>";

    @$pagina = $_GET['a'];

    if(isset($pagina)){
    include $pagina;
    }
    
    mysqli_close($conexao);


?>