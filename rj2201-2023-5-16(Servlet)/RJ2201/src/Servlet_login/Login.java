package Servlet_login;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * @Author 申宇强
 * @Date 2023/5/18 12:01
 */
@WebServlet("/loginsrv.do")
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //resp.setContentType("text/html;charset=UTF-8");
        //req.setCharacterEncoding("UTF-8");
        String id = req.getParameter("id");
        String password = req.getParameter("password");
        if (id.equals("001") && password.equals("123")) {
            //resp.getWriter().println("登录成功");
            //登录标志
            resp.sendRedirect("admin/index.jsp");
        } else {
            resp.getWriter().println("学号或者密码错误");
        }
    }
}
