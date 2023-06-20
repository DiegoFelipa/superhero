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
  <!-- Select2 -->
  <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

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
              <div class="col-md-12">
                <select name="razas" id="razas" class="form-select" multiple>
                </select>
              </div>
            </div>
          </div>

          <div class="card-footer text-center">
            <button type="button" id="obtener" class="btn btn-success">Obtener</button>
            <button type="button" id="generarpdf" class="btn btn-info">PDF</button>
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
            <col width="10%">
            <col width="20%">
            <col width="30%">
            <col width="20%">
            <col width="20%">
          </colgroup>
          <thead>
            <tr>
              <th>ID</th>
              <th>Casa</th>
              <th>Nick</th>
              <th>Nombre</th>
              <th>Raza</th>
            </tr>
          </thead>

          <tbody>
            <!-- Asíncrono -->

          </tbody>
        </table>
      </div>
    </div>
  </div>

  <!-- jQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
  <!-- Select2 -->
  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
  <script>
            document.addEventListener("DOMContentLoaded", ()=>{
              const selectRazas = document.querySelector("#razas")
              const selectMultiRazas = document.querySelector("#mulirazas")
              const tabla = document.querySelector("#table-superhero tbody");
              const btObtener = document.querySelector("#obtener");
              const bntGenerar = document.querySelector("#generarpdf");

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
              
              function getMultiRaces(strActivos){
                const param = new URLSearchParams();
                param.append("operacion","multirace");
                param.append("id", strActivos);
                fetch(`../controllers/superhero.php?${param}`)
                  .then(respuesta => respuesta.json())
                  .then(datos => {
                    tabla.innerHTML = ``;
                    datos.forEach(element => {
                      const tableRow = `
                        <tr>
                          <td>${element.id}</td>
                          <td>${element.publisher_name}</td>
                          <td>${element.superhero_name}</td>
                          <td>${element.full_name}</td>
                          <td>${element.race}</td>
                        </tr>
                      `;
                      tabla.innerHTML += tableRow;
                  });
                });
              }

              function PDFBuild(strActivos){
                const  idcasa = 2
                if (idcasa > 0){
                  const parametros = new URLSearchParams();
                  parametros.append("id", idcasa );
                  //window.innerHTML.href = '../reports/heropublisher/reporte.php?publisher_id' + selectCasas.value;
                  window.open(`../reports/heropublisher/reporte.php?${parametros}`,'_blank');
                }
              }

              btObtener.addEventListener("click", () => {
                //Arreglo que almacenara los ID
                let strActivos = "";
                //Recorrer todas las opciones y verificar cuales fueron seleccionadas
                for (let option of document.querySelector("#razas").options){
                  if(option.selected){
                    strActivos += `${option.value},`;
                  }
                }
                getMultiRaces(strActivos);
              });

              bntGenerar.addEventListener("click", PDFBuild);

              $("#razas").select2();
              getRaces();
            })
          </script>
</body>

</html> 