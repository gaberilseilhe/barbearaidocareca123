<?php
include "conexao.php";

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Cria a query de exclusão
    $sql = "DELETE FROM abc WHERE id_usuario = $id";

    // Executa a query
    if ($conn->query($sql) === TRUE) {
        header("Location: lista_de_usuarios.php");
    } else {
        echo "Erro ao excluir ";
    }
}
// Fecha a conexão
$conn->close();
?>
