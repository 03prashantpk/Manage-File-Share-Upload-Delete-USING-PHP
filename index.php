<?php session_start(); /* Starts the session */
if (!isset($_SESSION['UserData']['Username'])) {
    header("location:login.php");
    exit;
}
// Includes
include("fatch_current_url.php");
include("files_counter.php");

// function removed
if (isset($_POST['delete'])) {
    $filename = $_POST['filenamedelete'];
    unlink($filename);
    header('Location: ./');
}

// Total page Visit
$Page_visit_counter_file = "PV_counter.txt";
$total_page_visit = @file_get_contents($Page_visit_counter_file,);
$total_page_visit++;
@file_put_contents($Page_visit_counter_file, $total_page_visit);



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

<html>

<head>
    <title>Enally - Server File Manager</title>
</head>
<link href="prashant.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://use.fontawesome.com/beeac301e9.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="icon" href="assets/Fevicon.png" type="image/x-icon">
<body>
    <h1>Manage Your Files</h1>
    

    <p><?php if ($_SESSION['UserData']['Username'] == 'prashant' || $_SESSION['UserData']['Username'] == 'amit') {
            echo "Superuser Account - " . $_SESSION['UserData']['Username'];
        } else {
            echo 'Normal User Account';
        }  ?>
    </p>

    <div class="padding2">
        <h5 class="header" id="myHeader"><?php echo "Images (" . $count_total_images . ") | Presentation (" . $count_total_ppt . ") | Documents (" . $count_total_docs . ") | Videos (" . $count_total_videos . ") | Pdf (" . $count_total_pdf . ") | Musics (" . $count_total_musics . ")" . "| Archives (" . $count_total_archive . ")" ?> <span style="float: right;">Total visit: <?php echo $total_page_visit ?></span></h5>
    </div>

    <div class="content">
        <?php
        //Start the list
        printf("<ul>\n");

        for ($index = 0; $index < $count; $index++) {
            $ext = pathinfo($dirArray[$index], PATHINFO_EXTENSION);

            if ($dirArray[$index] != '.' && $dirArray[$index] != '..' && $ext != "xml") {

                if ($ext == 'JPG' || $ext == 'jpg' || $ext == 'jpeg' || $ext == 'png' || $ext == 'gif') {
                    $min = "<i class='fa fa-file-image-o'></i>";
                    $main_color = 'style="background-color: #c9ffe5;"';
                    $imgs = ' ';
                } else if ($ext == 'mp4' || $ext == 'mkv' || $ext == '3gp') {
                    $min = '<i class="fa fa-file-video-o"></i>';
                    $main_color = 'style="background-color: #baf8a1;"';
                    $imgs = ' ';
                } else if ($ext == 'mp3' || $ext == 'ogg' || $ext == 'aac' || $ext == 'm4a' || $ext == 'wav') {
                    $min = '<i class="fa fa-music"></i>';
                    $main_color = 'style="background: linear-gradient(-105deg, rgba(0, 0, 0, .5), rgba(255, 255, 155, 1.0)) fixed, url(assets/musicbg.webp) fixed bottom; 
                    background-size: cover;"';
                    $imgs = ' ';
                } else if ($ext == 'pptx' || $ext == 'ppt') {
                    $min = '<i class="fa fa-file-powerpoint-o"></i>';
                    $main_color = 'style="background-color: #faf394;"';
                    $imgs = ' ';
                } else if ($ext == 'doc' || $ext == 'docx' || $ext == 'txt' || $ext == 'xlsx') {
                    $min = '<i class="fa fa fa-music"></i>';
                    $main_color = 'style="background-color: #ebd5fa;"';
                    $imgs = ' ';
                } else if ($ext == 'pdf') {
                    $min = '<i class="fa fa-file-pdf-o"></i>';
                    $main_color = 'style="background: linear-gradient(-65deg, rgba(246, 0, 0, .6), rgba(255, 255, 255, 1.0)) fixed, url(https://img.wallpapersafari.com/desktop/800/450/29/58/pLb5BE.jpg) fixed;
                    background-size: cover;"';
                    //$imgs = "<img class='imgs' src='https://www.vidalifinishinggroup.com/wp-content/uploads/2019/04/1504326172_tekken7.png'>";
                    $imgs = ' ';
                } else if ($ext == 'rar' || $ext == 'zip') {
                    $min = '<i class="fa fa-file-archive-o"></i>';
                    $main_color = 'style="background-color: #d0f0c0; }";';
                    //$imgs = "<img class='imgs' src='https://www.vidalifinishinggroup.com/wp-content/uploads/2019/04/1504326172_tekken7.png'>";
                    $imgs = ' ';
                } else {
                    $min = '<i class="fa fa fa-file"></i>';
                    $main_color = 'style="background: linear-gradient(-65deg, rgba(246, 0, 0, .8), rgba(255, 255, 169, 1.0)) fixed, url(http://www.webcreatorbox.com/sample/images/bg-cherrybrossam.jpg) fixed;
                    background-size: cover;"';
                    $imgs = ' ';
                }

                if ($_SESSION['UserData']['Username'] == 'prashant') {
                    $deleteopt = ' <button type="button" class="delete" data-id="gallery/' . $dirArray[$index] . '">Delete <i class="fa fa-trash-o"></i></button>
                   ';
                } else {
                    $deleteopt = '<span class="tooltip">Info <i class="fa fa-info-circle" aria-hidden="true"></i><span class="tooltiptext">Login in As Superuser for more options</span></span>';
                }

                $dcount = @file_get_contents('assets/count/' . $dirArray[$index] . '.txt');
                $data_type = "mb";
                $filedate = date("d F Y, H:i:s", filemtime("gallery/$dirArray[$index]"));
                $filesize = number_format(filesize("gallery/$dirArray[$index]") / 1000000, 2);
                printf("<div class='padding'> $imgs <div $main_color class='main'><span class='list'>$min</span> <span class='name'> $dirArray[$index]</span>  <br><span class='date'> Created on : $filedate </span>  <span class='size'>Size-  $filesize$data_type</span>
            
            <form action='' method='POST' class='delete2'>
                <input type='text' hidden name='filenamedelete' value='gallery/$dirArray[$index]' >
                " . @$deleteopt . "
            </form>

            <input type='text' hidden value='gallery/$dirArray[$index]' id='myInput'>");

                printf(" <a href='gallery/$dirArray[$index]' class='count' download data-id='$dirArray[$index]'\n <span class='download '>Download <i class='fa fa-download'></i></span></a>");
                printf(" 
                <br> 
                <span class='date count '> Total Downloads: (" . $dcount . ")</span>
                <span class='download'>
                    <a href='whatsapp://send?text=Download Classroom Notes from here. $url_link'
                            data-action='share/whatsapp/share'
                            target='_blank'>
                            Share to whatsapp
                    </a> <i class='fa fa-share-alt'></i></span>
                    </div></div> \n");
            }
        }
        printf("<ul>\n");
        if ($count <= 2) {
            echo '<p>Your Directory is Empty</p>';
        }
        ?>
        <?php include("footer.php") ?>