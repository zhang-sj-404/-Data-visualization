<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/3/30
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人主页</title>
    <!--icheck-->
    <link href="./js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
    <link href="./js/iCheck/skins/square/square.css" rel="stylesheet">
    <link href="./js/iCheck/skins/square/red.css" rel="stylesheet">
    <link href="./js/iCheck/skins/square/blue.css" rel="stylesheet">

    <!--dashboard calendar-->
    <link href="./css/clndr.css" rel="stylesheet">

    <!--Morris Chart CSS -->
    <link rel="stylesheet" href="./js/morris-chart/morris.css">

    <!--common-->
    <link href="./css/style.css" rel="stylesheet">
    <link href="./css/style-responsive.css" rel="stylesheet">

    <%--center--%>
    <link href="./view_css/data_text.css" rel="stylesheet">
    <link href="./view_css/common.css" rel="stylesheet">

    <link href="css/city-picker.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />

    <script src="${pageContext.request.contextPath}/view_js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/view_js/echarts.js"></script>
    <script src="${pageContext.request.contextPath}/view_js/ecStat.js"></script>

<%--    <script>--%>
<%--        var d = document.documentElement;--%>
<%--        var cw = d.clientWidth || 750;--%>
<%--        document.documentElement.style.fontSize = (cw/750 * 100) + 'px';--%>
<%--    </script>--%>

    <style>
        * { touch-action: pan-y; }
    </style>

</head>
<body class="sticky-header">

<section>
    <!-- left side start-->
    <div class="left-side sticky-left-side">

        <!--logo and iconic logo start-->
        <div class="logo">
            <a href="index.jsp"><img src="images/logo.png" alt=""></a>
        </div>

        <div class="logo-icon text-center">
            <a href="index.html"><img src="images/logo_icon.png" alt=""></a>
        </div>
        <!--logo and iconic logo end-->

        <div class="left-side-inner">

            <!-- visible to small devices only -->
            <div class="visible-xs hidden-sm hidden-md hidden-lg">
                <div class="media logged-user">
                    <img alt="" src="images/photos/user-avatar.png" class="media-object">
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
                <li class="active"><a href="#"><i class="fa fa-home"></i> <span>主页</span></a></li>

                <li class="menu-list"><a href="#"><i class="fa fa-th-list"></i> <span>二手房信息</span></a>
                    <ul class="sub-menu-list" id="house_detail">
                        <li><a href="./util/fabu.jsp">发布信息</a></li>
                    </ul>
                </li>


                <li class="menu-list"><a href=""><i class="fa fa-tasks"></i> <span>我的收藏</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="./util/myshoucang.jsp">收藏夹</a></li>
                    </ul>
                </li>

                <li class="menu-list"><a href=""><i class="fa fa-cogs"></i> <span>个人信息</span></a>
                    <ul class="sub-menu-list">
                        <li><a href="./util/myinfo.jsp"> 编辑个人信息</a></li>
                    </ul>
                </li>


                <li><a href="./util/login.jsp"><i class="fa fa-sign-in"></i> <span>Login Page</span></a></li>

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


            <div class="btn-group">
                <button data-toggle="dropdown" type="button" class="btn btn-success btn-lg dropdown-toggle" >
                    <span id="current_city">选择城市</span> <span class="caret"></span>
                </button>
                <ul role="menu" class="dropdown-menu" id="allcity">
                </ul>
            </div>

            <!--notification menu start -->
            <div class="menu-right">
                <ul class="notification-menu">
                    <li>
                        <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown" >
                            <img src="images/photos/user-avatar.png" alt="" />
                            <span id="now_user"></span>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                            <li><a href="./util/myshoucang.jsp"><i class="fa fa-user"></i>  我的收藏</a></li>
                            <li><a href="./util/myinfo.jsp"><i class="fa fa-cog"></i>  修改信息</a></li>
                            <li><a href="./util/login.jsp"><i class="fa fa-sign-out"></i>切换账号</a></li>
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
                二手房数据可视化
            </h3>
            <ul class="breadcrumb">
                <li>
                    <a href="#">二手房数据可视化</a>
                </li>
                <li class="active"> My Dashboard </li>
            </ul>
            <%--最高最低单价，暂未实现--%>
            <div class="state-info">
                <section class="panel">
                    <div class="panel-body">
                        <div class="summary">
                            <span>区单价最高</span>
                            <h3 class="red-txt" id="district_max_price">$</h3>
                        </div>
                        <div id="income" class="chart-bar"></div>
                    </div>
                </section>
                <section class="panel">
                    <div class="panel-body">
                        <div class="summary">
                            <span>区单价最低</span>
                            <h3 class="green-txt" id="district_min_price">$</h3>
                        </div>
                        <div id="expense" class="chart-bar"></div>
                    </div>
                </section>
            </div>
        </div>
        <!-- page heading end-->


        <%--counter start--%>
        <div class="data_content">
            <div class="data_main">
                <div class="main_left fl">
                    <div class="left_1">
                        <div id="left_1_name" class="main_title">
                            装修占比
                        </div>
                        <div id="scatter" style="width: 100%;height: 90%;margin-top: 20px"></div>
                    </div>
                    <div class="left_2">
                        <div id="left_2_name" class="main_title">
                            房屋朝向占比
                        </div>
                        <div id="time" style="width: 100%;height: 90%;margin-top: 20px"></div>
                    </div>
                </div>
                <div class="main_center fl">
                    <div class="center_text">
                        <div id="main_name" class="main_title">
                            区单位平均价格
                        </div>
                        <div id='main' style="width:100%;height: 100%;"></div>
                    </div>
                </div>
                <div class="main_right fr">
                    <div class="right_1">
                        <div id="right_1_name" class="main_title">
                            总价与占地面积散点图
                        </div>
                        <div id="buildYear" style="width: 100%;height: 90%;margin-top: 20px"></div>
                    </div>
                    <div class="right_2">
                        <div id="right_2_name" class="main_title">
                            楼层高度与单位均价
                        </div>
                        <div id="roomType" style="width: 100%;height: 90%;margin-top: 20px"></div>
                    </div>
                </div>
            </div>
            <div class="data_bottom">
