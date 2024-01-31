        for $articulos in doc('neptuno.xml') //articulos
        for $proveedores in doc('neptuno.xml') //proveedores
        where $articulos/NombreCategoria/text()='alimentación' and /$articulos/ReferenciaProveedor/text()=/../proveedores/ReferenciaProveedor/text()
        return
        <tr>
           <td>{$proveedores/ReferenciaProveedor}</td>
           <td>{$proveedores/NombreProveedor}</td>
           <td>{$proveedores/PaisProveedor}</td>
        </tr>