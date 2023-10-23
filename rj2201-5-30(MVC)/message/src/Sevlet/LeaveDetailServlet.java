package Sevlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import javaBean.Detail;
import javaBean.User;
import userbean.DetailDB;
import userbean.UserDB;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:53
 */
@WebServlet("/LeaveDetailServlet")
public class LeaveDetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LeaveDetailServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        String action = request.getParameter("action");
        String url ="/MessageDetail.jsp";

        if(action.equals("leave"))
            url = leaveDetail(request,response);

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }



    private String leaveDetail(HttpServletRequest request,HttpServletResponse response) {
        String comment = request.getParameter("comment");
        String mid = request.getParameter("mid");
        HttpSession session = request.getSession();
        String userid="";
        String url="";
        String cuser="";

        //将数据存储于Detail对象
        Detail detail = new Detail();
        userid = (String)session.getAttribute("userid");
        User user = UserDB.selectUser1(userid);
        cuser = user.getUsername();

        detail.setMid(mid);
        detail.setCuser(cuser);
        detail.setComment(comment);
        detail.setCtime(new Date(System.currentTimeMillis()));

        DetailDB.insert(detail);

        List<Detail> mL = DetailDB.selectU();
        request.setAttribute("DetailList", mL);

        url="/MessageDetail.jsp?mid="+mid;
        return url;
    }

}

