<?php
//Utiizaremos datos de BACKEND(modelo)
//Librerías obtenidas COMPOSER
require '../../vendor/autoload.php';
require '../../models/SuperHero.php';

use Spipu\Html2Pdf\Html2Pdf;
use Spipu\Html2Pdf\Html2Pdf\Html2PdfException;
use Spipu\Html2Pdf\Html2Pdf\ExceptionFormatter;

//Construcción reporte PDF
try {

  $superhero = new SuperHero();

  $datos = $superhero->listByPublisher(["publisher_id" => $_GET['publisher_id']]);

  //Contenido (HTML) que renderizaremos como PDF
  
  $content = "";
  
  $titulo = $_GET['titulo'];

  //Iniciamos la creación del binario
  ob_start();
  include '../estilos.html';
  include './datos.php';

  

  //Cierre creación de binario
  $content .= ob_get_clean();

  //Configuración del archivo PDF 
  //P = portrait (vertical) / L = Landscape(Horizontal)
  $html2pdf = new Html2Pdf('P', 'A4', 'es', true,'UTF-8',array(15,15,15,15));
  $html2pdf->writeHTML($content);
  $html2pdf->output('reporte.pdf');


} 
catch (Html2PdfException $error) {
  $formater = new ExceptionFormatter($error);
  echo $formater->getHtmlMessage();
}

?>