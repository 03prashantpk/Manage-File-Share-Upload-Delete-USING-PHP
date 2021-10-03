<?php
$id=$_POST['id'];
$file = 'assets/count/'.$id.'.txt';

$hit_count = @file_get_contents($file,);
//echo $hit_count; 
$hit_count++; 
@file_put_contents($file, $hit_count);
//echo $file;
?>