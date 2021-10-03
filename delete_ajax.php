<?php
	$id=$_POST['id'];
	unlink($id);
    $delete_file_name = substr($id,8);
    unlink("assets/count/".$delete_file_name.".txt");
?>