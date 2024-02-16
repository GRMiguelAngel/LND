<html>
  <head><title>Apartado 3</title></head>
  <body>
    <table border='3'>
      <tr>
        <td>Referencia de Cliente</td>
        <td>Nombre de Cliente</td>
        <td>Dirección</td>
        <td>Ciudad</td>
      </tr>
      {
        for $cliente in doc('neptuno_exm.xml')//cliente
        where $cliente/CiudadCliente = "Madrid"
        return
        <tr>
          <td>{data($cliente/RefCliente)}</td>
          <td>{data($cliente/NombreCliente)}</td>
          <td>{data($cliente/DireccionCliente)}</td>
          <td>{data($cliente/CiudadCliente)}</td>
        </tr>
      }
    </table>
  </body>
</html>