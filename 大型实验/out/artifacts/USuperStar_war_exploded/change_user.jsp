<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/9/009
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>xiu</title>
</head>
<body>
<%
    String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
    String password=request.getParameter("password");
    DB mydb=new DB();
    String sql="update tb_waiter set password='"+password+"' where username='"+username+"'";
    mydb.doUpdate(sql);
%>
<jsp:forward page="adminManager.jsp"/>
</body>
</html>
