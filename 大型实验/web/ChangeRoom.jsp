<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/16/016
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改房间</title>
</head>
<body>
<%
    session.setAttribute("id",request.getParameter("BID"));
%>
<form action="Change_Room.jsp" method="post">
    <p>
        <input type="text" name="room_id" placeholder="房间号">
    </p>
    <p>
        <input type="text" name="room_type" placeholder="房间类型">
    </p>
    <p>
        <input type="text" name="room_cost" placeholder="房间费用">
    </p>
    <input type="submit" value="确定">
</form>
</body>
</html>
