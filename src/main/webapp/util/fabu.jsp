<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/4/16
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
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
    <script type="text/javascript" src="../back/js/index.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->

    <style>
        .informInner {width: 100%; height: auto; margin-bottom: 12px;}
        .informInner:after {display: block; clear: both; content: ""; overflow: hidden;}
        .informLeft {float: left; width: 80px; height: 40px; text-align: right; line-height: 40px; font-size: 16px;}
        .informCenter {float: left; width: 33.222%; margin-left: 15px; position: relative;}
        .informRight p {width: 100%; font-size: 12px; color: #ff0000;}
        .informCenter input {width: 100%; height: 40px; padding-left: 15px; line-height: 40px; border: 1px solid #d2d2d2; box-sizing: border-box; vertical-align: top;}
        .informCenter span,
        .informState select,
        .informStateW,
        .informStateW em {display: inline-block; *display: inherit; *zoom: 1; float: none;}
        .informRight input.search {width: 74.222%; min-width: 220px; height: 40px; padding-left: 15px; line-height: 40px; font-size: 14px; border: 1px solid #d2d2d2; box-sizing: border-box;	}
        .informRight input#searchBtn {width: 60px; height: 40px; background: #11aee8 url(../back/images/search.png) no-repeat center; vertical-align: top; cursor: pointer; -webkit-transition: all 0.3s ease-out; -ms-transition: all 0.3s ease-out; -o-transition: all 0.3s ease-out; -moz-transition: all 0.3s ease-out; transition: all 0.3s ease-out;}
        .informRight input#searchBtn:hover {background-color: #0E9ED3;}
        .formSelect ul {padding: 0 10px;}
        .formSelect ul li {height: 38px; line-height: 38px; padding-left: 8px; color: #787878; border-bottom: 1px dashed #eee;}
        .informW h2 {margin-bottom: 10px; font-size: 16px; line-height: 30px;}
        .informState {width: 44.333%; height: 40px; min-width: 356px;}
        .informState span {vertical-align: top; width: 70px; height: 40px; margin-left: 25px; line-height: 40px; font-size: 16px;}
        .informStateW {width: 35.888%; height: 40px; line-height: 40px; position: relative;}
        .informStateW em {width: 36px; height: 38px; position: absolute; right: 1px; top: 50%; margin-top: -19px; background: #fff url(../back/images/btn_sj_inform.png) no-repeat center; z-index: 66; cursor: pointer;}
        .informState select {width: 100%; height: 100%; padding: 0 0 0 15px; line-height: 40px; color: #585656; box-sizing: border-box; border: 1px solid #d2d2d2; position: absolute; left: 0; top: 0; z-index: 23; appearance:none;-moz-appearance:none;-webkit-appearance:none;}
        .informState select::-ms-expand { display: none; }
        .informList li {float: left; width: 140px; height: 38px; margin-left: 20px; margin-top: 10px; /*margin-left: 1.46%;*/ line-height: 38px; text-align: center; border-radius: 4px;}
        .informList li:first-child {margin-left: 0;}
        .informList li a {display: block; color: #fff; background: #11AEE8; border-radius: 4px;}
        .informList li a:hover {background: #0B92C4;}
        .block textarea {width: 100%; height: 100%; padding: 15px; box-sizing: border-box;}
        .informBottomL input {width: 15px; height: 15px; margin-left: 28px; -webkit-appearance: checkbox; vertical-align: middle; }
        .informBottomL input:first-child {margin-left: 0;}
        .informBottom a {display: block; float: right; width: 160px; height: 40px; text-align: center; color: #fff; background: #12BE16; border-radius: 20px;}
        .informBottom a:hover {background: #07990B;}

        .informRightDh input {width: 74.222%; height: 40px; padding-left: 15px; line-height: 40px; border: 1px solid #d2d2d2; box-sizing: border-box;}
        .informInnerBeizhu .informLeft,
        .informInnerBeizhu .informCenter,
        .informInnerBeizhu .informRight {height: 16px; line-height: 16px;}
    </style>
</head>

<body class="sticky-header" style="height: 100%">

<section>

    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="../index.jsp"><img src="../images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="../index.jsp"><img src="../images/logo_icon.png" alt=""></a>
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
                        <li><a href="fabu.jsp">发布信息</a></li>
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
                        <li><a href="myinfo.jsp"> 编辑个人信息</a></li>
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
                发布信息
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="../index.jsp">Dashboard</a>
                </li>
                <li>
                    <a href="#">二手房信息</a>
                </li>
                <li class="active">发布信息</li>
            </ul>
        </div>
        <!-- page heading end-->

        <!--body wrapper start-->
        <div class="wrapper">
            <%--search start--%>
            <div class="informInner">
                <div class="informLeft">城市&nbsp;&nbsp;&nbsp;</div>
                <div class="informCenter informState" id="target">
                    <div class="informStateW"><select data-province="默认不限" id="city"></select><!-- 市 <--><em></em></div>
                    <span>区域</span><div class="informStateW"><select data-city="默认不限" id="district"></select><!-- 区 <--><em></em></div>
                </div>
            </div>
            <%--search end--%>
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            发布信息
                        </header>
                        <div class="panel-body">
                            <form role="form" class="form-horizontal adminex-form">
                                <div class="form-group has-success">
                                    <label class="col-lg-2 control-label">标题</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="拎包入住" id="h_tatil" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-success">
                                    <label class="col-lg-2 control-label">地址</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="xx路xx小区" id="h_address" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-error">
                                    <label class="col-lg-2 control-label">房型</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="x室x厅" id="h_type" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">面积</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="000.00" id="h_area" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">房屋朝向</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="例：东南" id="h_face" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">装修</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="例：精装||简装" id="h_renovation" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">高度</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="例：高楼层||中楼层||低楼层" id="h_heigth" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">房屋构造</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="板楼||塔板结合" id="h_structure" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">单价</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="00000" id="h_price_unit" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>
                                <div class="form-group has-warning">
                                    <label class="col-lg-2 control-label">总价</label>
                                    <div class="col-lg-10">
                                        <input type="text" placeholder="00000" id="h_price_total" class="form-control">
                                        <p class="help-block"></p>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-primary" type="button" id="submitBtn">提交</button>
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

<%--提交--%>
<script>
    // $("#login-button")
    $("#submitBtn").click(function () {

        var h_tatil=decodeURI($("#h_tatil").val());
        var h_address=decodeURI($("#h_address").val());
        var h_type=decodeURI($("#h_type").val());
        var h_area=$("#h_area").val();
        var h_face=decodeURI($("#h_face").val());
        var h_renovation=decodeURI($("#h_renovation").val());
        var h_heigth=decodeURI($("#h_heigth").val());
        var h_structure=decodeURI($("#h_structure").val());
        var h_price_unit=$("#h_price_unit").val();
        var h_price_total=$("#h_price_total").val();
        city_location_url=$("#city").find("option:selected").attr("data-code");
        h_district=decodeURI($("#district").val());

        $.ajax({
            url:"/house/insertHouse",
            type:"post",
            data:{
                "city_location_url":city_location_url,
                "h_district":h_district,
                "h_tatil":h_tatil,
                "h_address":h_address,
                "h_type":h_type,
                "h_area":h_area,
                "h_face":h_face,
                "h_renovation":h_renovation,
                "h_heigth":h_heigth,
                "h_structure":h_structure,
                "h_price_unit":h_price_unit,
                "h_price_total":h_price_total
            },
            dataType:"json",
            success:function (obj) {
                console.log(obj);
                if(obj.code==1001){
                    alert("发布成功，待审核！")
                }
                else {
                    alert("发布失败");
                }
            }
        })


    })
</script>


















<%--二级联动下拉框--%>
<script type="text/javascript" src="../back/js/distpicker.data.js"></script>
<script type="text/javascript" src="../back/js/distpicker.js"></script>

<script type="text/javascript">
    $('#target').distpicker({
        autoSelect: false,
//			province: '---- 所在省 ----',
//		city: '---- 所在市 ----',
//		district: '---- 所在区 ----'
    });
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



<%--当前用户昵称--%>
<script>
    var u_name=sessionStorage.getItem("u_name");
    // console.log(uname);
    if(u_name!=null&&u_name!=undefined)
    {
        $("#now_user").html(u_name);
    }else {
        $("#now_user").html("当前没有登陆");
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
