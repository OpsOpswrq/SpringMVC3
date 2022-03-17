<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/statics/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        function a1(){
            $.ajax({
                url:"${pageContext.request.contextPath}/a3",
                data:{"name":$("#username").val()},
                success:function (data){
                    if(data.toString()==="ok"){
                        $("#userinfo").css("color","green");
                    }else{
                        $("#userinfo").css("color","red");
                    }
                    $("#userinfo").html(data);
                }
            })
        }
        function a2(){
            $.ajax({
                url:"${pageContext.request.contextPath}/a3",
                data:{"pwd":$("#password").val()},
                success:function (data){
                    if(data.toString()==="ok"){
                        $("#pwdinfo").css("color","green");
                    }else{
                        $("#pwdinfo").css("color","red");
                    }
                    $("#pwdinfo").html(data);
                }
            })
        }
    </script>
</head>
<body>
<label>用户名：</label>
<input type="text" id="username" onblur="a1()"/>
<span id="userinfo"></span>
<br>
<label>密码：</label>
<input type="text" id="password" onblur="a2()"/>
<span id="pwdinfo"></span>
</body>
</html>
