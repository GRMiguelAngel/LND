<html>
  <head><title>Apartado 4</title></head>
  <body>
    <table border='3'>
      <tr>
        <td>Referencia de Pedido</td>
        <td>Referencia de Cliente</td>
        <td>Referencia de Artículo</td>
        <td>Fecha de Pedido</td>
      </tr>
      {
      for $cliente in doc('neptuno_exm.xml') //cliente
      for $articulo in doc('neptuno_exm.xml') //articulo
      where $cliente/RefCliente = "PICCO" and $cliente/RefArticulo = $articulo/RefArticulo
      return
      <tr>
        <td>{$cliente/RefPedido}</td>
        <td>{$cliente/RefCliente}</td>
        <td>{$articulo/RefArticulo}</td>
        <td>{$cliente/FechaPedido}</td>
      </tr>
      }
    </table>
  </body>
</html>