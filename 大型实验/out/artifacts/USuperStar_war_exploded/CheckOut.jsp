<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结账</title>
    <style>
        *{
            margin: 0px;padding: 0px;
        }
        #top_div{
            width: 100%;
            height: 36px;
            background-color: #b4b4b4;
        }
        #content{
            background-image: url("upload/bg_waiter.jpg");
            width: 100%;
            height: 600px;
        }
        a:link{
            text-decoration: none;
        }
        a:visited{
            text-decoration: none;
        }
    </style>
</head>
<body>
<div id="top_div">
    <img src="upload/waiter.png" height="36px" width="84px" style="margin-left: 100px">
</div>
<div id="content">
    <div style="height: 100px;width: 100%"></div>
    <div style="background: rgb(255, 255, 255); margin: 0px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 200px; height: 110px; text-align: center;">
        <div>
            <form action="Check.jsp" method="post" accept-charset="UTF-8">
                <p>请输入客户身份证号码：</p>
                <input type="text" name="cust_mycard" style="margin-top: 10px;">
                <DIV style="height: 50px; line-height: 50px; margin-top: 20px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
                <input type="submit" value="确定" style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;"
                >
                </DIV>
            </form>
        </div>
    </div>
</div>
</body>
</html>
