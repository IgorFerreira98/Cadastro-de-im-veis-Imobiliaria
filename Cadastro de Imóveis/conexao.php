<?php
$host='localhost';
$base='db_imobiliaria';
$user='root';
$senha='';

$conexao = mysqli_connect($host,$user,$senha,$base);
    if(!$conexao) {
        die("Houve um erro: ".mysqli_connect_error());
    }
?>