<%--                <div class="bottom_1 fl">--%>
<%--                    <div id="bottom_1_name" class="main_title">--%>
<%--                        时间与单位价格--%>
<%--                    </div>--%>
<%--                    <div id="time_aPrice" style="width: 100%;height: 90%;margin-top: 20px"></div>--%>
<%--                </div>--%>
                <div class="bottom_center fl">
                    <div class="bottom_2 fl">
                        <div id="bottom_2_name" class="main_title">
                            房型量与均价图
                        </div>
                        <div id="attention_price" style="width: 100%;height: 90%;margin-top: 20px"></div>
                    </div>
<%--                    <div class="bottom_3 fl">--%>
<%--                        <div id="bottom_3_name" class="main_title">--%>
<%--                            房型和面积--%>
<%--                        </div>--%>
<%--                        <div id="roomType_area" style="width: 100%;height: 90%;margin-top: 20px"></div>--%>
<%--                    </div>--%>
                </div>
<%--                <div class="bottom_4 fr">--%>
<%--                    <div id="bottom_4_name" class="main_title">--%>
<%--                        总楼层数占比--%>
<%--                    </div>--%>
<%--                    <div id="allFloor" style="width: 100%;height: 90%;margin-top: 20px"></div>--%>
<%--                </div>--%>
            </div>
            <div class="data_end">
                <div class="end_1 fl">
                    <div id="end_1_name" class="main_title">
                        各区二手房均价
                    </div>
                    <div id="screen1" style="width: 100%;height: 90%;margin-top: 20px"></div>
                </div>
                <div class="end_2 fr">
                    <div id="end_2_name" class="main_title">
                        各区二手房单价
                    </div>
                    <div id="screen2" style="width: 100%;height: 90%;margin-top: 20px"></div>
                </div>
            </div>
        </div>
        <%--counter end--%>




    </div>
    <!-- main content end-->
