package Hk01Servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class H01Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //配置请求代码
        req.setCharacterEncoding("UTF-8");
        //user:shen,password:888
        String user = req.getParameter("user");
        System.out.println("用户提交的用户名："+user);

        String password = req.getParameter("password");
        System.out.println("用户提交的密码："+password);
        //进行逻辑判断
        if ("shen".equals(user) &&"888".equals(password)){
            System.err.println("登陆成功");
        } else {
            System.err.println("登录失败");
        }
    }
}
