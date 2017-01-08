<%@ page import="demo.OpenDB" %>
<%@ page import="demo.DB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="demo.BookCust" %>
<%@ page import="demo.DoString" %>
<%@ page import="java.text.ParseException" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/12/012
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预订信息</title>
</head>
<body>
    <%!
        int CurrPage=1;
        int MaxPage=1;
        int PageSize=3;
        int CountRow=0;
        DB mydb=new DB();
        ResultSet re;
    %>
<%
    String strPage=request.getParameter("Page");
    if(strPage==null)
    {
        CurrPage=1;
    }
    else
    {
        CurrPage=Integer.parseInt(strPage);
    }
    String sql="SELECT * FROM tb_book";
    mydb.doPstm(sql);
    re=mydb.getRs();
    re.last();
    int i=0;
    CountRow=re.getRow();
    MaxPage=(CountRow/PageSize);
    if(CountRow%PageSize>0){MaxPage++;}
%>
<%
    Integer n=(CurrPage-1)*3;
    sql="SELECT * FROM tb_book limit "+n.toString()+",3";
    mydb.doPstm(sql);
    re=mydb.getRs();
    out.print("<html>");
    %>
    <meta http-equiv="content-encoding" content="text/html;charset=UTF-8">
    <%
    out.print("<body><div align=\"center\">");
    out.print("<div><h2>预订信息<h2></div>");
    out.print("<table border=\"5\"height=\"100\"width=\"400\"bordercolor=\"red\">");
    out.print("<tr><td>客人姓名</td><td>客人电话</td><td>预订客房</td><td>预订时间</td></tr>");
    if(re==null)
    {
        out.print("<tr><td>无预订信息</td></tr>");
    }
    else
    {
        while (re.next())
        {
            BookCust cust=new BookCust();
            DoString doString=new DoString();
            cust.setBook_name(re.getString(2));
            cust.setBook_tel(re.getString(3));
            cust.setBook_room(re.getString(4));
            cust.setBook_time(re.getDate(5));
            session.setAttribute("book_cust",cust);
            out.print("<tr>"+"<td>"+cust.getBook_name()+"</td><td>"+cust.getBook_tel()+"</td><td>"+cust.getBook_room()+"</td><td>"+doString.dataChange(cust.getBook_time())+"</td>");

%>
    <td><a href="DeleteBook.jsp?Bid=<%=re.getString(1)%>">删除</a></td>
    <td><a href="ChangeBook.jsp?Bid=<%=re.getString(1)%>">修改</a></td>
    <%
                out.print("</tr>");
        }
    }
    out.print("</table>");
%>
    <%if(CurrPage>1){%>
    <a href="book.jsp?Page=<%=CurrPage-1%>">上一页</a>
    <%}%>
    <%if(CurrPage<MaxPage){%>
    <a href="book.jsp?Page=<%=CurrPage+1%>">下一页</a>
    <%}%>
    <a href="book.jsp?Page=<%=MaxPage%>">最后一页</a>
    <a href="inputBook.jsp"><input type="button" value="增加预订信息"></a>
    <%
        out.print("</div></body></html>");
    %>
</body>
</html>
