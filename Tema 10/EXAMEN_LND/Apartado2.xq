<html>
  <head><title>Apartado 2</title></head>
  <body>
    <table border="3">
      <tr>
        <td>Referencia Proveedor</td>
        <td>Nombre del Proveedor</td>
        <td>Dirección</td>
        <td>Codigo Postal</td>
        <td>País</td>
        <td>Teléfono</td>
      </tr>
      {
      for $proveedores in doc("neptuno_exm.xml")//proveedor
      where $proveedores/PaisProveedor ='Francia'
      return
      <tr>
        <td>{$proveedores/ReferenciaProveedor}</td>
        <td>{$proveedores/NombreProveedor}</td>
        <td>{$proveedores/DireccionProveedor}</td>
        <td>{$proveedores/CodigoPostal}</td>
        <td>{$proveedores/PaisProveedor}</td>
        <td>{$proveedores/TelefonoProveedor}</td>
      </tr>    
    }
    
    </table>
  </body>
</html>