</section>




<%--city数据请求--%>
<script>
    // var city_location_url =location.search+"?city_id=320100";
    var city_name=[];

    // this.form.colors.push({['value']:this.inputValue})
    // alert("访问后台");
    $.ajax({
        url:"${pageContext.request.contextPath}/city/getAllCity",
        type:"post",
        dataType:"json",
        success:function (obj) {
            // console.log(obj);
                $(obj).each(function (index,item) {
                    // console.log(index+" = "+item);
                    //每遍历一次，给表格增加一行数据
                    //需要添加的行数据
                    var str="<li><a href=\"index.jsp?city_id="+item.city_location_url+"\">"+item.city_name+"</a></li>";
                    city_name.push({[item.city_location_url]:item.city_name});
                    $("#allcity").append(str);
                })
        }
    })
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
    var house_detail="<li><a href=\"./util/house_list.jsp?"+location.search.split("?")[1]+"\">当前市房价</a></li>";
    $("#house_detail").append(house_detail);
</script>

<%--区单价最高--%>
<script>
    if(h_district!=""){
        $.ajax({
            url:"/house/getMaxPrice",
            type:"post",
            data:{
                "city_location_url":city_location_url,
                "h_district":h_district,
            },
            dataType:"json",
            success:function (obj) {
                if(obj.code==1001){
                    // console.log(obj.obj)
                    $("#district_max_price").append(obj.obj.price);
                }

            }
        })
    }
</script>

<%--区单价最低--%>
<script>
    if(h_district!=""){
        $.ajax({
            url:"/house/getMinPrice",
            type:"post",
            data:{
                "city_location_url":city_location_url,
                "h_district":h_district,
            },
            dataType:"json",
            success:function (obj) {
                if(obj.code==1001){
                    // console.log(obj.obj)
                    $("#district_min_price").append(obj.obj.price);
                }

            }
        })
    }
</script>

<%--地图--%>
<script>
    // function remToPx(rem) {
    //     var fontSize = document.documentElement.style.fontSize;
    //     return Math.floor(rem * fontSize.replace('px', ''));
    // }

    if(city_location_url!="")
    {
        var JSON_PATH ="./json/"+city_location_url+"_full.json";
        // console.log(JSON_PATH);
        var chartDom = document.getElementById('main');
        var myChart = echarts.init(chartDom);
        var option;
        $.get(JSON_PATH, function (geoJson) {
            echarts.registerMap(city_location_url, geoJson);
            myChart.setOption(
                (option = {
                    title: {
                        text: '地图'
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{b}<br/>{c}元/m^2'
                    },
                    toolbox: {
                        show: true,
                        orient: 'vertical',
                        left: 'right',
                        top: 'center',
                        feature: {
                            dataView: { readOnly: false },
                            restore: {},
                            saveAsImage: {}
                        }
                    },
                    visualMap: {
                        min: 800,
                        max: 50000,
                        text: ['High', 'Low'],
                        realtime: false,
                        calculable: true,
                        inRange: {
                            color: ['lightskyblue', 'yellow', 'orangered']
                        }
                    },
                    series: [
                        {
                            name: city_location_url,
                            type: 'map',
                            map: city_location_url,
                            label: {
                                show: true
                            },
                            data: [],
                        }
                    ]
                })
            );
        });
        myChart.on('click',function(args){
            // location=location.search.split("&")[0];
            // console.log(args.name);
            location.href = location.search.split("&")[0]+"&district="+args.name;//测试效果
        })


        var data_location=[]

        var data_district_name=[]

        $.ajax({
            url:"${pageContext.request.contextPath}/house/getHousePriceUnitAvg",
            type:"post",
            data:{"city_location_url":city_location_url},
            dataType:"json",
            success:function (result) {
                // console.log(result);
                for (var i = 0; i < result.length; i++) {
                    var data_pie_unit={name:result[i].h_district,value:result[i].h_avg}
                    data_location.push(data_pie_unit); //挨个取出类别并填入类别数组
                    data_district_name.push(result[i].h_district)
                }
                // console.log(data_location)
                // myChart.hideLoading();
                myChart.setOption(
                    (option = {
                        tooltip: {
                            trigger: 'item',
                            formatter: '{b}<br/>{c}元/m^2'
                        },
                        toolbox: {
                            show: true,
                            orient: 'vertical',
                            left: 'right',
                            top: 'center',
                            feature: {
                                dataView: { readOnly: false },
                                restore: {},
                                saveAsImage: {}
                            }
                        },
                        visualMap: {
                            min: 10000,
                            max: 50000,
                            text: ['High', 'Low'],
                            realtime: false,
                            calculable: true,
                            inRange: {
                                color: ['lightskyblue', 'yellow', 'orangered']
                            }
                        },
                        series: [
                            {
                                name: city_location_url,
                                type: 'map',
                                map: city_location_url,
                                label: {
                                    show: true
                                },
                                data: data_location,
                            }
                        ]
                    })
                );




            }
        })


    }



