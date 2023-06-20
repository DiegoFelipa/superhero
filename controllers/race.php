<?php
require_once '../tools/helpers.php';
require_once '../models/Race.php';

$race = new Race();

//Funcion renderiza en el VIEW un JSON si el origen NO está vacío


if (isset($_GET['operacion'])){
  if($_GET['operacion'] == 'listar'){
    renderJSON($race->listAll()); 
  } 
}
?>