<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/9/009
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="room_message" class="demo.CreatePage"/>
<html>
<head>
    <title>后台管理界面</title>
    <style>
        *{
            margin: 0px;padding: 0px;
        }
        #top_div{
            width: 100%;
            height: 36px;
            background-color: #b4b4b4;
        }
        #content{
            background-image: url("upload/bg_waiter.jpg");
            width: 100%;
            height: 600px;
        }
        a:link{
            text-decoration: none;
        }
        a:visited{
            text-decoration: none;
        }
    </style>
</head>
<%!
    int CurrpageRoom;
%>
<%
    String strPage=request.getParameter("PageRoom");
    if(strPage==null)
    {
       CurrpageRoom=1;
    }
    else {
        CurrpageRoom=Integer.parseInt(strPage);
    }
%>
<body>
<div id="top_div">
    <img src="upload/waiter.png" height="36px" width="84px" style="margin-left: 100px">
    <a href="index.jsp" style="float: right">登出</a>
</div>
<div id="content">
    <div style="height: 100px;width: 100%"></div>
    <div style="background: rgb(255, 255, 255); margin: 0px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 210px; text-align: center;">
        <div>
        <jsp:include page="ManagerRoom.jsp?PageRoom=<%=CurrpageRoom%>"/>
        </div>
        <a href="addRoom.jsp"><input type="button" value="增加房间"></a>
        <a href="addUser.jsp"><input type="button" value="新增服务员"></a>
        <a href="ChangeUser.jsp"><input type="button" value="修改服务员密码"></a>
        <a href="DeleteUser.jsp"><input type="button" value="删除服务员"></a>
    </div>
</div>
</body>
</html>