</script>


<%--左一饼图--%>
<script>
    //初始化echarts
    if(h_district!="")
    {
        var pieCharts = echarts.init(document.getElementById("scatter"));
        //设置属性
        //显示一段动画
        // pieCharts.showLoading();


        var data_pie=[]
        // console.log(h_district)
        //异步请求数据
        $.ajax({
            type: "post",
            async: true,
            url: '${pageContext.request.contextPath}/house/getHouseRenovationByStrict',
            data: {
                "city_location_url":city_location_url,
                "h_district":h_district
            },
            dataType: "json",
            success: function (result) {
                // console.info(echarts.version)
                // console.log(result)
                for (var i = 0; i < result.length; i++) {
                    var data_pie_unit={value:result[i].h_renovation_total,name:result[i].h_renovation}
                    data_pie.push(data_pie_unit); //挨个取出类别并填入类别数组
                }
                // console.log(data_pie)
                // pieCharts.hideLoading();//隐藏加载动画
                pieCharts.setOption({
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        top: '5%',
                        left: 'center',
                    },
                    series: [
                        {
                            name: '装修',
                            type: 'pie',
                            radius: ['40%', '70%'],
                            avoidLabelOverlap: false,
                            itemStyle: {
                                borderRadius: 10,
                                borderColor: '#fff',
                                borderWidth: 2
                            },
                            label: {
                                show: false,
                                position: 'center'
                            },
                            emphasis: {
                                label: {
                                    show: true,
                                    fontSize: '40',
                                    fontWeight: 'bold'
                                }
                            },
                            labelLine: {
                                show: false
                            },
                            data: data_pie
                        }
                    ]
                });
            }
        })
    }

</script>

