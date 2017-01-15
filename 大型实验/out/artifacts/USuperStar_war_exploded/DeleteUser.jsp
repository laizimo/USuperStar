<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加服务员</title>
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
        .ipt{
            border: 1px solid #d3d3d3;
            padding: 10px 10px;
            width: 350px;
            margin:0px auto auto ;
            border-radius: 4px;
            padding-left: 35px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        .ipt:focus{
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }
    </style>
</head>
<body>
<div id="top_div">
    <img src="upload/waiter.png" height="36px" width="84px" style="margin-left: 100px">
</div>
<div id="content">
    <div style="height: 100px;width: 100%"></div>
    <div style="background: rgb(255, 255, 255); margin: 0px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 210px; text-align: center;">
        <div>
            <form action="delete_user.jsp" method="post" accept-charset="UTF-8">
                <p><h3>删除服务员账号：</h3></p>
                <p style="padding: 30px 0 10px"><input type="text" name="username" class="ipt" placeholder="服务员账号" id="waiter_name"></p>
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
