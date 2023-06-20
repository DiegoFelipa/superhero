<?php

if (isset($_GET['operacion'])){
  if ($_GET['operacion'] == 'getdata'){
    $datos = [
      "Arequipa"  => [
        "Dengue"  => 10,
        "Covid"   => 15],
      "Ica"       => [
        "Dengue"  => 20,
        "Covid"   => 25],
      "Lima"      => [
        "Dengue"  => 40,
        "Covid"   => 50],
      "Ayacucho"  => [
        "Dengue"  => 10,
        "Covid "  => 15],
    ];

    $datosAlt = [
      "Dengue" => [
        "Arequipa"  => 15,
        "Ica"       => 10,
        "Lima"      => 25,
        "Ayacucho"  => 35,
      ],
      "Covid" => [
        "Arequipa"  => 25,
        "Ica"       => 20,
        "Lima"      => 15,
        "Ayacucho"  => 55,
      ]
    ];

    $datosMin = [
      "Dengue" =>[3,5,1,25],
      "Covid" =>[2,1,46,8]
    ];

    echo json_encode($datosMin);
  }
}

?>