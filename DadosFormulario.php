<?php

include "conexao.php";

echo "<pre>";
print_r($_POST);

// Dados do usuário
$nome = $_POST['nome'];
$email = $_POST['email'];
$data_de_nascimento = $_POST['data_de_nascimento'];
$id_grupo = $_POST['id_grupo'];

// Dados bancários
$nome_banco = $_POST['nome_banco'];
$numero_conta = $_POST['numero_conta'];
$numero_agencia = $_POST['numero_agencia'];
$chave_pix = $_POST['chave_pix'];

echo "<br>nome_banco $nome_banco";
echo "<br>chave_pix $chave_pix";
echo "<br>numero_conta $numero_conta";
echo "<br>numero_agencia $numero_agencia";

// Inserção na tabela 'abc'
$sql_abc = "
INSERT INTO abc 
(nome, email, data_de_nascimento, id_grupo)
VALUES ('$nome', '$email', '$data_de_nascimento', '$id_grupo')
";

if ($conn->query($sql_abc) === TRUE) {
    // Obtém o último ID inserido na tabela 'abc'
    $id_usuario = $conn->insert_id;

    // Inserção na tabela 'dados_bancarios'
    $sql_dados = "
    INSERT INTO dados_bancarios (id_usuario, nome_banco, numero_conta, numero_agencia, chave_pix)
    VALUES ('$id_usuario', '$nome_banco', '$numero_conta', '$numero_agencia', '$chave_pix')
    ";

    if ($conn->query($sql_dados) === TRUE) {
        echo "New record created successfully in both tables.";
        header("Location: lista_de_usuarios.php");
        exit;
    } else {
        echo "Error: " . $sql_dados . "<br>" . $conn->error;
    }
} else {
    echo "Error: " . $sql_abc . "<br>" . $conn->error;
}

$conn->close();
?>
