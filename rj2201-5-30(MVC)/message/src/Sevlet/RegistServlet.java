package Sevlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import javaBean.User;
import userbean.UserDB;

import java.io.IOException;
import java.io.Serial;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:55
 */

@WebServlet("/RegistServlet")
public class RegistServlet extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;
    String message ="";

    public RegistServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        String url ="register.html";

        if(action.equals("regist"))
            url = registerUser(request,response);

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }


    private String registerUser(HttpServletRequest request,HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String message = "";
        HttpSession session = request.getSession();

        //将数据存储于User对象
        User user = new User();
        user.setUsername (username);
        user.setPassword(password);

        String url = "/login.jsp";

        if(password.equals(password2))
        {
            if( !UserDB.UserExists(username) ) {
                message = "注册成功！";
                session.setAttribute("message", message);

                UserDB.insert(user);
                return url;
            }
            else
            {
                message = "用户名已存在";
                url = "/register.jsp";
                session.setAttribute("message", message);
                return url;
            }
        }
        else
        {
            message = "密码不一致";
            session.setAttribute("message", message);
            url = "/register.jsp";
            return url;
        }
    }
}
