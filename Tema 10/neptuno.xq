<html>
  <head><title>Tarea Neptuno</title></head>
    <body>
      <table border="2">
        <tr>
          <th>Referencia del Proveedor</th><th>Nombre del Proveedor</th><th>Pais Proveedor</th>
        </tr>
        {
        for $proveedores in doc('neptuno.xml')//proveedores
        where $proveedores/PaisProveedor="Francia"
        return
        <tr>
           <td>{$proveedores/ReferenciaProveedor}</td>
           <td>{$proveedores/NombreProveedor}</td>
           <td>{$proveedores/PaisProveedor}</td>
        </tr>
      }
      </table>
            <table border="2">
        <tr>
          <th>Referencia del Proveedor</th><th>Nombre del Proveedor</th><th>Pais Proveedor</th>
        </tr>
        {

      }
      </table>
    </body>
</html>