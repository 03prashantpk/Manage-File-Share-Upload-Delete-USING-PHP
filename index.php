<?php session_start(); /* Starts the session */
if (!isset($_SESSION['UserData']['Username'])) {
    header("location:login.php");
    exit;
}

// Counting Files Starts here
// Count total Number of images including (jpg, jpeg, png, gif)
@$count_image_jpg = count(glob("gallery/*.jpg"));
@$count_image_jpeg = count(glob("gallery/*.jpeg"));
@$count_image_png = count(glob("gallery/*.png"));
@$count_image_gif = count(glob("gallery/*.gif"));
$count_total_images = $count_image_gif + $count_image_png + $count_image_jpeg + $count_image_jpg;

// Count Total Number of pdf
$count_total_pdf = count(glob("gallery/*.pdf"));

// Count Total Number of ppt
@$count_ppt = count(glob("gallery/*.ppt"));
@$count_pptx = count(glob("gallery/*.pptx"));
$count_total_ppt = $count_ppt + $count_pptx;

// Count Total Number of documents
@$count_doc = count(glob("gallery/*.doc"));
@$count_docx = count(glob("gallery/*.docx"));
@$count_txt = count(glob("gallery/*.txt"));
@$count_xls = count(glob("gallery/*.xls"));
$count_total_docs = $count_doc + $count_docx + $count_txt + $count_xls;

// Count Total Number of videos
@$count_video_mp4 = count(glob("gallery/*.mp4"));
@$count_video_3gp = count(glob("gallery/*.3gp"));
@$count_video_avi = count(glob("gallery/*.avi"));
@$count_video_mkv = count(glob("gallery/*.mkv"));
$count_total_videos = $count_video_avi + $count_video_3gp + $count_video_mp4 + $count_video_mkv;


// Count Total Number of audio
@$count_music_mp3 = count(glob("gallery/*.mp3"));
@$count_music_aac = count(glob("gallery/*.aac"));
@$count_music_ogg = count(glob("gallery/*.ogg"));
@$count_music_wav = count(glob("gallery/*.wav"));
$count_total_musics = $count_music_mp3 + $count_music_aac + $count_music_wav;



// Count Total Number of archive
@$count_archive_zip = count(glob("gallery/*.zip"));
@$count_archive_rar = count(glob("gallery/*.rar"));
$count_total_archive = $count_archive_zip + $count_archive_rar;
// Counting files ends here


?>

<html>

<head>
    <title>PHP - Server File Manager</title>
</head>
<link href="prashant.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://use.fontawesome.com/beeac301e9.js"></script>


<body>




    <h1>Manage Your Files</h1>

    <p><?php if ($_SESSION['UserData']['Username'] == 'prashant') {
            echo "Superuser Account - " . $_SESSION['UserData']['Username'];
        } else {
            echo 'Normal User Account';
        }  ?></p>
    <div class="padding2">
        <h5 class="header" id="myHeader"><?php echo "Images (" . $count_total_images . ") | Presentation (" . $count_total_ppt . ") | Documents (" . $count_total_docs . ") | Videos (" . $count_total_videos . ") | Pdf (" . $count_total_pdf . ") | Musics (" . $count_total_musics . ")" . "| Archives (" . $count_total_archive . ")" ?></h5>
    </div>

    <div class="content">
        <?php

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

        //echo $_SESSION['UserData']['Username'] 

        if ($_SESSION['UserData']['Username'] == 'prashant') {
            $deleteopt = "<input class='delete' value='Delete' type='submit' name='delete'>  <i class='fa fa-trash-o'></i>";
        } else {
            $deleteopt = '<span class="tooltip">Info <i class="fa fa-info-circle" aria-hidden="true"></i><span class="tooltiptext">Login in As Superuser for more options</span></span>';
        }

        //Start the list
        printf("<ul>\n");

        for ($index = 0; $index < $count; $index++) {
            $ext = pathinfo($dirArray[$index], PATHINFO_EXTENSION);

            if ($dirArray[$index] != '.' && $dirArray[$index] != '..' && $ext != "xml") {

                if ($ext == 'jpg' || $ext == 'jpeg' || $ext == 'png' || $ext == 'gif') {
                    $min = "<i class='fa fa-file-image-o'></i>";
                    $main_color = 'style="background-color: #9ddfc5;"';
                    $imgs = ' ';
                } else if ($ext == 'mp4' || $ext == 'mkv' || $ext == '3gp') {
                    $min = '<i class="fa fa-file-video-o"></i>';
                    $main_color = 'style="background-color: #baf8a1;"';
                    $imgs = ' ';
                } else if ($ext == 'mp3' || $ext == 'ogg' || $ext == 'aac' || $ext == 'm4a' || $ext == 'wav') {
                    $min = '<i class="fa fa-music"></i>';
                    $main_color = 'style="background-color: #f1d1d1;"';
                    $imgs = ' ';
                } else if ($ext == 'pptx' || $ext == 'ppt') {
                    $min = '<i class="fa fa-file-powerpoint-o"></i>';
                    $main_color = 'style="background-color: #faf394;"';
                    $imgs = ' ';
                } else if ($ext == 'doc' || $ext == 'docx' || $ext == 'txt' || $ext == 'xls') {
                    $min = '<i class="fa fa fa-music"></i>';
                    $main_color = 'style="background-color: #ebd5fa;"';
                    $imgs = ' ';
                } else if ($ext == 'pdf') {
                    $min = '<i class="fa fa-file-pdf-o"></i>';
                    $main_color = 'style="background-color: #a5edfa; }";';
                    //$imgs = "<img class='imgs' src='https://www.vidalifinishinggroup.com/wp-content/uploads/2019/04/1504326172_tekken7.png'>";
                    $imgs = ' ';
                } else if ($ext == 'rar' || $ext == 'zip') {
                    $min = '<i class="fa fa-file-archive-o"></i>';
                    $main_color = 'style="background-color: #aaf7d9; }";';
                    //$imgs = "<img class='imgs' src='https://www.vidalifinishinggroup.com/wp-content/uploads/2019/04/1504326172_tekken7.png'>";
                    $imgs = ' ';
                }


                $data_type = "mb";
                $filedate = date("d F Y, H:i:s", filemtime("gallery/$dirArray[$index]"));
                $filesize = number_format(filesize("gallery/$dirArray[$index]") / 1000000, 2);
                printf("<div class='padding'> $imgs <div $main_color class='main'><span class='list'>$min</span> <span class='name'> $dirArray[$index]</span> <br><span class='date'> Created on : $filedate </span>  <span class='size'>Size-  $filesize$data_type</span>
            
            <form action='' method='POST' class='delete'>
                <input type='text' hidden name='filenamedelete' value='gallery/$dirArray[$index]' >
                " . @$deleteopt . "
            </form>

            <input type='text' hidden value='gallery/$dirArray[$index]' id='myInput'>
            <a href='gallery/$dirArray[$index]' download >\n");

                printf("<span class='download'>Download <i class='fa fa-download'></i></span>");
                printf("</a><span class='download' onclick='copyText()'>Share <i class='fa fa-share-alt'></i></span></div></div>\n");
            } else if ($count <= 2) {
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
    </div>
</body>
<p style="color: #2c2c2c34;">Developed By Prashant Kumar</p>
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

<script>
    window.onscroll = function() {
        myFunction()
    };

    var header = document.getElementById("myHeader");
    var sticky = header.offsetTop;

    function myFunction() {
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
        } else {
            header.classList.remove("sticky");
        }
    }
</script>

</html>