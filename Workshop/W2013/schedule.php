<?php
  $xml = new DOMDocument();
  $xml->load('schedule.xml');
  $xsl = new DOMDocument();
  $xsl->load('schedule.xsl');
  $proc = new XSLTProcessor();
  $proc->importStyleSheet($xsl);
  echo $proc->transformToXML($xml);
?>
