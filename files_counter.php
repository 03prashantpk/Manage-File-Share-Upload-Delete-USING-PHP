<?php
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

// Download Counter
