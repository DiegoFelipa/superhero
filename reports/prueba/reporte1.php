<?php

//Librerías obtenidas COMPOSER
require '../../vendor/autoload.php';

use Spipu\Html2Pdf\Html2Pdf;
use Spipu\Html2Pdf\Html2Pdf\Html2PdfException;
use Spipu\Html2Pdf\Html2Pdf\ExceptionFormatter;


//¿Cómo estructurar el reporte?
//PDF = múltiples páginas / cada sección se construyade forma independiente
//Construcción reporte PDF
try {
  //Contenido (HTML) que renderizaremos como PDF
  $content = "";

  
  //Iniciamos la creación del binario
  ob_start();
  include '../estilos.html';
  include './reporte1.datos.php';

  //Invocar todas las secciones (archivo.php)
  //include 'seccion1.php';
  //include 'seccion2.php';
  //include 'seccionN.php';

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