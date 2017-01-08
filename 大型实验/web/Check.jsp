<%@ page import="demo.DB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="demo.DoString" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/13/013
  Time: 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>结账界面</title>
</head>
<body>
<%!
    int cost;
    String Cname;
    DB mydb=new DB();
    ResultSet re;
    Date time;
%>
<%
    String Cmycard=request.getParameter("cust_mycard");
    if(Cmycard!=null)
    {
    String sql="Select cust_name from tb_cust where cust_mycard='"+Cmycard+"'";
    mydb.doPstm(sql);
    re=mydb.getRs();
    if(re!=null)
    {
        while(re.next())
        {
            out.print("欢迎光临！"+re.getString(1)+"<br>");
        }
    }
    sql="Select room_cost from tb_room,tb_cust where tb_room.room_id=tb_cust.room_id and cust_mycard='"+Cmycard+"'";
    mydb.doPstm(sql);
    re=mydb.getRs();
    if(re!=null)
    {
        while (re.next())
        {
            cost=re.getInt(1);
        }
    }
%>
<%
    sql="Select cust_time from tb_cust where cust_mycard='"+Cmycard+"'";
    mydb.doPstm(sql);
    re=mydb.getRs();
    if(re!=null)
    {
        while (re.next()) {
            time = re.getDate(1);
            System.out.print(time);
        }
    }
        Date newTime = new Date();
        long date = ((newTime.getTime() - time.getTime()) / 1000 / 3600 / 24);
        out.print("总共花费金额：");
        out.print(date * cost);
        out.print("元");
%>
<%
    sql="update tb_room,tb_cust set isCheck=false where tb_room.room_id=tb_cust.room_id and cust_mycard='"+Cmycard+"'";
    mydb.doUpdate(sql);
    sql="delete from tb_cust where cust_mycard='"+Cmycard+"'";
    mydb.doUpdate(sql);
%>
<a href="waiter.jsp"><button>结清</button></a>
<%}%>
</body>
</html>
