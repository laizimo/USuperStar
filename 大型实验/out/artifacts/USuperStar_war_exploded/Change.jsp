<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/12/012
  Time: 23:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Encoding" content="text/html;charset=UTF-8">
    <title>修改</title>
</head>
<body>
<%!
    int id;
    DB mydb=new DB();
%>
<%
    String strID=(String) session.getAttribute("id");
    id=Integer.parseInt(strID);
    String Bname=new String(request.getParameter("book_name").getBytes("ISO-8859-1"),"UTF-8");
    String Btel=request.getParameter("book_tel");
    String Broom=request.getParameter("book_room");
    String Btime=request.getParameter("book_time");
    String sql="Update tb_book,tb_room set isBook=false where tb_room.room_id=tb_book.book_room and id="+id;
    mydb.doUpdate(sql);
    sql="update tb_book set book_name='"+Bname+"',book_tel='"+Btel+"',book_room='"+Broom+"',book_time='"+Btime+"' where id="+id;
    mydb.doUpdate(sql);
    sql="Update tb_book,tb_room set isBook=true where tb_room.room_id=tb_book.book_room and id="+id;
    mydb.doUpdate(sql);
%>
<jsp:forward page="book.jsp"/>

</body>
</html>
