package Hk02Servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class H02Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
        //System.out.println("dayin");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String user = req.getParameter("user");
        System.out.println(user);
        String password = req.getParameter("password");
        System.out.println(password);
        //设置数据 setAttribute getAttribute
        if ("shen".equals(user) && "888".equals(password)){
            //给当前的请求设置一个叫 msg 的变量数据
            req.setAttribute("msg","恭喜你登陆成功");
            //转发到新的页面 req.getRequestDispatcher：获取转发的位置 forward：携带请求和响应两个变量转发
            req.getRequestDispatcher("success.jsp").forward(req,resp);
        }else {
            req.setAttribute("msg","账号或者密码错误");
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }
}
