<?php
include("files_counter.php");
include("head.php");

// Total page Visit
$Page_visit_counter_file = "PV_counter.txt";
$total_page_visit = @file_get_contents($Page_visit_counter_file,);
$total_page_visit++;
file_put_contents($Page_visit_counter_file, $total_page_visit);

// total file counts
$filecounts =  "Images (" . $count_total_images . ") | Presentation (" . $count_total_ppt . ") | Documents (" . $count_total_docs . ") | Videos (" . $count_total_videos . ") | Pdf (" . $count_total_pdf . ") | Musics (" . $count_total_musics . ")" . "| Archives (" . $count_total_archive . ")";
?>

<head>
    <title>Enally - Server File Manager</title>
    <link href="prashant.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://use.fontawesome.com/beeac301e9.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="icon" href="assets/Fevicon.png" type="image/x-icon">
    <meta charset="UTF-8">
    <meta name="description" content="File sharing and managing application developed by Prashant Kr">
    <meta name="keywords" content="File Sharing, Explorer, Server Filemanager, File Manager">
    <meta name="author" content="Prashant Kumar">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>

    <h1>Manage Your Files</h1>
    <p><?php if ($_SESSION['UserData']['Username'] == 'prashant' || $_SESSION['UserData']['Username'] == 'amit') {
            echo "Superuser Account - " . $_SESSION['UserData']['Username'];
        } else {
            echo 'Normal User Account';
        }  ?>
    </p>

    <div class="padding2">
        <h5 class="header" id="myHeader"> <?php echo $filecounts; ?> <span style="float: right;">Total visit: <span id="totalpg"> </span></span></h5>
    </div>

    <div id="content">
        <!-- Code is on main.php---->
    </div>
</body>


<?php include("footer.php") ?>