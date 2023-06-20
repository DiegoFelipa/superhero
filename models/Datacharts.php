<?php
require 'Conexion.php';

class Datacharts extends Conexion{

    private $conexion;

    public function __CONSTRUCT(){
        $this->conexion = parent::getConexion();
    }

    public function listGB($data=[]){
      try{
        $consulta = $this->conexion->prepare("CALL spu_alignment_publisher(?)");
        $consulta->execute(
            array($data['publisher_id']));
        return $consulta->fetchAll(PDO::FETCH_KEY_PAIR);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }
}