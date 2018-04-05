<?php
if(isset($_POST['search']))
{
  require_once 'clientes_db.php';
  $clientes = new ClientesDB();
  $nome = htmlspecialchars($_POST['nome']);
  $resultado = $clientes->search("$nome");
  header("Content-Type: application/json");
  echo(json_encode($resultado));
}
?>
