<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/9/009
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
    DB mydb=new DB();
    String sql="delete from tb_waiter where username='"+username+"'";
    mydb.doUpdate(sql);
%>
<jsp:forward page="adminManager.jsp"/>
</body>
</html>
