<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/16/016
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加房间</title>
</head>
<body>
<%!
    DB mydb=new DB();
%>
<%
String room_id=request.getParameter("room_id");
String room_type=new String(request.getParameter("room_type").getBytes("ISO-8859-1"),"UTF-8");
String room_cost=request.getParameter("room_cost");
String sql="insert into tb_room values('"+room_id+"','"+room_type+"',"+room_cost+","+false+","+false+")";
mydb.doUpdate(sql);
%>
<jsp:forward page="adminManager.jsp"/>
</body>
</html>
