<%@ page import="demo.OpenDB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="demo.DB" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/9/009
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客房信息</title>
</head>
<body>
<jsp:useBean id="room_message" class="demo.CreatePage"/>
<%!
    int CountPage=0;
    int CurrPage=1;
    int PageSize=5;
    int CountRow=0;
    DB mydb=new DB();
    ResultSet re;
%>
<%
    String StrPage=request.getParameter("Page");
    if(StrPage==null)
    {
        CurrPage=1;
    }
    else {
        CurrPage=Integer.parseInt(StrPage);
    }
    String sql="Select * From tb_room where isCheck=false and isBook=false";
    mydb.doPstm(sql);
    re=mydb.getRs();
    re.last();
    int i=0;
    CountRow=re.getRow();
    CountPage=(CountRow/PageSize);
    room_message.setCountPage(CountPage);
    if(CountRow%PageSize>0)
    {
        CountPage++;
    }
%>
<%
    Integer n=(CurrPage-1)*5;
    sql="Select * from tb_room where isCheck=false and isBook=false limit "+n.toString()+",5";
    mydb.doPstm(sql);
    ResultSet re=mydb.getRs();
    out.print("<html><body><div align=\"center\">");
    out.print("<div><h2>空闲房间信息<h2></div>");
    out.print("<table border=\"5\"height=\"100\"width=\"400\"bordercolor=\"red\">");
    out.print("<tr><td>房间号</td><td>房间类型</td><td>房间费用</td></tr>");
    if(re!=null)
    {
        while(re.next())
        {

            out.print("<tr><td>"+re.getString(1)+"</td><td>"+re.getString(2)+"</td><td>"+re.getString(3)+"</td></tr>");
        }
    }
    out.print("</table>");
%>
<%if(CurrPage>1){%>
  <a href="waiter.jsp?Page=<%=CurrPage-1%>">上一页</a>
  <%}%>
  <%if(CurrPage<CountPage){%>
   <a href="waiter.jsp?Page=<%=CurrPage+1%>">下一页</a>
  <%}%>
   <a href="waiter.jsp?Page=<%=CountPage%>">最后一页</a>
<%
    out.print("</div></body></html>");
%>
</body>
</html>
