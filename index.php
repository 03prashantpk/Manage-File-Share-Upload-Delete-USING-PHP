<?php session_start(); /* Starts the session */
if (!isset($_SESSION['UserData']['Username'])) {
    header("location:login.php");
    exit;
}
?>

<html>

<head>
    <title>flevAR Video</title>
</head>
<link href="prashant.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://use.fontawesome.com/beeac301e9.js"></script>


<body>

    <h1>Manage Your Files</h1>
    
    <p><?php  if($_SESSION['UserData']['Username'] == 'prashant'){
       echo "Superuser Account - " . $_SESSION['UserData']['Username'];
   }
   else{
    echo 'Normal User Account';

   }  ?></p>
    <?php

    if (isset($_POST['delete'])) {
        $filename = $_POST['filenamedelete'];
        unlink($filename);
        header('Location: ./');
    }

    $sermonDirectory = opendir("gallery");
    // gets each entry in the directory
    while ($entryName = readdir($sermonDirectory)) {
        $dirArray[] = $entryName;
    }
    //close the directory
    closedir($sermonDirectory);
    //Sort the Array
    sort($dirArray);

    //count the elements
    $count = count($dirArray);

   //echo $_SESSION['UserData']['Username'] 

   if($_SESSION['UserData']['Username'] == 'prashant'){
       $deleteopt = "<input class='delete' value='Delete' type='submit' name='delete'>  <i class='fa fa-trash-o'></i>";
   }
   else{
    $deleteopt = '<span class="tooltip">Info <i class="fa fa-info-circle" aria-hidden="true"></i><span class="tooltiptext">Login in As Superuser for more options</span></span>';

   }

    //Start the list
    printf("<ul>\n");

    for ($index = 0; $index < $count; $index++) {
        $ext = pathinfo($dirArray[$index], PATHINFO_EXTENSION);
        if ($dirArray[$index] != '.' && $dirArray[$index] != '..' && $ext != "xml") {
            $min = "<i class='fa fa-file-o'></i>";
            $data_type = "mb";
            $filedate = date("d F Y, H:i:s", filemtime("gallery/$dirArray[$index]"));
            $filesize = number_format(filesize("gallery/$dirArray[$index]") / 1000000, 2);
            printf("<div class='padding'><div class='main'><span class='list'>$min</span> <span class='name'> $dirArray[$index]</span> <br><span class='date'> Created on : $filedate </span>  <span class='size'>Size-  $filesize$data_type</span>
            
            <form action='' method='POST' class='delete'>
                <input type='text' hidden name='filenamedelete' value='gallery/$dirArray[$index]' >
                " . @$deleteopt . "
            </form>

            <input type='text' hidden value='gallery/$dirArray[$index]' id='myInput'>
            <a href='gallery/$dirArray[$index]' download >\n");
           
            printf("<span class='download'>Download <i class='fa fa-download'></i></span>");
            printf("</a><span class='download' onclick='copyText()'>Share <i class='fa fa-share-alt'></i></span></div></div>\n");
        }
        else if($count <=2){
            echo '<p>Your Directory is Empty</p>';
        }
    }
    printf("</ul>\n");
    ?>

    <div class="fab-wrapper">
        <input id="fabCheckbox" type="checkbox" class="fab-checkbox" />
        <label class="fab" for="fabCheckbox">
            <span class="fab-dots fab-dots-1"></span>
            <span class="fab-dots fab-dots-2"></span>
            <span class="fab-dots fab-dots-3"></span>
        </label>
        <div class="fab-wheel">
            <a onclick="location.href='https://github.com/03prashantpk/'" class="fab-action fab-action-1">
                <i class="fa fa-question"></i>
            </a>
            <a onclick="location.href='#'" class="fab-action fab-action-2">
                <i class="fa fa-upload"></i>
            </a>
            <a onclick="location.href='https://flevar.in'" class="fab-action fab-action-3">
                <i class="fa fa-globe"></i>
            </a>
            <a onclick="location.href='logout.php'" class="fab-action fab-action-4">
                <i class="fa fa-sign-out"></i>
            </a>
        </div>
    </div>

    <a class="float2" href="https://github.com/03prashantpk/" target="_blank">
        <!--<i class="fa fa-coffee" style="color: #fff;" aria-hidden="true"></i>-->
        <img src="https://rapidapi.com/blog/wp-content/uploads/2017/01/octocat.gif" style=" width:60px; height:60px; border-radius: 50%;" alt="">
    </a>

    <a class="float3" href="https://www.linkedin.com/in/03prashantpk/" target="_blank">
        <!--<i class="fa fa-coffee" style="color: #fff;" aria-hidden="true"></i>-->
        <img src="https://i.pinimg.com/originals/de/b4/6f/deb46f02a59e3b3a2aa58fac16290d63.gif" style=" width:60px; height:60px; border-radius: 50%;" alt="">
    </a>

    
    <a class="float" href="logout.php">
        <!--<i class="fa fa-coffee" style="color: #fff;" aria-hidden="true"></i>-->
        <img src="https://www.computerhope.com/issues/pictures/logout.jpg" style=" width:60px; height:60px; border-radius: 50%;" alt="">
    </a>
</body>
<script>
    function copyText() {
  /* Get the text field */
  var copyText = document.getElementById("myInput");

  /* Select the text field */
  copyText.select();

  /* Copy the text inside the text field */
  document.execCommand("copy");

  /* Alert the copied text */
  alert("Copied the text: " + copyText.value);
}


function share() {
  document.getElementById("share").innerHTML = "Link Copied";
}
</script>
</html>