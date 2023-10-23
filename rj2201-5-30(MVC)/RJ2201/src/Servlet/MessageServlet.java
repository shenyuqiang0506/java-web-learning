package Servlet;

import Beans.Message;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Author 申宇强
 * @Date 2023/5/30 14:14
 */
@WebServlet("/message.do")
public class MessageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //查数据库
        //转发
        req.getRequestDispatcher("/showMessage.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Message message = new Message();
        message.setUsername(req.getParameter("username"));
        message.setMessageTitle(req.getParameter("MessageTitle"));
        message.setMessageContent(req.getParameter("MessageContent"));
        message.setTime(new Date());

        //旧信息
        ServletContext app = req.getServletContext();
        List<Message> list = (List<Message>) app.getAttribute("msgs");
        if (list == null) {
            list = new ArrayList<Message>();
        }
        list.add(message);
        app.setAttribute("msgs", list);
        //转发
        req.getRequestDispatcher("/showMessage.jsp").forward(req,resp);


    }
}
