
<?php session_start(); /* Starts the session */
if (!isset($_SESSION['UserData']['Username'])) {
    header("location:login.php");
    exit;
}
// Includes
include("fatch_current_url.php");

// function removed
if (isset($_POST['delete'])) {
    $filename = $_POST['filenamedelete'];
    unlink($filename);
    header('Location: ./');
}
$sermonDirectory = opendir("gallery");
// Gets each entry in the directory
while ($entryName = readdir($sermonDirectory)) {
    $dirArray[] = $entryName;
}
//close the directory
closedir($sermonDirectory);
//Sort the Array
sort($dirArray);

//count the elements
$count = count($dirArray);

?>
    