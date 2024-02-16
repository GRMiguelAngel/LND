<html>
  <head><title>Apartado5</title></head>
  <body>
    <table border='3'>
      <tr>
        <td>Referencia de Artículo</td>
        <td>Nombre de Artículo</td>
        <td>Categoría</td>
        <td>Referencia de Proveedor</td>
        <td>Nombre de Proveedor</td>
      </tr>
      {
      for $articulo in doc('neptuno_exm.xml') //articulo
      for $proveedor in doc('neptuno_exm.xml') //proveedor
      where $articulo/NombreCategoria = "Bebidas" and $articulo/ReferenciaProveedor = $proveedor/ReferenciaProveedor
      return
      <tr>
        <td>{data($articulo/RefArticulo)}</td>
        <td>{data($articulo/NombreArticulo)}</td>
        <td>{data($articulo/NombreCategoria)}</td>
        <td>{data($proveedor/ReferenciaProveedor)}</td>
        <td>{data($proveedor/NombreProveedor)}</td>
      </tr>
      }
    </table>
  </body>
</html>
