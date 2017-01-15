<%@ page import="demo.CreatePage" %>
<%@ page import="demo.DB" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>客房</title>
    <style>
        a:link{
            text-decoration: none;
        }
        a:visited{
            text-decoration: none;
        }
    </style>
</head>
<body>
<%!
    CreatePage createPage=new CreatePage();
    DB mydb=new DB();
    ResultSet re;
    int CurrroomPage;
    int CountroomPage;
%>
<%
    String strPageRoom=request.getParameter("PageRoom");
    if(strPageRoom==null)
    {
        CurrroomPage=1;
    }
    else
    {
        CurrroomPage=Integer.parseInt(strPageRoom);
    }
%>
<%
    String sql="select * from tb_room";
    mydb.doPstm(sql);
    re=mydb.getRs();
    re.last();
    int PageRow=re.getRow();
    createPage.setAllr(PageRow);
    int perR=createPage.getPerR();
    CountroomPage=PageRow/perR;
    if(PageRow%perR!=0)
    {
        CountroomPage++;
    }
    createPage.setCountPage(CountroomPage);
%>
<%
    int n=(CurrroomPage-1)*perR;
    sql="select * from tb_room limit "+n+","+perR;
    mydb.doPstm(sql);
    re=mydb.getRs();
    out.print("<div><h2>房间信息<h2></div>");
    out.print("<table border=\"5\"height=\"100\"width=\"400\"bordercolor=\"black\">");
    out.print("<tr><td>房间号</td><td>房间类型</td><td>房间费用</td></tr>");
    if(re!=null)
    {
        while(re.next())
        {

            out.print("<tr><td>"+re.getString(1)+"</td><td>"+re.getString(2)+"</td><td>"+re.getString(3)+"</td>");
            %>
<td><a href="ChangeRoom.jsp?BID=<%=re.getString(1)%>">修改</a></td>
<td><a href="DeleteRoom.jsp?BID=<%=re.getString(1)%>">删除</a></td>
<%
        }
    }
    out.print("</table>");
%>
<%if(CurrroomPage>1){%>
<a href="adminManager.jsp?PageRoon=<%=CurrroomPage-1%>">上一页</a>
<%}%>
<%if(CurrroomPage<CountroomPage){%>
<a href="adminManager.jsp?PageRoom=<%=CurrroomPage+1%>">下一页</a>
<%}%>
<a href="adminManager.jsp?PageRoom=<%=CountroomPage%>">最后一页</a>
<%
    out.print("</body></html>");
%>

</body>
</html>