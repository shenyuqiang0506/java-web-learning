package represp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author JMLF
 * @date 2023-02-27
 */
public class R02Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("只有get会打印");
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("写代码的位置");
        /*
        * 1.配置该项目模块需要引入tomcat
        * 2.在src下创建一个包 创建了一个继承HttpServlet的java类，重写了doGet和doPost
        * 3.配置在web =》 web-inf 底下的web.xml
        * 4.需要配置servlet标签和servlet-mapping标签
        * 5.一个servlet实现类可以对应多个servlet-mapping
        * */
        //HttpServletRequest 请求：存放来自浏览器发送的信息
        //HttpServletResponse 响应：从java代码要回馈到浏览器的信息
        //中文乱码解决方法:前后端编码保持一致 utf-8
        req.setCharacterEncoding("")
        PrintWriter writer = resp.getWriter();
        writer.println("收到了 收到了 ok response");
    }
}
