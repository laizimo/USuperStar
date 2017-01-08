<%@ page import="demo.DB" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/10/010
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
</head>
<body>
     <%!
         DB mydb;
     %>
<%
    String sql="SELECT * FROM tb_admin";
    Object[] params={};
    ResultSet re=mydb.getRs();
    while(re.next())
    {
        out.print(re.getString(1)+"&&"+re.getString(2)+"&&"+re.getString(3)+"<br>");
    }
%>
</body>
</html>
