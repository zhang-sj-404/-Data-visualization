<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/4/19
  Time: 11:55
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

    <title>管理用户信息</title>


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
                用户
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">后台</a>
                </li>
                <li>
                    <a href="#">更多</a>
                </li>
                <li class="active"> 用户 </li>
            </ul>
        </div>
        <!-- page heading end-->



        <!--body wrapper start-->
        <div class="wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <section class="panel">
                        <header class="panel-heading">
                            用户信息
                        </header>
                        <div class="panel-body">
                            <table class="table table-striped table-hover table-bordered">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>昵称</th>
                                    <th>手机号</th>
                                    <th>邮箱</th>
                                    <th>密码</th>
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


<%--分页查询--%>
<script>
    findByPage(1);
    function findByPage(currentPage){
        $("#tbody").empty();
        $("#tfoot").empty();
        $.ajax({
            url:"/user/getAllUser",
            type:"post",
            data:{},
            dataType:"json",
            success:function (obj) {
                if(obj.code==8001){
                    // console.log(obj);

                    $("#tbody").empty();
                     //console.log(obj.obj);
                    $(obj.obj).each(function (index,item) {
                         //console.log(index+" = "+item);
                        //每遍历一次，给表格增加一行数据
                        //需要添加的行数据
                        var str = "<tr>\n" +
                            "                                        <td>"+item.u_id+"</td>\n" +
                            "                                        <td>"+item.u_name+"</td>\n" +
                            "                                        <td>"+item.u_phone+"</td>\n" +
                            "                                        <td>"+item.u_email+"</td>\n" +
                            "                                        <td>"+item.u_password+"</td>\n" +
                            "                                        <td><a class=\"edit\" href=\"javascript:deleteUser("+item.h_id+");\">删除</a></td>\n"+
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
