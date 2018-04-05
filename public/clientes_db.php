<?php
class ClientesDB
{

	private $connection;

	public function __construct()
	{
		$this->connect();
	}

	private function connect()
	{
		$this->connection = @mysqli_connect("localhost", "root", "root", "avaliacao");
		if(!$this->connection)
		{
			die("Não foi possível estabelecer uma conexão com o banco de dados.");
		}
	}

	public function select($query)
	{
		if($this->connection)
		{
			$result = mysqli_query($this->connection, $query);
			if($result)
			{
				$array_result = array();
				while($data = mysqli_fetch_assoc($result))
				{
					$array_result[] = $data;
				}
				return $array_result;
			}
			else
			{
				die("<b>Erro na consulta MySQL:</b> ".$query);
			}
		}
	}

  public function search($nome)
  {
    $sql = "SELECT * FROM avaliacao.tbl_clientes a LEFT JOIN avaliacao.tbl_categorias b ON a.cli_id_categoria = b.cat_id WHERE a.cli_nome LIKE '%".$nome."%';";
    return $this->select($sql);
  }
}
?>
