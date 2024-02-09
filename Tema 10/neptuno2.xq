<html>
  <head>
    <title>Primera Consulta</title>
  </head>
  <body>
    <table border="3">
      <tr>
        <td>Referencia de Cliente</td>
        <td>Nombre del Cliente</td>
        <td>Referencia de Artículo</td>
        <td>Nombre de Categoría</td>
      </tr>
      {
        for $articulo in doc('neptuno.xml')//articulos
        for $cliente in doc('neptuno.xml')//clientes
        where $articulo/NombreCategoria='Bebidas' and $articulo/RefPedido='
        <tr>
          <td></td>
        </tr>
      }
      <tr>

      </tr>
    </table>
  </body>
</html>