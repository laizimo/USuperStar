<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/9/009
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="room_message" class="demo.CreatePage"/>
<html>
<head>
    <title>后台管理界面</title>
</head>
<%!
    int CurrpageRoom;
%>
<%
    String strPage=request.getParameter("PageRoom");
    if(strPage==null)
    {
       CurrpageRoom=1;
    }
    else {
        CurrpageRoom=Integer.parseInt(strPage);
    }
%>
<body>
    <div align="center">
    <jsp:include page="ManagerRoom.jsp?PageRoom=<%=CurrpageRoom%>" flush="true"/>
        <a href="addRoom.jsp"><input type="button" value="增加房间"></a>
        <a href="addUser"><input type="button" value="新增服务员"></a>
        <a href="ChangeUser"><input type="button" value="修改服务员密码"></a>
        <a href="DeleteUser"><input type="button" value="删除服务员"></a>
    </div>
</body>
</html>
