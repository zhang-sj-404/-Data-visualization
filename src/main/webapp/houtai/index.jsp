<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/4/19
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset='utf-8'>
    <title>管理员登录</title>
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="../view_css/login.css">
    <script src="${pageContext.request.contextPath}/view_js/jquery-3.2.1.min.js"></script>
</head>
<body>
<div class="box">
    <h2>管理员登录</h2>
    <form>
        <div class="inputBox">
            <input type="text" name="m_phone" id="m_phone" required="required">
            <label>请输入手机号</label>
        </div>
        <div class="inputBox">
            <input type="password" name="m_pass" id="m_pass" required="required">
            <label>请输入密码</label>
        </div>
        <div class="button">
            <input type="button"  value="提交" id="login-button"/>
        </div>
    </form>

</div>
</body>



<script>
    // $("#login-button")
    $("#login-button").click(function () {

        var m_phone=$("#m_phone").val();
        var m_pass=$("#m_pass").val();

        $.ajax({
            url:"/master/findAdminUserByPhone",
            type:"post",
            data:{
                "m_phone":m_phone,
                "m_pass":m_pass
            },
            dataType:"json",
            success:function (obj) {
                console.log(obj);
                if(obj.code==1001){
                    if(m_pass==obj.obj.m_password){
                        //只能保存字符串
                        sessionStorage.setItem("m_name",obj.obj.m_name)
                        sessionStorage.setItem("m_id",obj.obj.m_id)
                        // console.log(obj.obj.upass)
                        alert("登录成功");
                        location.href="guanli.jsp";
                    }else {
                        alert("密码错误");
                    }

                }
                else {
                    alert("请求失败");
                }
            }
        })


    })
</script>

<%--退出登录--%>
<script>
    var m_name = sessionStorage.getItem("m_name");
    var m_id = sessionStorage.getItem("m_id");
    //如果账号是登录状态的，删除登录信息
    if(m_name!=undefined&&m_name!=null){
        sessionStorage.removeItem("m_name");
        sessionStorage.removeItem("m_id");
    }
</script>


</html>

