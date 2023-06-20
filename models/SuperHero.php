<?php
  require_once 'Conexion.php';

  class SuperHero extends Conexion{

    private $conexion;

    Public function __CONSTRUCT(){
      $this->conexion = parent::getConexion();
    }

    public function listByPublisher($data=[]){
      try{
        $consulta = $this->conexion->prepare("CALL spu_superhero_list_publisher(?);");
        $consulta->execute(array($data['publisher_id']));
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }

    public function listByRace($data=[]){
      try{
        $consulta = $this->conexion->prepare("CALL spu_superhero_listbyrace(?);");
        $consulta->execute(
          array(
            $data['race_id']));
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }

    public function getMultirace($data=[]){
      try{
        $consulta = $this->conexion->prepare("CALL spu_racebyids(?)");
        $consulta->execute(
            array(
              $data['race_ids']
            ));
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }

  }