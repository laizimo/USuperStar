<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/16/016
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除</title>
</head>
<body>
<%!
    DB mydn=new DB();
%>
<%
    String room_id=request.getParameter("BID");
    String sql="Delete from tb_room where room_id='"+room_id+"'";
    mydn.doUpdate(sql);
%>
<jsp:forward page="adminManager.jsp"/>
</body>
</html>
