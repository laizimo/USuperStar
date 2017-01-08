<%@ page import="demo.OpenDB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/9/009
  Time: 0:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="customer" class="demo.Customer" scope="session">
</jsp:useBean>
<html>
<script language="javascript">
    var times=4;
    clock();
    function clock()
    {
        window.setTimeout('clock()',1000);
        times=times-1;
        time.innerHTML =times;
    }
</script>
<head>
    <title>记录成功界面</title>
    <meta http-equiv= "Refresh" content= "3;url=waiter.jsp ">
</head>
<body>
<%
    out.print("登记成功！");
%>
<div id="time">3</div>

</body>
</html>
