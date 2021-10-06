<body>

    <!-- TOP Floatable elements ------------->
    <a class="float2" href="https://github.com/03prashantpk/" target="_blank">
        <img src="https://rapidapi.com/blog/wp-content/uploads/2017/01/octocat.gif" style=" width:60px; height:60px; border-radius: 50%;" alt="">
    </a>
    <a class="float3" href="https://www.linkedin.com/in/03prashantpk/" target="_blank">
        <img src="https://i.pinimg.com/originals/de/b4/6f/deb46f02a59e3b3a2aa58fac16290d63.gif" style=" width:60px; height:60px; border-radius: 50%;" alt="">
    </a>
    <a class="float" href="logout.php">
        <img src="https://cdn-icons-png.flaticon.com/512/1053/1053210.png" style=" width:60px; height:60px; border-radius: 50%;" alt="">
    </a>

    <!-- TOP Floatable elements End------------->

    <!-- Bottom Right Floatable elements------------->
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
            <a onclick="location.href='https://enally.in'" class="fab-action fab-action-3">
                <i class="fa fa-globe"></i>
            </a>
            <a onclick="location.href='logout.php'" class="fab-action fab-action-4">
                <i class="fa fa-sign-out"></i>
            </a>
        </div>
    </div>
    <!-- Bottom Right Floatable elements End------------->


    <p class="footers">
        Developed By Prashant Kumar<br>If you want to work on this project <a href='https://www.linkedin.com/in/03prashantpk/'>Ping me.</a>
    </p>
</body>

<!-- Stickey Header----------->
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


<!---- Delete script ----->
<script type="text/javascript">
    $(document).ready(function() {
        $('.btn-success').click(function() {
            var id = $(this).attr("id");
            if (confirm("Are you sure you want to delete this Member?")) {
                $.ajax({
                    type: "POST",
                    url: "delete.php",
                    data: ({
                        id: id
                    }),
                    cache: false,
                    success: function(html) {}
                });
            } else {
                return false;
            }
        });
    });
</script>

<!-----Onclick Delete WIthout Page reload Using Ajax---------->
<script>
    $(document).ready(function() {
        $.ajax({
            url: "View_ajax.php",
            type: "POST",
            cache: false,
            success: function(dataResult) {
                $('#table').html(dataResult);
            }
        });
        $(document).on("click", ".delete", function() {
            var $ele = $(this).parent().parent();
            $.ajax({
                url: "delete_ajax.php",
                type: "POST",
                cache: false,
                data: {
                    id: $(this).attr("data-id")
                },
                success: function(dataResult) {
                    var dataResult = JSON.parse(dataResult);
                    if (dataResult.statusCode == 200) {
                        $ele.fadeOut().remove();
                    }
                }
            });
        });
    });
</script>

<!-----Onclick Increase download count Without Page reload Using Ajax---------->
<script>
    $(document).ready(function() {
        $.ajax({
            url: "View_ajax.php",
            type: "POST",
            cache: false,
            success: function(dataResult) {
                $('#table').html(dataResult);
            }
        });
        $(document).on("click", ".count", function() {
            var $ele = $(this).parent().parent();
            $.ajax({
                url: "count_ajax.php",
                type: "POST",
                cache: false,
                data: {
                    id: $(this).attr("data-id")
                },
                success: function(dataResult) {
                    var dataResult = JSON.parse(dataResult);
                    if (dataResult.statusCode == 200) {
                        $ele.fadeOut().remove();
                    }
                    alert("Deleted");
                }
            });
        });
    });
</script>

<!--- Refresh Content without Relaoding page using div ---->
<script language="javascript" type="text/javascript">
    var timeout = setInterval(reloadChat, 1000);

    function reloadChat() {

        $('#content').load('main.php');
    }
</script>

<!--- Refresh Content without Relaoding page using div ---->
<script language="javascript" type="text/javascript">
    var timeout = setInterval(reloadChat, 900);

    function reloadChat() {

        $('#totalpg').load('totalpageview.php');
    }
</script>

</html>