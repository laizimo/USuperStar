<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/9/009
  Time: 0:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="room_message" class="demo.CreatePage"/>
<html>
<head>
    <title>酒店管理界面</title>
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
    int CountPage;
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
    CountPage=room_message.getCountPage();
%>

<div id="top_div">
        <img src="upload/waiter.png" height="36px" width="84px" style="margin-left: 100px">
        <a href="index.jsp" style="float: right">登出</a>
</div>
<div id="content">
    <div style="height: 100px;width: 100%"></div>
     <div style="background: rgb(255, 255, 255); margin: 0px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 210px; text-align: center;">
         <div>
         <jsp:include page="RoomMessage.jsp?Page=<%=CurrPage%>"/>
         </div>
         <a href="inputCustomer.jsp"><input type="button" value="登记住客信息"></a>
         <a href="book.jsp"><input type="button" value="房间预订信息"></a>
         <a href="CheckOut.jsp"><input type="button" value="结账"></a>
     </div>
</div>
</body>
</html>
