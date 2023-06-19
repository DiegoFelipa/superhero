<?php
require '../tools/helpers.php';
require  '../models/SuperHero.php';
$superhero = new SuperHero();

if (isset($_GET['operacion'])){
  if ($_GET['operacion'] == 'listarCasas'){
    renderJSON($superhero->listByPublisher(["publisher_id" => $_GET['publisher_id']]));
  }

  if ($_GET['operacion'] == 'listarRazas'){
    renderJSON($superhero->listByRace(["race_id" => $_GET['race_id']]));
  }
}

?>