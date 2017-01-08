<%@ page import="demo.BookCust" %>
<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/12/012
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除预订</title>
</head>
<body>
    <%!
        int id;
        DB mydb=new DB();
    %>
<%
    String strID=request.getParameter("Bid");
    id=Integer.parseInt(strID);
    String sql="update tb_room,tb_book set isBook=false where tb_room.room_id=tb_book.book_room and id="+id;
    mydb.doUpdate(sql);
    sql="Delete from tb_book where id="+id;
    mydb.doUpdate(sql);
%>
<jsp:forward page="book.jsp"/>
</body>
</html>
