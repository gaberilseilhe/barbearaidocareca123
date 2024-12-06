<?php
include "conexao.php";

// Verificar se o ID foi passado via URL
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Buscar os dados do usuário pelo ID
    $sql = "SELECT * FROM abc WHERE id_usuario = $id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
    } else {
        echo "Usuário não encontrado!";
        exit;
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Recupera os dados do formulário
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $data_de_nascimento = $_POST['data_de_nascimento'];
    $id_grupo = $_POST['id_grupo'];

    // Atualiza os dados do usuário no banco de dados
    $sql = "UPDATE abc SET nome = '$nome', email = '$email', data_de_nascimento = '$data_de_nascimento', id_grupo = $id_grupo WHERE id_usuario = $id";
    
    if ($conn->query($sql) === TRUE) {
        header("Location: lista_de_usuarios.php");
    } else {
        echo "Erro ao atualizar: " . $conn->error;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <title>Editar Usuário</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=MedievalSharp&display=swap" rel="stylesheet">
</head>
<style>
  .esc {
  display: none;
}
    body {
        font-family: 'MedievalSharp', serif;
        margin: 0;
        display: flex;
        flex-direction: column;
        height: 100vh;
        background-size: cover;
        background-position: center;
        color: #333;
        background-image: linear-gradient(170deg, #6a3e36, #d7c297);
    }

    nav {
        background-color: #6a3e36;
        padding: 10px 0;
        border-bottom: 3px solid #9c6d4f;
    }

    nav .container1 {
        display: flex;
        align-items: center;
        justify-content: space-around;
    }

    nav .brand {
        font-size: 2rem;
        font-weight: bold;
        color: #ffd700;
    }

    nav img {
        height: 60px;
        border: 2px solid #ffd700;
        border-radius: 50%;
    }

    .container {
        width: 100%;
        max-width: 600px;
        padding: 30px;
        background-color: rgba(255, 255, 255, 0.9);
        border-radius: 15px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        backdrop-filter: blur(30px);
    }

    h2, label {
        text-align: center;
        color: #6a3e36;
        font-weight: bold;
    }

    .radio-group {
        display: flex;
        justify-content: center;
        gap: 20px;
    }

    .btn {
        border-radius: 25px;
        padding: 10px 20px;
        font-weight: 600;
        transition: background-color 0.3s ease;
        color: #fff;
    }

    .btn-success {
        background-color: #2ecc71;
        border: none;
    }

    .btn-primary {
        background-color: #3498db;
        border: none;
    }

    .btn-success:hover {
        background-color: #27ae60;
    }

    .btn-primary:hover {
        background-color: #2980b9;
    }

    .btn:focus {
        outline: none;
    }

    a {
        text-decoration: none;
    }

    footer {
        padding: 5px;
        width: 100%;
        text-align: center;
        color: #ffd700;
        margin-top: auto;
        background-color: #6a3e36;
    }

</style>
<body>
<nav>
   <div class="container1">
   <a href="index.php"><div class="brand">Barbearia do Careca</div></a>
   <a href="index.php"><img src="imagens/logu.webp" alt="Logo"></a>
    </div>
</nav><br>
<div class="container mt-3">
  <h2>Editar Usuário</h2>
  <form action="editar.php?id=<?php echo $id; ?>" method="POST">
    <input type="hidden" name="id_grupo" value="<?php echo $user['id_grupo']; ?>">

    <div class="mb-3 mt-3" id="group">
      <label class="radio-group form-check-label">Grupo do Usuário:</label>
      <div class="radio-group">
          <div>
              <input type="radio" id="grupo1" name="id_grupo" value="1" <?php if ($user['id_grupo'] == 1) echo 'checked'; ?> onclick="info()">
              <label for="grupo1">Admin</label>
          </div>
          <div>
              <input type="radio" id="grupo2" name="id_grupo" value="2" <?php if ($user['id_grupo'] == 2) echo 'checked'; ?> onclick="info()">
              <label for="grupo2">Barbeiro</label>
          </div>
          <div>
              <input type="radio" id="grupo3" name="id_grupo" value="3" <?php if ($user['id_grupo'] == 3) echo 'checked'; ?> onclick="info()">
              <label for="grupo3">Cliente</label>
          </div>
      </div>
    </div>

    <div class="mb-3 mt-3">
      <label for="nome">Nome de Usuário:</label>
      <input id="nome" name="nome" class="form-control" type="text" value="<?php echo $user['nome']; ?>" required>
    </div>

    <div class="mb-3 mt-3">
      <label for="email">Email:</label>
      <input id="email" name="email" class="form-control" type="email" value="<?php echo $user['email']; ?>" required>
    </div>

    <div class="mb-3 mt-3">
      <label for="data_de_nascimento">Data de Nascimento:</label>
      <input id="data_de_nascimento" name="data_de_nascimento" class="form-control" type="date" value="<?php echo $user['data_de_nascimento']; ?>" required>
    </div>

    <div class="d-flex justify-content-between mt-3">
      <a href="lista_de_usuarios.php" class="btn btn-danger">Cancelar</a>
      <button type="submit" class="btn btn-primary">Atualizar</button>
    </div>
    
  </form>
</div>

<footer>
    &copy; 2024 Barbearia do Careca. Todos os direitos reservados.
</footer>

</body>
</html>
