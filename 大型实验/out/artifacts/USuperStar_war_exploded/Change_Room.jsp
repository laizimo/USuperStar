<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/16/016
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<%!
    DB mydb=new DB();
%>
<%
    String id=(String) session.getAttribute("id");
    String room_type=new String(request.getParameter("room_type").getBytes("ISO-8859-1"),"UTF-8");
    String room_cost=request.getParameter("room_cost");
    String sql="Update tb_room set room_type='"+room_type+"',room_cost="+room_cost+" where room_id='"+id+"'";
    mydb.doUpdate(sql);
%>
<jsp:forward page="adminManager.jsp"/>
</body>
</html>
