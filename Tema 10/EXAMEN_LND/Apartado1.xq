<html>
  <head><title>Apartado 1</title></head>
    <body>
      <table border='3'>
        <tr>
          <td>Referencia del Artículo</td>
          <td>Referencia del Proveedor</td>
          <td>Nombre</td>
          <td>Categoría</td>
          <td>Precio unidad</td>
          <td>Unidades en Existencia</td>
        </tr>
        {
          for $articulos in doc('neptuno_exm.xml')//articulo
          where $articulos/NombreCategoria='Bebidas'
          return
          <tr>
            <td>{$articulos/RefArticulo}</td>
            <td>{$articulos/ReferenciaProveedor}</td>
            <td>{$articulos/NombreArticulo}</td>
            <td>{$articulos/NombreCategoria}</td>
            <td>{$articulos/PrecioUnidad}</td>
            <td>{$articulos/UnidadesExistencia}</td>
          </tr>  
        }
      </table>
    </body>
</html>