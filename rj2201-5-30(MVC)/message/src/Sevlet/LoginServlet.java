package Sevlet;

import java.io.IOException;
import java.util.List;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import javaBean.Message;
import javaBean.User;
import userbean.*;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:55
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    String message = "";

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "/login.jsp";
        String action = request.getParameter("action");
        request.setCharacterEncoding("utf-8");

        //检测页面是否提交
        if (action == null)
            url = "/login.jsp";
        else if (action.equals("login"))
            url = login(request, response);

        request.setAttribute("message", message);
        getServletContext().getRequestDispatcher(url).forward(request,response);
    }

    @SuppressWarnings("unused")
    private String login(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        String userid = "";

        User user = UserDB.selectUser(username);

        String url = "/register.jsp";

        if (user != null) {

            if (user.getPassword().equals(password)) {
                Cookie u = new Cookie("userid", username);
                u.setMaxAge(60 * 60 * 24 * 365 * 2);
                u.setPath("/");
                response.addCookie(u);

                userid = user.getId();
                session.setAttribute("userid", userid);

                List<Message> mL = UserDB.selectU();
                request.setAttribute("MessageList", mL);
                url = "/MessageList.jsp";

            } else {
                message = "密码错误";
                url = "/login.jsp";
            }
        } else {
            message = "该用户不存在";
            url = "/login.jsp";
        }
        return url;
    }

}
