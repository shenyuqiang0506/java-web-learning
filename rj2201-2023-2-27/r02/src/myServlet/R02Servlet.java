package myServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class R02Servlet extends HttpServlet {
    private static List<user> users;
    static {
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("只有get会打印");
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("写代码的位置");
        /*
         *1.配置该项目模块需要引入Tomcat
         * 2.在src下创建一个包 创建一个继承HttpServlet的java类,重写了doGet和doPost
         * 3.配置在web=>web-inf 底下的web.xml
         * 4.需要配置Servlet标签和Servlet-mapping标签
         * 5.一个Servlet实现类可以对应多个Servlet-mapping
         */
        //HttpServletRequest 请求: 存放来自浏览器的相关信息
        //HttpServletRequest 相应:从java代码要回馈浏览器的信息
        PrintWriter writer =resp.getWriter();
        writer.println("收到了 OK response");
        //解决中文乱码问题:保持前后端的编码一致
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        //获取一些用户的传递的数据 eg:user = 你好
        //获取数据:通过请求的对象
        String user = req.getParameter("user");
        System.out.println(user);
        String password = req.getParameter("password");
        System.out.println(password);
        //设置数据
        if("root".equals(user) && "123456".equals (password)){
            req.setAttribute("msg","恭喜你,登录成功");
            req.getRequestDispatcher("success.jsp").forward(req,resp);
        }else {
        req.setAttribute("msg","账号密码错误");}
        //转发到新的界面
        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }
}
