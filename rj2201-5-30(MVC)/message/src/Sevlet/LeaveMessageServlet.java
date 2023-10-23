package Sevlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import javaBean.Message;
import userbean.MessageDB;
import userbean.UserDB;

import java.io.IOException;
import java.io.Serial;
import java.util.List;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:53
 */


@WebServlet("/LeaveMessageServlet")
public class LeaveMessageServlet extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;

    public LeaveMessageServlet() {
        super();
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        String url ="/LeaveMessage.jsp";

        if(action.equals("leave"))
            url = leaveMessage(request,response);

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    private String leaveMessage(HttpServletRequest request,HttpServletResponse response) {
        String title = request.getParameter("title");
        String context = request.getParameter("context");
        String userid="";
        String url="";
        HttpSession session = request.getSession();

        //将数据存储于Message对象
        Message message = new Message();

        message.setUserid((String) ((HttpSession) session).getAttribute("userid"));
        message.setTitle (title);
        message.setContext(context);

        MessageDB.insert(message);

        Message messagess = MessageDB.selectMessage(userid);

        List<Message> mL = UserDB.selectU();
        request.setAttribute("MessageList", mL);
        url="/MessageList.jsp";

        return url;
    }
}
