<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/4/19
  Time: 11:54
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

    <title>审核信息</title>

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

            <!--sidebar nav start-->
            <ul class="nav nav-pills nav-stacked custom-nav">
                <li class="active"><a href="guanli.jsp"><i class="fa fa-home"></i> <span>管理信息</span></a></li>

                <li class="menu-list"><a href="#"><i class="fa fa-th-list"></i> <span>更多</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="shenhe.jsp">审核信息</a></li>
                        <li><a href="yonghu.jsp">管理用户</a></li>
                    </ul>
                </li>

                <li><a href="index.jsp"><i class="fa fa-sign-in"></i> <span>退出</span></a></li>

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
                            <li><a href="index.jsp"><i class="fa fa-sign-out"></i>退出</a></li>
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
                审核
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">后台</a>
                </li>
                <li>
                    <a href="#">更多</a>
                </li>
                <li class="active"> 审核 </li>
            </ul>
        </div>
        <!-- page heading end-->


        <%--search start--%>
        <div class="informInner">
            <div class="informLeft">城市&nbsp;&nbsp;&nbsp;</div>
            <div class="informCenter informState" id="target">
                <div class="informStateW"><select data-province="默认不限" id="city"></select><!-- 市 <--><em></em></div>
            </div>
            <button class="btn btn-info" type="button" id="searchBtn">查询</button>
        </div>
        <%--search end--%>

        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            房源
                        </header>
                        <div class="panel-body">
                            <table class="table table-striped table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>区</th>
                                    <th>标题</th>
                                    <th>地址</th>
                                    <th>房型</th>
                                    <th>面积</th>
                                    <th>朝向</th>
                                    <th>装修</th>
                                    <th>高度</th>
                                    <th>结构</th>
                                    <th>单价 元/m^2</th>
                                    <th>总价 万</th>
                                    <th>删除</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">

                                </tbody>
                                <div>
                                    <tfoot id="tfoot">
                                    <%--设置分页信息--%>
                                    <%--			<tr><td></td></tr>--%>
                                    <%--			<tr><td></td></tr>--%>
                                    <%--			<tr>--%>
                                    <%--				<td colspan="3"></td>--%>
                                    <%--				<td>--%>
                                    <%--					<button onclick="tofindByPage(1)">首页</button>&nbsp;&nbsp;&nbsp;--%>
                                    <%--					<button onclick="tofindByPage()">上一页</button>&nbsp;&nbsp;&nbsp;--%>
                                    <%--					<button onclick="tofindByPage()">下一页</button>&nbsp;&nbsp;&nbsp;--%>
                                    <%--					<button onclick="tofindByPage()">末页</button>&nbsp;&nbsp;&nbsp;--%>
                                    <%--				</td>--%>
                                    <%--			</tr>--%>
                                    </tfoot>
                                </div>

                            </table>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!--body wrapper end-->


    </div>
    <!-- main content end-->
</section>


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
    var  city_location_url="320100";
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


<%--分页查询--%>
<script>
    findByPage(1);
    function findByPage(currentPage){
        $("#tbody").empty();
        $("#tfoot").empty();
        $.ajax({
            url:"/house/getHouseByJudge",
            type:"post",
            data:{
                "city_location_url":city_location_url,
                "currentPage":currentPage,
            },
            dataType:"json",
            success:function (obj) {
                if(obj.code==9001){
                    // console.log(obj);

                    $("#tbody").empty();
                    $(obj.obj).each(function (index,item) {
                        // console.log(index+" = "+item);
                        //每遍历一次，给表格增加一行数据
                        //需要添加的行数据
                        var str = "<tr>\n" +
                            "                                        <td>"+item.h_id+"</td>\n" +
                            "                                        <td>"+item.h_district+"</td>\n" +
                            "                                        <td>"+item.h_title+"</td>\n" +
                            "                                        <td>"+item.h_address+"</td>\n" +
                            "                                        <td>"+item.h_type+"</td>\n" +
                            "                                        <td>"+item.h_area+"</td>\n" +
                            "                                        <td>"+item.h_face+"</td>\n" +
                            "                                        <td>"+item.h_renovation+"</td>\n" +
                            "                                        <td>"+item.h_heigth+"</td>\n" +
                            "                                        <td>"+item.h_structure+"</td>\n" +
                            "                                        <td>"+item.h_price_unit+"</td>\n" +
                            "                                        <td>"+item.h_price_total+"</td>\n" +
                            "                                        <td><a class=\"edit\" href=\"javascript:judgeInfo("+item.h_id+");\">通过审核</a></td>\n"+
                            "                                    </tr>";
                        $("#tbody").append(str);
                    })

                    //设置分页按钮
                    var pageInfo=
                        "\t\t\t<tr align=\"center\">\n" +
                        "\t\t\t\t<td colspan=\"15\">\n" +
                        "\t\t\t\t\t<button onclick=\"tofindByPage(1)\">首页</button>&nbsp;&nbsp;&nbsp;\n" +
                        "\t\t\t\t\t<button onclick=\"tofindByPage("+obj.obj.prePage+")\">上一页</button>&nbsp;&nbsp;&nbsp;\n" +
                        "\t\t\t\t\t<button onclick=\"tofindByPage("+obj.obj.nextPage+")\">下一页</button>&nbsp;&nbsp;&nbsp;\n" +
                        "\t\t\t\t\t<button onclick=\"tofindByPage("+obj.obj.pages+")\">末页</button>&nbsp;&nbsp;&nbsp;\n" +
                        "\t\t\t\t</td>\n" +
                        "\t\t\t</tr>";
                    $("#tfoot").append(pageInfo);
                }

            }
        })
    }


    function tofindByPage(page) {
        //调用分页查询
        findByPage(page);
    }
