<html>
  <head1><title>Ejemplo Books</title></head1>
    <body>
      <table border="4">
        <tr>
        <td>nombre</td><td>autor</td><td>género</td>
        </tr>

        {
for $catalog in doc("books.xml") /catalog/book
where $catalog/price/text()>10
return
<tr>
<td>{$catalog/title}</td>
<td>{$catalog/author}</td>
<td>{$catalog/genre}</td>
</tr> 
        }
        
      </table>
    </body>

</html>