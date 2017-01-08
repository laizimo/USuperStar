<%@ page import="java.awt.*" %>
<%@ page import="java.util.Random" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/22/022
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="image/jpeg;charset=UTF-8" language="java" %>--%>
<%@page contentType="image/jpeg" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <title>验证码</title>
</head>
<body>
    <%!
        Color getRandColor(int fc,int bc){
        Random random=new Random();
        if(fc>255){
            fc=255;
        }
        if(bc<255){
            bc=255;
        }
        int r=fc+random.nextInt(bc-fc);
        int g=fc+random.nextInt(bc-fc);
        int b=fc+random.nextInt(bc-fc);
        return new Color(r,g,b);
    }
    %>

    <%
        //设置页面不缓存
        response.setHeader("Pragma","no-cache");
        response.setHeader("Cache-Control","no-catch");
        response.setDateHeader("Expires",0);

        //在内存中创建图像
        int width=60;
        int heigtht=20;
        BufferedImage image=new BufferedImage(width,heigtht,BufferedImage.TYPE_INT_RGB);

        //创建图像
        Graphics g=image.getGraphics();

        //随机生成对象
        Random random=new Random();

        //设置背景色
        g.setColor(getRandColor(200,250));
        g.fillRect(0,0,width,heigtht);

        //设置字体
        g.setFont(new Font("Tines Nev Roman",Font.PLAIN,18));

        //随机产生干扰线
        g.setColor(getRandColor(160,200));
        for(int i=0;i<255;i++){
            int x=random.nextInt(width);
            int y=random.nextInt(heigtht);
            int x1=random.nextInt(12);
            int y1=random.nextInt(12);
        }

        //随机产生认证码，4位数字
        String sRand ="";
        for(int i=0;i<4;i++){
            String rand=String.valueOf(random.nextInt(10));
            sRand+=rand;
            //把认证码显示到图像中去
            g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
            g.drawString(rand,13*i+6,16);
        }
        session.setAttribute("rCode",sRand);
        //图像生效
        g.dispose();
        //输出到页面
        ImageIO.write(image,"JPEG",response.getOutputStream());
        out.clear();
        out=pageContext.pushBody();
    %>


</body>
</html>
