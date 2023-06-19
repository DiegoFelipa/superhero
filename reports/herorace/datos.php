<div>
  <h2 class="text-lg"></h2>
  <p>Generado desde Backend</p>
</div>
<div>
  <?php 
    //HELPERS
    function crearTabla($casa = ""){
      $nuevaTabla = "
      <h4 class='mt-2'>{$casa}</h4>
      <table class='table table-border mt-1'>
        <colgroup>
          <col style='width: 10%;'>
          <col style='width: 25%;'>
          <col style='width: 30%;'>
          <col style='width: 20%;'>
          <col style='width: 15%;'>
        </colgroup>
        <thead>
          <tr class='bg-info'>
            <th>ID</th>
            <th>Nick</th>
            <th>Nombre</th>
            <th>Alineacion</th>
            <th>Altura</th>
          </tr>
        </thead>
        <tbody>
      ";
      
      echo $nuevaTabla;
    }

    function cerrarTabla(){
      $cerrarTabla = "
        </tbody>
      </table>
      ";
      echo $cerrarTabla;
    }

    function agregarFila($arreglo = []){
      echo "
        <tr>
          <td>{$arreglo['id']}</td>
          <td>{$arreglo['superhero_name']}</td>
          <td>{$arreglo['full_name']}</td>
          <td>{$arreglo['alignment']}</td>
          <td>{$arreglo['height_cm']}</td>
        </tr>
      ";
    }
    //FIN HELPERS

    if(count($datos) > 0){
      $casaActual = $datos[0]["publisher_name"];
      
      crearTabla($casaActual);

      foreach($datos as $registro){
        if($casaActual == $registro["publisher_name"]){
          agregarFila($registro);
        }else{
          //Actualizar la $casaActual errar la tabla anterior, crear nueva
          $casaActual = $registro["publisher_name"];
          cerrarTabla();
          crearTabla($casaActual);

          //Agregamos el registro a la nueva tablaHTML
          agregarFila($registro);
        }
      }

      cerrarTabla();
    }else{
      echo "<h3 class='mt-3'>No encontramos registros</h3>";
    }
  ?>
</div>