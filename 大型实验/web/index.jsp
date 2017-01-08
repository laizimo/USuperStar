<%@ page import="demo.DB" %>
<%@ page import="demo.OpenDB" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8/008
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<style type="text/css">
    body{
        background-image: url("/upload/bg_hotel.jpg");
    }
    *{
      margin: 0px 0px 0px;padding: 0px;
    }
    #top_div{
      width: 100%;
      height: 200px;
    }
    #left_content{
      margin: -6px auto auto;
      width: 525px;
      height: 400px;
      float: left;
    }
    #right_content{
      margin: 2px auto auto;
      width: 300px;
      height: 400px;
      background-color: rgb(175,175,175);
    }
  #clock{
    width: 300px;text-align: center;margin: 10px auto;padding: 20px 0;
  }
  span{
    color: #000;width: 80px;line-height: 2px;background-color: #fbfbfb;border:2px solid #b4b4b4;margin: 0 10px;padding: 0 10px;
  }
  a:link{
    text-decoration: none;
  }
</style>
<script type="text/javascript">
  window.onload=function () {
      var oClock=document.getElementById("clock");
      var oSpan=oClock.getElementsByTagName("span");
      setInterval(getTimes,1000);
      getTimes();
      function getTimes() {
          var nDate=new Date();
          var aDate=[nDate.getHours(),nDate.getMinutes(),nDate.getSeconds()];
          for(var i in aDate) oSpan[i].innerHTML=format(aDate[i])
      }
      function format(a) {
          return a.toString().replace(/^(\d)$/,"0$1")
      }
  }
</script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>USuperStar</title>
  </head>
  <body>
  <div id="top_div">
    <div><canvas id="canvas"></canvas></div>
  </div>
  <div id="left_content"></div>
  <div style="margin: -6px auto auto;width: 304px;height: 404px;float: left;border:3px solid rgb(175,175,175)" align="center">
    <div id="right_content">
      <div style="height: 200px;border-bottom-color: rgb(231,231,231);border-bottom-width: 1px;border-bottom-style: solid;text-align: center;">
      <p>
        <img src="upload/usuperstar.png" width="120px" height="31px">
      </p>
        <p>
          <img src="upload/logo.png" height="120px" width="67px">
        </p>
        <script src="style/add-content.js" type="text/javascript"></script>
      </div>
      <div id="clock">
        <span></span>:<span></span>:<span></span>
      </div>
      <p>If you have some thing to book,you can call<em>335-14567</em></p>
      <p style="margin: 10px auto auto;padding: 20px 0 10px">
      <a href="login.html" style="color: blue;margin-left: 50px">前台登录</a>
        <a href="admin.html" style="color: blue;margin-right:50px">管理员登录</a>
      </p>
    </div>
  </div>
  </body>
     <script src="style/jetbrains-index.js"></script>
</html>
