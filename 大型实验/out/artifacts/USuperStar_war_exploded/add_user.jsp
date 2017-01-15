<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/1/9/009
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加服务员</title>
</head>
<body>
<%
    String username=new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
    String password=request.getParameter("password");
    DB mydb=new DB();
    String sql="Insert into tb_waiter(username,password) values('"+username+"','"+password+"')";
    mydb.doUpdate(sql);
%>
<jsp:forward page="adminManager.jsp"/>
</body>
</html>
