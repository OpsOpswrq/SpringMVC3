<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/statics/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        function a(){
            $.post({
                url:"${pageContext.request.contextPath}/a1",
                data:{"name":$("#username").val()},
                success:function (data,status){
                    console.log(data);
                    console.log(status);
                }
            })
        }
    </script>
</head>
<body>
<input type="text" id="username" onblur="a()">
</body>
</html>