</script>

<%--当前用户昵称--%>
<script>
    var m_name=sessionStorage.getItem("m_name");
    var m_id=sessionStorage.getItem("m_id");
    // console.log(uname);
    if(m_name!=null&&m_name!=undefined)
    {
        $("#now_user").html(m_name);
    }
    else {
        location.href="404.html";
    }
</script>

<%--条件查询--%>
<script>
    //页面查询按钮绑定点击事件
    $("#searchBtn").click(function () {
        // var city_code1=$("#city").val();
        city_location_url=$("#city").find("option:selected").attr("data-code");
        h_district=decodeURI($("#district").val());

        findByPage(1);
        function findByPage(currentPage){
            $("#tbody").empty();
            $("#tfoot").empty();
            $.ajax({
                url:"/house/getHouseByJudge",
                type:"post",
                data:{
                    "city_location_url":city_location_url,
                    "currentPage":currentPage,
                },
                dataType:"json",
                success:function (obj) {
                    if(obj.code==9001){
                        // console.log(obj);

                        $("#tbody").empty();
                        $(obj.obj).each(function (index,item) {
                            // console.log(index+" = "+item);
                            //每遍历一次，给表格增加一行数据
                            //需要添加的行数据
                            var str = "<tr>\n" +
                                "                                        <td>"+item.h_id+"</td>\n" +
                                "                                        <td>"+item.h_district+"</td>\n" +
                                "                                        <td>"+item.h_title+"</td>\n" +
                                "                                        <td>"+item.h_address+"</td>\n" +
                                "                                        <td>"+item.h_type+"</td>\n" +
                                "                                        <td>"+item.h_area+"</td>\n" +
                                "                                        <td>"+item.h_face+"</td>\n" +
                                "                                        <td>"+item.h_renovation+"</td>\n" +
                                "                                        <td>"+item.h_heigth+"</td>\n" +
                                "                                        <td>"+item.h_structure+"</td>\n" +
                                "                                        <td>"+item.h_price_unit+"</td>\n" +
                                "                                        <td>"+item.h_price_total+"</td>\n" +
                                "                                        <td><a class=\"edit\" href=\"javascript:judgeInfo("+item.h_id+");\">删除</a></td>\n"+
                                "                                    </tr>";
                            $("#tbody").append(str);
                        })

                        //设置分页按钮
                        var pageInfo=
                            "\t\t\t<tr align=\"center\">\n" +
                            "\t\t\t\t<td colspan=\"15\">\n" +
                            "\t\t\t\t\t<button onclick=\"tofindByPage(1)\">首页</button>&nbsp;&nbsp;&nbsp;\n" +
                            "\t\t\t\t\t<button onclick=\"tofindByPage("+obj.obj.prePage+")\">上一页</button>&nbsp;&nbsp;&nbsp;\n" +
                            "\t\t\t\t\t<button onclick=\"tofindByPage("+obj.obj.nextPage+")\">下一页</button>&nbsp;&nbsp;&nbsp;\n" +
                            "\t\t\t\t\t<button onclick=\"tofindByPage("+obj.obj.pages+")\">末页</button>&nbsp;&nbsp;&nbsp;\n" +
                            "\t\t\t\t</td>\n" +
                            "\t\t\t</tr>";
                        $("#tfoot").append(pageInfo);
                    }

                }
            })
        }


        function tofindByPage(page) {
            //调用分页查询
            findByPage(page);
        }


    })
</script>

<%--删除--%>
<script>
    function judgeInfo(h_id) {
        // console.log(h_id);
        $.ajax({
            url:"/house/judgeInfo",
            type:"post",
            dataType:"json",
            data:{
                "city_location_url":city_location_url,
                "h_id":h_id,
            },
            success:function (obj) {
                if(obj.code==1001){
                    alert(obj.msg)
                    location.reload()
                    // console.log(obj);
                }
                else {
                    alert(obj.msg)
                }
            }
        })
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
