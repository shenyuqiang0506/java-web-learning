package myservlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author JMLF
 * @date 2023-02-20
 */
public class R01Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //配置请求的编码
        req.setCharacterEncoding("UTF-8");
        //user:root,password:12346
        String user = req.getParameter("user");
        System.out.println("用户提交的用户名："+user);

        String password = req.getParameter("password");
        System.out.println("用户提交的密码："+password);
        //进行逻辑判断
        if ("root".equals(user) && "123456".equals(password)){
            System.err.println("登录成功");
        }else {
            System.err.println("登录失败");
        }

    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
