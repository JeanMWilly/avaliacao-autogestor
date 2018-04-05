function search() {
  var nome = $('#nome').val();

  $.ajax({
    url: "clientes_curl.php",
    type: "POST",
    data: "search&nome="+nome,
    success: function(data) {
      console.log(data);
      $('.resultado').remove();
      $.each(data, function(i, obj) {
        $('#resultado').append('<tr class="resultado"><td>'+obj.cli_id+'</td><td>'+obj.cli_nome+'</td><td>'+obj.cat_nome+'</td><td>'+obj.cli_idade+'</td><td>'+obj.cli_endereco+'</td><td>'+obj.cli_telefone+'</td></tr>');
      });
    },
    error: function(error) {
      console.log(error);
    }
  });

  return false;
}
