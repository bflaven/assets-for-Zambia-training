<?php
/* 
Using PHP to extract img src alt and title from HTML
https://fellowtuts.com/php/using-php-to-extract-img-src-alt-and-title-from-html/

extract_img_src_alt_title_html.php
*/

/* cd /Users/brunoflaven/Documents/02_copy/_technical_training_zambia_znbc/_manual_auditing_seo_page_znbc/
 php extract_img_src_alt_title_html_1.php
 */




 $url="https://www.znbc.co.zm/";
 $html = file_get_contents($url);
 $doc = new DOMDocument();
 @$doc->loadHTML($html);
 $tags = $doc->getElementsByTagName('img');
 
 foreach ($tags as $tag) {

    	   echo "\n";       
    	   echo (''.$tag->getAttribute('src').'');
    	   echo "\n";
    	   echo (''.$tag->getAttribute('alt').'');
    	   echo "\n\n";

  
 }



/*
  $content = "<html><body>Test<br><img src=\"myimage.jpg\" alt=\"image alt\" title=\"image title\"></body></html>";
 
 
    $doc = new DOMDocument();
 
 $doc->loadHTML($content);
 
 $xml = simplexml_import_dom($doc); // making xpath more simple
 
 $images = $xml->xpath('//img');
 
 foreach ($images as $img) {
 
 if (isset($img["src"])) 
 echo "Source : " . $img['src'] . "<br />";
 
 if (isset($img["alt"]))
 echo "Alt : " . $img['alt'] . "<br />";
 
 if (isset($img["title"])) 
 echo "Title : " . $img['title'] . "<br />";
 
 }
 */


?>