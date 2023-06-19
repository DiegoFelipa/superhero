<?php

function renderJSON($data){
  if($data){
    echo json_encode($data);
  }
}

?>