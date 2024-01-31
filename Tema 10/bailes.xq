<html>
  <head><title>Hola</title></head>
  <body>
  <table border='3'>
    <tr>
      <td>baile</td>
      <td>precio</td>
    </tr>
{
for $bailes in doc('bailes.xml') /bailes/baile
where $bailes/precio/text()>45
return 
    <tr>
      <td>{$bailes/nombre}</td>
      <td>{$bailes/precio}</td>
    </tr>
}
    
  </table>
  </body>
</html>