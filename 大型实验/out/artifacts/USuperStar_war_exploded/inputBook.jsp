<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/12/012
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html;charset=UTF-8">
    <title>预订信息</title>
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
    <script type="text/javascript">
        function inputCheck() {
            var bookname=document.getElementById("book_name");
            var booktel=document.getElementById("book_tel");
            var bookroom=document.getElementById("book_room");
            if(bookname.value.length>8){
                alert("名字输入不规范！");
                return false;
            }else if(booktel.value.length!=11){
                alert("电话号码位数不对！");
                return false;
            }else if(bookroom.value.length>3){
                alert("请输入正确的房间号！");
                return false;
            }else if(bookname.value==""||booktel.value==""||bookroom.value==""){
                alert("输入数据不能为空");
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
        <h1>客人预订信息</h1>
    </div>
    <div align="center">
        <form action="input_book.jsp" method="post" accept-charset="UTF-8" onsubmit="return inputCheck()">
            <p><input type="text" name="book_name" class="ipt" placeholder="姓名" id="book_name"></p>
            <p><input type="text" name="book_tel" class="ipt" placeholder="电话" id="book_tel"></p>
            <p><input type="text" name="book_room" class="ipt" placeholder="预订房间号" id="book_room"></p>
            <p><input type="date" name="book_time" class="ipt" placeholder="预订时间" id="booktime"></p>
            <input type="submit" value="提交" style="bottom: 10px;border-radius: 4px;border-color: rgb(199,199,199);width: 350px;margin: 0px auto auto">
        </form>
    </div>
</div>
</body>
</html>
