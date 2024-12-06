<?php

include "conexao.php";

echo "<pre>";


$parts = parse_url($_SERVER['REQUEST_URI']);
parse_str($parts['query'], $query);
$id_agenda = $query['id_agenda'];
$data = $query['data'];
$id_usuario = $query['id_usuario'];
$servico = $query['servico'];
$sql_agendamento = "
    INSERT INTO agendamentos 
    (id_usuario, id_agenda, data, servico)
    VALUES
    ($id_usuario, $id_agenda, '$data', $servico)
";


if($conn->query($sql_agendamento)){
    header("Location: agendamento_feito.php?status=1");
}else{
    header("Location: agendamento_feito.php?status=1");
}

?>