<%--左二饼图--%>
<script>
    if(h_district!="")
    {
        //初始化echarts
        var pie_two_Charts = echarts.init(document.getElementById("time"));
        //显示一段动画
        // pie_two_Charts.showLoading();


        var data_two_pie=[]

        // console.log(h_district)
        //异步请求数据
        $.ajax({
            type: "post",
            async: true,
            url: '${pageContext.request.contextPath}/house/getHouseFace',
            data: {
                "city_location_url":city_location_url,
                "h_district":h_district
            },
            dataType: "json",
            success: function (result) {
                // console.info(echarts.version)
                // console.log(result)
                for (var i = 0; i < result.length; i++) {
                    var data_pie_unit={value:result[i].total,name:result[i].h_face}
                    data_two_pie.push(data_pie_unit); //挨个取出类别并填入类别数组
                }
                // console.log(data_two_pie)
                // pie_two_Charts.hideLoading();//隐藏加载动画
                pie_two_Charts.setOption({
                    title: {
                        // text: '',
                        // subtext: 'Fake Data',
                        left: 'center'
                    },
                    tooltip: {
                        trigger: 'item'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    series: [
                        {
                            name: '面向',
                            type: 'pie',
                            radius: '50%',
                            data: data_two_pie,
                            emphasis: {
                                itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                });
            }
        })
    }

</script>

<%--右一散点图--%>
<script>

    if(h_district!="")
    {
        var data_point=[]

        // var h_district=decodeURI(location.search.split("&")[1].split("=")[1],"utf-8");
        // console.log(h_district)

        // PointCharts.showLoading();
        //异步请求数据
        $.ajax({
            type: "post",
            async: true,
            url: '${pageContext.request.contextPath}/house/getHouseAreaPrice',
            data: {
                "city_location_url":city_location_url,
                "h_district":h_district
            },
            dataType: "json",
            success: function (result) {
                // console.info(echarts.version)
                // console.log(result)
                for (var i = 0; i < result.length; i++) {
                    var data_pie_unit=[result[i].h_area,result[i].h_price_total]
                    data_point.push(data_pie_unit); //挨个取出类别并填入类别数组
                }
                // console.log(data_point)
                // See https://github.com/ecomfe/echarts-stat
                // PointCharts.hideLoading();
                var PointCharts = echarts.init(document.getElementById("buildYear"));
                echarts.registerTransform(ecStat.transform.regression);
                const Point_data = data_point;
                PointCharts.setOption({
                    dataset: [
                        {
                            source: Point_data
                        },
                        {
                            transform: {
                                type: 'ecStat:regression'
                                // 'linear' by default.
                                // config: { method: 'linear', formulaOn: 'end'}
                            }
                        }
                    ],
                    title: {
                        text: '线性回归',
                        // subtext: 'By ecStat.regression',
                        // sublink: 'https://github.com/ecomfe/echarts-stat',
                        left: 'center'
                    },
                    legend: {
                        bottom: 5
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'cross'
                        }
                    },
                    xAxis: {
                        splitLine: {
                            lineStyle: {
                                type: 'dashed'
                            }
                        }
                    },
                    yAxis: {
                        splitLine: {
                            lineStyle: {
                                type: 'dashed'
                            }
                        }
                    },
                    series: [
                        {
                            name: 'scatter',
                            type: 'scatter'
                        },
                        {
                            name: 'line',
                            type: 'line',
                            datasetIndex: 1,
                            symbolSize: 0.1,
                            symbol: 'circle',
                            label: { show: true, fontSize: 16 },
                            labelLayout: { dx: -20 },
                            encode: { label: 2, tooltip: 1 }
                        }
                    ]
                });


            }
        })
    }

</script>

<%--右二折线图--%>
<script>

    if(h_district!="")
    {
        //初始化echarts
        var BarLineCharts = echarts.init(document.getElementById("roomType"));
        //设置属性
        //显示一段动画
        // BarLineCharts.showLoading();

        var data_bar_line_value=[];
        var data_bar_line_type=[];
        var data_bar_line_price=[];
        //异步请求数据
        $.ajax({
            type: "post",
            async: true,
            url: '${pageContext.request.contextPath}/house/getHouseHeigthPrice',
            data: {
                "city_location_url":city_location_url,
                "h_district":h_district
            },
            dataType: "json",
            success: function (result) {
                // console.info(echarts.version)
                // console.log(result)
                for (var i = 0; i < result.length; i++) {
                    data_bar_line_type.push(result[i].h_heigth);
                    data_bar_line_value.push(result[i].total);
                    data_bar_line_price.push(result[i].h_price_unit/10000);
                    // var data_pie_unit={value:result[i].h_renovation_total,name:result[i].h_renovation}
                    // data_pie.push(data_pie_unit); //挨个取出类别并填入类别数组
                }
                // console.log(data_bar_line_type);
                // console.log(data_bar_line_value);
                // console.log(data_pie)
                // BarLineCharts.hideLoading();//隐藏加载动画
                BarLineCharts.setOption({  tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'cross',
                            crossStyle: {
                                color: '#999'
                            }
                        }
                    },
                    toolbox: {
                        feature: {
                            dataView: { show: true, readOnly: false },
                            magicType: { show: true, type: ['line', 'bar'] },
                            restore: { show: true },
                            saveAsImage: { show: true }
                        }
                    },
                    legend: {
                        data: ['套数', '均价']
                    },
                    xAxis: [
                        {
                            type: 'category',
                            // data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                            data: data_bar_line_type,
                            axisPointer: {
                                type: 'shadow'
                            },
                            axisLabel: { interval: 0, rotate: 30 }
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value',
                            name: '数量',
                            min: 0,
                            max: 3000,
                            interval: 500,
                            axisLabel: {
                                formatter: '{value}'
                            }
                        },
                        {
                            type: 'value',
                            name: '均价 万/m^2',
                            min: 8,
                            max: 1,
                            interval: 1,
                            axisLabel: {
                                formatter: '{value}'
                            }
                        }
                    ],
                    series: [
                        {
                            name: '套数',
                            type: 'bar',
                            tooltip: {
                                valueFormatter: function (value) {
                                    return value + '套';
                                }
                            },
                            data: data_bar_line_value
                        },
                        {
                            name: '均价',
                            type: 'line',
                            yAxisIndex: 1,
                            tooltip: {
                                valueFormatter: function (value) {
                                    return value + '元/m^2';
                                }
                            },
                            data: data_bar_line_price
                        }
                    ]
                });
            }
        })
    }


</script>

<%--底部中央图--%>
<script>

    if(h_district!="")
    {
        //初始化echarts
        var BarCharts = echarts.init(document.getElementById("attention_price"));
        //设置属性
        //显示一段动画
        // BarCharts.showLoading();



        var data_bar_value=[];
        var data_bar_type=[];
        var data_bar_price=[];
        //异步请求数据
        $.ajax({
            type: "post",
            async: true,
            url: '${pageContext.request.contextPath}/house/getHouseTypePrice',
            data: {
                "city_location_url":city_location_url,
                "h_district":h_district
            },
            dataType: "json",
            success: function (result) {
                // console.info(echarts.version)
                // console.log(result)
                for (var i = 0; i < result.length; i++) {
                    data_bar_type.push(result[i].h_type);
                    data_bar_value.push(result[i].sum);
                    data_bar_price.push(result[i].price_avg);
                    // var data_pie_unit={value:result[i].h_renovation_total,name:result[i].h_renovation}
                    // data_pie.push(data_pie_unit); //挨个取出类别并填入类别数组
                }
                // console.log(data_bar_type);
                // console.log(data_bar_value);
                // console.log(data_pie)
                // BarCharts.hideLoading();//隐藏加载动画
                BarCharts.setOption({  tooltip: {
                        trigger: 'axis',
                        axisPointer: {
                            type: 'cross',
                            crossStyle: {
                                color: '#999'
                            }
                        }
                    },
                    toolbox: {
                        feature: {
                            dataView: { show: true, readOnly: false },
                            magicType: { show: true, type: ['line', 'bar'] },
                            restore: { show: true },
                            saveAsImage: { show: true }
                        }
                    },
                    legend: {
                        data: ['户型个数', '均价']
                    },
                    xAxis: [
                        {
                            type: 'category',
                            // data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                            data: data_bar_type,
                            axisPointer: {
                                type: 'shadow'
                            },
                            axisLabel: { interval: 0, rotate: 30 }
                        }
                    ],
                    yAxis: [
                        {
                            type: 'value',
                            name: '数量',
                            min: 0,
                            max: 1500,
                            interval: 300,
                            axisLabel: {
                                formatter: '{value} 套'
                            }
                        },
                        {
                            type: 'value',
                            name: '均价',
                            min: 2000,
                            max: 0,
                            interval: 100,
                            axisLabel: {
                                formatter: '{value} 万'
                            }
                        }
                    ],

                    dataZoom: [
                        {
                            type: 'slider',
                            realtime: true,
                            start: 0,
                            end: 10,  // 数据窗口范围的结束百分比。范围是：0 ~ 100。
                            height: 5, //组件高度
                            left: 5, //左边的距离
                            right: 5, //右边的距离
                            bottom: 10, //下边的距离
                            show: true,  // 是否展示
                            fillerColor: "rgba(17, 100, 210, 0.42)", // 滚动条颜色
                            borderColor: "rgba(17, 100, 210, 0.12)",
                            handleSize: 0,      //两边手柄尺寸
                            showDetail: false, //拖拽时是否展示滚动条两侧的文字
                            zoomLock: true,         //是否只平移不缩放
                            moveOnMouseMove: false //鼠标移动能触发数据窗口平移
                            //zoomOnMouseWheel: false, //鼠标移动能触发数据窗口缩放
                        },
                        {
                            type: "inside",  // 支持内部鼠标滚动平移
                            start: 0,
                            end: 10,
                            zoomOnMouseWheel: false,  // 关闭滚轮缩放
                            moveOnMouseWheel: true, // 开启滚轮平移
                            moveOnMouseMove: true  // 鼠标移动能触发数据窗口平移
                        }
                    ],
                    series: [
                        {
                            name: '户型个数',
                            type: 'bar',
                            tooltip: {
                                valueFormatter: function (value) {
                                    return value + '套';
                                }
                            },
                            data: data_bar_value
                        },
                        {
                            name: '均价',
                            type: 'line',
                            yAxisIndex: 1,
                            tooltip: {
                                valueFormatter: function (value) {
                                    return value + '万';
                                }
                            },
                            data: data_bar_price
                        }
                    ]
                });
            }
        })
    }


</script>


<%--最下面左部箱线图--%>
<script>

    if(city_location_url!="")
    {

        //初始化echarts
        var BoxCharts = echarts.init(document.getElementById("screen1"));
        //设置属性
        //显示一段动画
        // BoxCharts.showLoading();
        //异步请求数据
        $.ajax({
            type: "post",
            async: true,
            url: '${pageContext.request.contextPath}/house/getHouseDistrictPrice',
            data: {
                "city_location_url":city_location_url
            },
            dataType: "json",
            success: function (result) {
                // console.info(echarts.version)
                // console.log(data_district_name)
                var data_temp=new Array(data_district_name);
                for (var j=0;j<data_district_name.length;j++){
                    data_temp[data_district_name[j]]=new Array();
                }
                // console.log(result)
                var district_price_total=[];
                for (var i = 0; i < result.length; i++) {
                    data_temp[result[i].h_district].push(result[i].h_price_total);
                    // var data_pie_unit={value:result[i].h_renovation_total,name:result[i].h_renovation}
                    // data_pie.push(data_pie_unit); //挨个取出类别并填入类别数组
                }
                for (var j=0;j<data_district_name.length;j++)
                {
                    district_price_total.push(data_temp[data_district_name[j]]);
                }
                // console.log(district_price_total);
                // console.log(data_bar_type);
                // console.log(data_bar_value);
                // console.log(data_pie)
                // BoxCharts.hideLoading();//隐藏加载动画
                BoxCharts.setOption({
                    title: [
                        {
                            text: '箱线图',
                            left: 'center'
                        },
                        {
                            text: 'upper: Q3 + 1.5 * IQR \nlower: Q1 - 1.5 * IQR',
                            borderColor: '#999',
                            borderWidth: 1,
                            textStyle: {
                                fontWeight: 'normal',
                                fontSize: 14,
                                lineHeight: 20
                            },
                            left: '10%',
                            top: '90%'
                        }
                    ],
                    dataset: [
                        {
                            // prettier-ignore
                            source: district_price_total
                        },
                        {
                            transform: {
                                type: 'boxplot',
                                config: {
                                    itemNameFormatter: function (params) {
                                        return data_district_name[params.value];
                                    }
                                }

                            }
                        },
                        {
                            fromDatasetIndex: 1,
                            fromTransformResult: 1
                        }
                    ],
                    tooltip: {
                        trigger: 'item',
                        axisPointer: {
                            type: 'shadow'
                        }
                    },
                    grid: {
                        left: '10%',
                        right: '10%',
                        bottom: '15%'
                    },
                    xAxis: {
                        type: 'category',
                        boundaryGap: true,
                        nameGap: 30,
                        axisLabel: { interval: 0, rotate: 30 },
                        splitArea: {
                            show: false
                        },
                        splitLine: {
                            show: false
                        }
                    },
                    yAxis: {
                        type: 'value',
                        name: '万',
                        splitArea: {
                            show: true
                        }
                    },
                    series: [
                        {
                            name: 'boxplot',
                            type: 'boxplot',
                            datasetIndex: 1
                        },
                        {
                            name: 'outlier',
                            type: 'scatter',
                            datasetIndex: 2
                        }
                    ]
                });
            }
        })
    }

</script>

<%--最下面右部柱状排序图--%>
<script>
    if(city_location_url!="")
    {
        //初始化echarts
        var BarSortCharts = echarts.init(document.getElementById("screen2"));
        //设置属性
        //显示一段动画
        // BarSortCharts.showLoading();

        //异步请求数据
        $.ajax({
            type: "post",
            async: true,
            url: '${pageContext.request.contextPath}/house/getHouseDistrictPriceUnit',
            data: {
                "city_location_url":city_location_url
            },
            dataType: "json",
            success: function (result) {
                // console.log(result)
                var district_unit_price=[];
                for (var i = 0; i < result.length; i++) {
                    district_unit_price.push(result[i]);
                }
                // console.log(district_unit_price)
                // console.log(data_bar_type);
                // console.log(data_bar_value);
                // console.log(data_pie)
                // BarSortCharts.hideLoading();//隐藏加载动画
                BarSortCharts.setOption({
                    tooltip: {
                        valueFormatter: function (value) {
                            return value + ' 元/m^2';
                        }
                    },
                    dataset: [
                        {
                            dimensions: ['h_district', 'district_unit_price'],
                            source: district_unit_price
                        },
                        {
                            transform: {
                                type: 'sort',
                                config: { dimension: 'district_unit_price', order: 'desc' }
                            }
                        }
                    ],
                    xAxis: {
                        type: 'category',
                        axisLabel: { interval: 0, rotate: 30 },
                        axisPointer: {
                            type: 'shadow'
                        },
                    },
                    yAxis: {},
                    series: {
                        type: 'bar',
                        encode: { x: 'name', y: 'district_unit_price' },
                        datasetIndex: 1
                    }
                });
            }
        })
    }

</script>


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






















<!-- Placed js at the end of the document so the pages load faster -->
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="js/jquery-migrate-1.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>

<!--easy pie chart-->
<script src="js/easypiechart/jquery.easypiechart.js"></script>
<script src="js/easypiechart/easypiechart-init.js"></script>

<!--Sparkline Chart-->
<script src="js/sparkline/jquery.sparkline.js"></script>
<script src="js/sparkline/sparkline-init.js"></script>

<!--icheck -->
<script src="js/iCheck/jquery.icheck.js"></script>
<script src="js/icheck-init.js"></script>

<!-- jQuery Flot Chart-->
<script src="js/flot-chart/jquery.flot.js"></script>
<script src="js/flot-chart/jquery.flot.tooltip.js"></script>
<script src="js/flot-chart/jquery.flot.resize.js"></script>


<!--Morris Chart-->
<script src="js/morris-chart/morris.js"></script>
<script src="js/morris-chart/raphael-min.js"></script>

<!--Calendar-->
<script src="js/calendar/clndr.js"></script>
<script src="js/calendar/evnt.calendar.init.js"></script>
<script src="js/calendar/moment-2.2.1.js"></script>
<%--<script src="http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.5.2/underscore-min.js"></script>--%>

<!--common scripts for all pages-->
<script src="js/scripts.js"></script>

<!--Dashboard Charts-->
<script src="js/dashboard-chart-init.js"></script>


<script src="js/city-picker.data.js"></script>
<script src="js/city-picker.js"></script>
<script src="js/main.js"></script>



</body>
</html>
