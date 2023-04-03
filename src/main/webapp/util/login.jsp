<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/3/30
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset='utf-8'>
    <title>Login</title>
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="../view_css/login.css">
    <script src="${pageContext.request.contextPath}/view_js/jquery-3.2.1.min.js"></script>
</head>
    <body>
        <div class="box">
            <h2>Login</h2>
            <form>
                <div class="inputBox">
                    <input type="text" name="u_phone" id="u_phone" required="required">
                    <label>请输入手机号</label>
                </div>
                <div class="inputBox">
                    <input type="password" name="u_pass" id="u_pass" required="required">
                    <label>请输入密码</label>
                </div>
                <div class="button">
                    <input type="button"  value="提交" id="login-button"/>
                </div>
                <div class="registration">
                    尚未注册账号?
                    <a class="" href="registration.jsp">
                        注册
                    </a>
                </div>
            </form>

        </div>
    </body>



<script>
    // $("#login-button")
    $("#login-button").click(function () {

        var u_phone=$("#u_phone").val();
        var u_pass=$("#u_pass").val();

        $.ajax({
            url:"/user/findUserByPhone",
            type:"post",
            data:{
                "u_phone":u_phone,
                "u_pass":u_pass
            },
            dataType:"json",
            success:function (obj) {
                console.log(obj);
                if(obj.code==1001){
                    if(u_pass==obj.obj.u_password){
                        //只能保存字符串
                        sessionStorage.setItem("u_name",obj.obj.u_name)
                        sessionStorage.setItem("u_id",obj.obj.u_id)
                        // console.log(obj.obj.upass)
                        location="${pageContext.request.contextPath}/index.jsp";
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
    var u_name = sessionStorage.getItem("u_name");
    var u_id = sessionStorage.getItem("u_id");
    //如果账号是登录状态的，删除登录信息
    if(u_name!=undefined&&u_name!=null){
        sessionStorage.removeItem("u_name");
        sessionStorage.removeItem("u_id");
    }
</script>


</html>
