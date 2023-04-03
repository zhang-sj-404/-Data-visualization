<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/4/7
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="#" type="image/png">

    <title>个人信息</title>

    <!--data table-->
    <link rel="stylesheet" href="../js/data-tables/DT_bootstrap.css" />

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}/view_js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/view_js/echarts.js"></script>
    <script src="${pageContext.request.contextPath}/view_js/ecStat.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->


    <style>
        /*个人中心*/
        .personBox {padding: 18px 30px 25px 30px; margin-top: 20px; background: #fff; border: 1px solid #ececec;}
        .personTit {height: 38px; line-height: 38px; text-align: center;}
        .personTit a {display: inline-block; width: 140px; height: 38px; margin: 0 12px; color: #adadad; font-size: 16px; border: 1px solid #ececec; border-radius: 4px; *display: inline; *zoom: 1; float: none;}
        .personTit a.active {color: #fff; background: #11AEE8;}
        .personTit a:hover {color: #fff; background: #11AEE8;}
        .personHead {padding-bottom: 0px; margin-top: 10px; border-bottom: 1px solid #eee;}
        .personHeadL {float: left; width: 125px; text-align: center;}
        .personHeadL p {color: #11AEE8; line-height: 40px;}
        .personPic {height: 125px; border-radius: 4px; overflow: hidden;}
        .personPic img {width: 100%;}
        .personPicChage {width: 100%; height: 35px; position: relative; overflow: hidden; cursor: pointer;}
        .personPicChage input {width: 100%; height: 100%; position: absolute;}
        .personPicChage input#file {z-index: 99; font-size: 100px; right: 0; left: 0; opacity:0; filter:alpha(opacity=0); cursor: pointer;}
        .personPicChage input#sub {z-index: 98; font-size: 14px; color: #FF0000; line-height: 35px; text-align: center; top: 0; left: 0;}
        .personHeadR {float: left; margin-left: 20px; padding-top: 35px;}
        .personHeadR p {line-height: 30px;}
        .personW {padding-left: 15px;}
        .personW p {height: 35px; line-height: 35px; margin-bottom: 5px;}
        .personW p span {display: inline-block; height: 100%; vertical-align: top; *display: initial; *zoom: 1; float: none;}
        .personW p span.personWLeft {width: 105px;}
        .personW p span.personWLeft1 {width: 80px;}
        .personW p span.personWCenter {width: 206px; color: #c1c1c1;}
        .personW p span.personWCenter em {margin-left: 10px;}
        .personW p span.personWCenter1 {width: auto;}
        .personW p span.personRight {margin-left: 12px;}
        .personW p span.personRight a {color: #11AEE8;}
        .personW p input {width: 206px; height: 35px; padding-left: 10px; line-height: 35px; border: 1px solid #E5E5E5; box-sizing: border-box;}
        .personW p input.active {border: 1px solid #11AEE8;}
        .personSure {display: block; width: 202px; height: 38px; margin-top: 10px; line-height: 38px; color: #fff; background: #12be16; cursor: pointer; -webkit-transition: all 0.3s ease-out; -ms-transition: all 0.3s ease-out; -o-transition: all 0.3s ease-out; -moz-transition: all 0.3s ease-out; transition: all 0.3s ease-out;}
        .personSure:hover {background: #07990B;}

        /*20个人中心-修改密码*/
        .personPassBox {padding: 22px 0 40px 0;}
        .personPassUl {margin-top: 45px;}
        .personPassUl li {float: left; width: 50%; height: 480px;}
        .personPassUl li .personW {height: 100%;}
        .personPassUl li:first-child .personPassW {height: 100%; font-size: 16px; color: #7f7f7f; border-right: 1px solid #dcdcdc;}
        .personPassW h3 {padding-left: 7.46%; margin-bottom: 45px; line-height: 66px; font-size: 18px; font-weight: bold; text-align: center; color: #666;}
        .personPassW p {width: 100%; height: 48px; margin-bottom: 25px; line-height: 48px;}
        .personPassW p span {display: inline-block; width: 31.56%; height: 100%; text-align: right; vertical-align: top; *display: inline; *zoom: 1; float: none;}
        .personPassW p input {width: 39.42%; height: 48px; margin-left: 25px; padding-left: 15px; font-size: 16px; border: 1px solid #d2d2d2; box-sizing: border-box;}
        .personPassW p input.active {border: 1px solid #11AEE8;}
        .personPassW p.sure {margin-top: 42px;}
        .personPassW p.sure input {padding: 0; text-align: center; color: #fff; background: #11AEE8; border: 1px solid #11AEE8; border-radius: 4px; cursor: pointer; -webkit-transition: all 0.3s ease-out; -ms-transition: all 0.3s ease-out; -o-transition: all 0.3s ease-out; -moz-transition: all 0.3s ease-out; transition: all 0.3s ease-out;}
        .personPassW p.sure input:hover {background: #0B92C4;}
    </style>

</head>

<body class="sticky-header" style="height: 100%">

<section>

    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.jsp"><img src="../images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.html"><img src="../images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="../images/photos/user-avatar.png" class="media-object">
                    <div class="media-body">
                        <h4><a href="#">John Doe</a></h4>
                        <span>"Hello There..."</span>
                    </div>
                </div>

                <h5 class="left-nav-title">Account Information</h5>
                <ul class="nav nav-pills nav-stacked custom-nav">
                    <li><a href="#"><i class="fa fa-user"></i> <span>Profile</span></a></li>
                    <li><a href="#"><i class="fa fa-cog"></i> <span>Settings</span></a></li>
                    <li><a href="#"><i class="fa fa-sign-out"></i> <span>Sign Out</span></a></li>
                </ul>
            </div>

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="active"><a href="../index.jsp"><i class="fa fa-home"></i> <span>主页</span></a></li>

                <li class="menu-list"><a href="#"><i class="fa fa-th-list"></i> <span>二手房信息</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="house_list.jsp">当前市房价</a></li>
                    </ul>
                </li>


                <li class="menu-list"><a href=""><i class="fa fa-tasks"></i> <span>我的收藏</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="myshoucang.jsp">收藏夹</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href="#"><i class="fa fa-cogs"></i> <span>个人信息</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="#"> 编辑个人信息</a></li>
                    </ul>
                </li>


                <li><a href="login.jsp"><i class="fa fa-sign-in"></i> <span>Login Page</span></a></li>

            </ul>
            <!--sidebar nav end-->

        </div>
    </div>
    <!-- left side end-->

    <!-- main content start-->
    <div class="main-content" >

        <!-- header section start-->
        <div class="header-section">

            <!--toggle button start-->
            <a class="toggle-btn"><i class="fa fa-bars"></i></a>
            <!--toggle button end-->


            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                            <img src="../images/photos/user-avatar.png" alt="" />
                            <span id="now_user"></span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="myshoucang.jsp"><i class="fa fa-user"></i>  我的收藏</a></li>
                            <li><a href="myinfo.jsp"><i class="fa fa-cog"></i>  修改信息</a></li>
                            <li><a href="login.jsp"><i class="fa fa-sign-out"></i>切换账号</a></li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!--notification menu end -->

        </div>
        <!-- header section end-->

        <!-- page heading start-->
        <div class="page-heading">
            <h3>
                个人信息
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="../index.jsp">Dashboard</a>
                </li>
                <li>
                    <a href="#">个人信息</a>
                </li>
                <li class="active">编辑个人信息</li>
            </ul>
        </div>
        <!-- page heading end-->

        <div class="personBox">
                    <div class="personHead clearfix">
                        <div class="personHeadR" id="info1">
                            <p>账号ID：请先登录</p>
                            <p>昵称：</p>
                        </div>
                    </div>

                    <div class="personW" id="info2">
                        <p><span class="personWLeft personWLeft1">手机号：</span><span class="personWCenter"></span></p>
                        <p><span class="personWLeft personWLeft1">邮箱：</span><span class="personWCenter"></span></p>
                        <p><span class="personWLeft personWLeft1">密码：</span><span class="personWCenter"></span></p>
                    </div>

                </div>

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            修改个人信息
                        </header>
                        <div class="panel-body">
                            <form role="form" class="form-horizontal adminex-form">
                                <div class="form-group has-success">
                                    <label class="col-lg-2 control-label">昵称</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="" id="u_name" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-error">
                                    <label class="col-lg-2 control-label">手机号</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="" id="u_phone" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">邮箱</label>
                                    <div class="col-lg-10">
                                        <input type="email" placeholder="" id="u_email" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">密码</label>
                                    <div class="col-lg-10">
                                        <input type="password" placeholder="" id="u_password" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-primary" type="button" id="searchBtn">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!--body wrapper end-->

    </div>
    <!-- main content end-->

</section>


<%--当前用户昵称--%>
<script>
    var u_name=sessionStorage.getItem("u_name");
    var u_id=sessionStorage.getItem("u_id");
    // console.log(uname);
    if(u_name!=null&&u_name!=undefined)
    {
        $("#now_user").html(u_name);
    }else {
        $("#now_user").html("当前没有登陆");
    }
</script>

<%--获取当前个人信息--%>
<script>
    $.ajax({
        url:"/user/findUserByid",
        type:"post",
        data:{
            "u_id":u_id,
        },
        dataType:"json",
        success:function (obj) {
            // console.log(obj);
            if(obj.code==1001){
                $("#info1").empty();
                $("#info2").empty();
                var str1="<p>账号ID："+obj.obj.u_id+"</p>\n" +
                    "                            <p>昵称："+obj.obj.u_name+"</p>";
                var str2="<p><span class=\"personWLeft personWLeft1\">手机号：</span><span class=\"personWCenter\">"+obj.obj.u_phone+"</span></p>\n" +
                    "                        <p><span class=\"personWLeft personWLeft1\">邮箱：</span><span class=\"personWCenter\">"+obj.obj.u_email+"</span></p>\n" +
                    "                        <p><span class=\"personWLeft personWLeft1\">密码：</span><span class=\"personWCenter\">"+obj.obj.u_password+"</span></p>";

                $("#info1").append(str1);
                $("#info2").append(str2);

                sessionStorage.setItem("u_name",obj.obj.u_name);
                u_name=sessionStorage.getItem("u_name");
                // console.log(u_name);
                if(u_name!=null&&u_name!=undefined)
                {
                    $("#now_user").html(u_name);
                }else {
                    $("#now_user").html("当前没有登陆");
                }
            }
            else {
                alert("请求失败");
            }
        }
    })
</script>



<%--修改信息--%>
<script>
    //页面查询按钮绑定点击事件
    $("#searchBtn").click(function () {
        // var city_code1=$("#city").val();

        var u_name_gai=decodeURI($("#u_name").val());
        var u_phone_gai=$("#u_phone").val();
        var u_email_gai=$("#u_email").val();
        var u_password_gai=$("#u_password").val();
        $.ajax({
                url:"/user/updateMyInfo",
                type:"post",
                data:{
                    "u_id":u_id,
                    "u_name":u_name_gai,
                    "u_phone":u_phone_gai,
                    "u_email":u_email_gai,
                    "u_password":u_password_gai,
                },
                dataType:"json",
                success:function (obj) {
                    if(obj.code==2001){
                        alert("修改成功");
                        location.reload();
                    }
                    else {
                        alert("修改失败")
                    }

                }
            })




    })
</script>








<script>
    var  city_location_url="";
    if(location.search.indexOf("=")!=-1)
    {
        city_location_url=location.search.split("=")[1].substr(0,6);
    }
    var h_district=""
    if(location.search.indexOf("&")!=-1)
    {
        h_district=decodeURI(location.search.split("&")[1].split("=")[1],"utf-8");
    }
</script>





<!-- Placed js at the end of the document so the pages load faster -->
<script src="../js/jquery-1.10.2.min.js"></script>
<script src="../js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/modernizr.min.js"></script>
<script src="../js/jquery.nicescroll.js"></script>

<!--data table-->
<script type="text/javascript" src="../js/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="../js/data-tables/DT_bootstrap.js"></script>

<!--common scripts for all pages-->
<script src="../js/scripts.js"></script>

<!--script for editable table-->
<script src="../js/editable-table.js"></script>

<!-- END JAVASCRIPTS -->
<script>
    jQuery(document).ready(function() {
        EditableTable.init();
    });
</script>

</body>
</html>
