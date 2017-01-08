<%@ page import="demo.CreatePage" %>
<%@ page import="demo.DB" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/9/009
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>操作员</title>
</head>
<body>
<%!
    CreatePage createPage=new CreatePage();
    DB mydb=new DB();
    int CurrWaiterPage;
    ResultSet re;
%>
<%
    String strPage=request.getParameter("waiterPage");
    if(strPage==null){
        CurrWaiterPage=1;
    }
    else {
        CurrWaiterPage=Integer.parseInt(strPage);
    }
%>
</body>
</html>
