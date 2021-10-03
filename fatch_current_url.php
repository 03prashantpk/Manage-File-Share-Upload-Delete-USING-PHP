<?php if(isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on')
    $url_link = "https";
else
    $url_link = "http";
  
// Here append the common URL characters.
$url_link .= "://";
  
// Append the host(domain name, ip) to the URL.
$url_link .= $_SERVER['HTTP_HOST'];
  
// Append the requested resource location to the URL
$url_link .= $_SERVER['REQUEST_URI'];
      
// Print the url_link
//echo $url_link; 
?>