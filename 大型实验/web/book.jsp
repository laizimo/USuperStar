<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/16/016
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预订消息</title>
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
<body>
<%!
    int CurrPage;
%>
<%
    String StrPage=request.getParameter("Page");
    if(StrPage==null)
    {
        CurrPage=1;
    }
    else {
        CurrPage=Integer.parseInt(StrPage);
    }
%>

<div id="top_div">
    <img src="upload/waiter.png" height="36px" width="84px" style="margin-left: 100px">
</div>
<div id="content">
    <div style="height: 100px;width: 100%"></div>
    <div style="background: rgb(255, 255, 255); margin: 0px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 270px; text-align: center;">
        <div>
            <jsp:include page="BookMessage.jsp?Page=<%=CurrPage%>"/>
        </div>
        <a href="waiter.jsp">返回首页</a>
    </div>
</div>
</body>
</html>