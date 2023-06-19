<?php
  require_once 'Conexion.php';

  class Alignment extends Conexion{

    private $conexion;

    Public function __CONSTRUCT(){
      $this->conexion = parent::getConexion();
    }

   public function listAll(){
      try{
        $consulta =$this->conexion->prepare("CALL spu_publisher_list()");
        $consulta->execute();
        return  $consulta->fetchAll(PDO::FETCH_ASSOC);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }

    public function listByAlignment(){
      try{
        $consulta = $this->conexion->prepare("CALL spu_alignment_list();");
        $consulta->execute();
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }

    public function listAlignment($data=[]){
      try{
        $consulta = $this->conexion->prepare("CALL spu_byalignment_list(?,?)");
        $consulta->execute(
            array(
              $data['publisher_id'],
              $data['alignment_id']
            ));
        return $consulta->fetchAll(PDO::FETCH_ASSOC);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }
  }