<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/16/016
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加预订</title>
</head>
<body>
<%!
    DB mydb=new DB();
%>
<%
    String Bname=new String(request.getParameter("book_name").getBytes("ISO-8859-1"),"UTF-8");
    String Btel=request.getParameter("book_tel");
    String Broom=request.getParameter("book_room");
    String Btime=request.getParameter("book_time");
    String sql="Insert into tb_book(book_name,book_tel,book_room,book_time) values('"+Bname+"','"+Btel+"','"+Broom+"','"+Btime+"')";
    mydb.doUpdate(sql);
    sql="update tb_room set isBook=true where room_id='"+Broom+"'";
    mydb.doUpdate(sql);
%>
<jsp:forward page="book.jsp"/>

</body>
</html>
