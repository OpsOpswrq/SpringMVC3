<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/statics/jquery-3.6.0.js"></script>
    <script type="text/javascript">
        <%--$(function () {--%>
        <%--    $("#btn").click(function () {--%>
        <%--        $.post("${pageContext.request.contextPath}/a2",function (data) {--%>
        <%--            console.log(data)--%>
        <%--            let html="";--%>
        <%--            for (var i = 0; i <data.length ; i++) {--%>
        <%--                html+= "<tr>" +--%>
        <%--                    "<td>"+data[i].id+"</td>"+--%>
        <%--                    "<td>" + data[i].name + "</td>" +--%>
        <%--                    "<td>"+data[i].age+"</td>"+--%>
        <%--                    "</tr>"--%>
        <%--            }--%>
        <%--            $("#content").html(html);--%>
        <%--        });--%>
        <%--    })--%>
        <%--})--%>
        $(document).ready(function (){
            $("#btn").click(function (){
                $.ajax({
                    url:"${pageContext.request.contextPath}/a2",
                    success:function (data){
                        let html="";
                        for (var i = 0; i <data.length ; i++) {
                            html+= "<tr>" +
                                "<td>"+data[i].id+"</td>"+
                                "<td>" + data[i].name + "</td>" +
                                "<td>"+data[i].age+"</td>"+
                                "</tr>"
                        }
                        $("#content").html(html);
                    }
                })
            })
        })
    </script>
</head>
<body>
<input type="button" id="btn" value="获取数据"/>
<table style="width: 80%;">
    <thead>
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
    </tr>
    </thead>
    <tbody id="content">
    </tbody>
</table>
</body>
</html>
