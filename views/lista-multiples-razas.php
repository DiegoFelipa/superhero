<!doctype html>
<html lang="es">

<head>
  <title>Reportes</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<body>
  <div class="container">
    <!-- Cabecera -->
    <div class="row mt-3">
      <h3>Super héroes - Organizado por multiples razas</h3>
      <p>Reportes en formato PDF</p>
    </div>
    <!-- Filtro -->
    <div class="row">
      <div class="col-md-12">
        <!-- Inicio card -->
        <div class="card">
          <div class="card-header">
            Filtro de razas
          </div>
          <!-- Inicio body -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-10">
                <select name="razas" id="razas" class="form-select">
                    <option value="">Seleccione</option>
                </select>
              </div>
              <div class="col-md-2">
                <div class="d-grid">
                  <button type="button" id="agregar" class="btn btn-primary">Agregar Raza                  </button>
                  <button type="button" id="generarpdf" class="btn btn-success">Generar PDF</button>
                </div>
              </div>
             
            </div>
          </div>
          <!-- Fin body -->
        </div>
        <!-- Fin card -->
      </div>
    </div>
    <!-- Datos -->
    <div class="row">
      <div class="col-md-12">
        <table id="table-superhero" class="table table-sm table-striped">
          <colgroup>
            <col width="5%">
            <col width="20%">
            <col width="30%">
            <col width="15%">
            <col width="15%">
            <col width="15%">
          </colgroup>
          <thead>
            <tr>
              <th>ID</th>
              <th>Nick</th>
              <th>Nombre</th>
              <th>Casa</th>
              <th>Alineacion</th>
              <th>Estatura</th>
            </tr>
          </thead>

          <tbody>
            <!-- Asíncrono -->

          </tbody>
        </table>
      </div>
    </div>
  </div>
  <script>
            document.addEventListener("DOMContentLoaded", ()=>{
              const selectRazas = document.querySelector("#razas")
              const tabla = document.querySelector("#table-superhero tbody");
              function getRaces(){
                fetch(`../controllers/race.php?operacion=listar`)
                  .then(respuesta => respuesta.json())
                  .then(datos => {
                    datos.forEach(element => {
                      const tagOption = document.createElement("option");
                      tagOption.value = element.id;
                      tagOption.text  = element.race;
                      selectRazas.appendChild(tagOption);
                    });
                  });
              }

              

              getRaces();
            })
          </script>
</body>

</html> 