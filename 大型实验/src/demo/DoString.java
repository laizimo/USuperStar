package demo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.SimpleTimeZone;

/**
 * Created by Administrator on 2016/12/12/012.
 */
public class DoString {
    public static String HTMLString(String source)
    {
        String changeStr="";
        changeStr=source.replace("&","&amp;");
        changeStr=changeStr.replace(">","&gt;");
        changeStr=changeStr.replace("<","&lt;");
        changeStr=changeStr.replace(" ","&nbsp");
        changeStr=changeStr.replace("\r\n","<br>");
        return changeStr;
    }

    public static String dataChange(Date source)
    {
        SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
        String changeTime=format.format(source);
        return changeTime;
    }
}
