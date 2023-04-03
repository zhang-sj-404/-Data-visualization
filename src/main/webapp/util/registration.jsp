<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 2022/4/6
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset='utf-8'>
    <title>注册</title>
    <link rel="stylesheet" href="../view_css/login.css">
    <script src="${pageContext.request.contextPath}/view_js/jquery-3.2.1.min.js"></script>
</head>
<body>
    <div class="box">
        <h2>registration</h2>
        <form>
            <div class="inputBox">
                <input type="text" name="u_name" id="u_name" required="required">
                <label>昵称</label>
            </div>
            <div class="inputBox">
                <input type="text" name="u_phone" id="u_phone" required="required">
                <label>手机号</label>
            </div>
            <div class="inputBox">
                <input type="password" name="u_pass1" id="u_pass1" required="required">
                <label>密码</label>
            </div>
            <div class="inputBox">
                <input type="password" name="u_pass2" id="u_pass2" required="required">
                <label>确认密码</label>
            </div>
            <div class="inputBox">
                <input type="email" name="u_email" id="u_email" required="required">
                <label>邮箱</label>
            </div>
            <div class="button">
                <input type="button"  value="提交" id="regist-button"/>
            </div>
            <span class="errorMsg"></span>
        </form>
    </div>



    <script>
        $("#regist-button").click(function () {
            var u_phone=$("#u_phone").val();
            var u_pass1=$("#u_pass1").val();
            var u_pass2=$("#u_pass2").val();
            var u_name=$("#u_name").val();
            var u_email=$("#u_email").val();


            if (u_pass1!=u_pass2){
                // alert("两次输入密码不一致!");
                $(".errorMsg").html("两次输入密码不一致!");
                return ;
            }

            $.ajax({
                url:"/user/insertUser",
                type:"post",
                data:{
                    "u_phone":u_phone,
                    "u_pass":u_pass1,
                    "u_name":u_name,
                    "u_email":u_email
                },
                dataType:"json",
                success:function (obj) {
                    console.log(obj);
                    if(obj.code==2001){
                        console.log(obj.obj)
                        alert("注册成功即将跳转至登陆界面");
                        location="${pageContext.request.contextPath}/util/login.jsp";
                    }
                    else {
                        alert("请求失败");
                    }
                }
            })


        })
    </script>


</body>
</html>
