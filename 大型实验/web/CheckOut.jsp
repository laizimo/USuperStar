<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/13/013
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结账界面</title>
</head>
<body>
<form action="Check.jsp" method="post" accept-charset="UTF-8">
    <table>
        <tr>
            <td>请输入客户身份证号码：</td>
            <td><input type="text" name="cust_mycard"></td>
            <td><input type="submit" value="确定"></td>
        </tr>
    </table>
</form>
</body>
</html>
