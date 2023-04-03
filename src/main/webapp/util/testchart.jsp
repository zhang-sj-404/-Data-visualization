<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/3/28
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/view_js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/view_js/echarts.js"></script>
</head>
<body style=" text-align: center; ">
<div id="type" style="width: 100%;height: 800px;"></div>
<a href ="../index1.jsp">返回首页</a>

<script>
    //初始化echarts
    var pieCharts = echarts.init(document.getElementById("type"));
    //设置属性
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
                name: '户型',
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
                data: [
                ]
            }
        ]
    });
    //显示一段动画
    pieCharts.showLoading();


    var data_pie=[]

    //异步请求数据
    $.ajax({
        type: "post",
        async: true,
        url: '${pageContext.request.contextPath}/house/pie',
        data: [],
        dataType: "json",
        success: function (result) {
            console.info(echarts.version)
            console.log(result)
            for (var i = 0; i < result.length; i++) {
                var data_pie_unit={value:result[i].h_type_total,name:result[i].h_type}
                data_pie.push(data_pie_unit); //挨个取出类别并填入类别数组
            }
            console.log(data_pie)
            pieCharts.hideLoading();//隐藏加载动画
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
                        name: '户型',
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
        },
        error : function(errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    })
</script>
</body>
</html>

