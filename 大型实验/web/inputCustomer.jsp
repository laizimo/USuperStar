<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/9/009
  Time: 0:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>输入客户信息</title>
    <style>
        body{
            background-color: rgb(54,51,62);
        }
        *{
            margin: 0px;padding: 0px;
        }
        #top_div{
            width: 100%;
            height: 50px;
        }
        #content{
            float: left;
            margin-left: 200px;
            height: 500px;
            width: 400px;
            border-radius: 10px;
            background-color: white;
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
        p{
            padding: 10px 0px 10px;
        }
    </style>
    <script>
        function inputCheck() {
            var custName=document.getElementById("name");
            var custCard=document.getElementById("card");
            var custTel=document.getElementById("tel");
            var custSex=document.getElementById("sex");
            var custRoom=document.getElementById("room");
            if(custName.value.length>8){
                alert("名字过长！");
                return false;
            }else if(custCard.value.length!=18){
                alert("身份证位数不对！");
                return false;
            }else if(custTel.value.length!=11){
                alert("电话号码输入不正确！");
                return false;
            }else if(custSex.value!="男"||custSex.value!="女"){
                alert("性别输入不正确！");
                return false;
            }else if(custRoom.value.length!=3){
                alert("房间号输入不正确！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div id="top_div"></div>
<div id="content">
    <div style="border-bottom-width: 2px; border-bottom-style: solid; height: 50px;border-bottom-color: rgb(231,231,231)">
        <h1>客人信息</h1>
    </div>
    <div align="center">
        <form action="inputCust.do" method="post" accept-charset="UTF-8">
            <p><input type="text" name="Cname" class="ipt" placeholder="姓名" id="name"></p>
            <p><input type="text" name="Cmycard" class="ipt" placeholder="身份证" id="card"></p>
            <p><input type="text" name="Ctel" class="ipt" placeholder="电话" id="tel"></p>
            <p><input type="text" name="Csex" class="ipt" placeholder="性别" id="sex"></p>
            <p><input type="text" name="Croom" class="ipt" placeholder="入住房间号" id="room"></p>
            <p><input type="date" name="Ctime" class="ipt" placeholder="入住时间"></p>
            <input type="submit" value="提交" style="bottom: 10px;border-radius: 4px;border-color: rgb(199,199,199);width: 350px;margin: 0px auto auto">
        </form>
    </div>
</div>
</body>
</html>
