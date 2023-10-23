package MyServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //System.out.println("只有get会打印");
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取数据：通过 请求的对象HttpServletRequest req 调用getParameter方法来获取到用户发送的数据
        String user = req.getParameter("user");
        System.out.println(user);
        String password = req.getParameter("password");
        System.out.println(password);
        R01Servlet.users.put(user,password);

    }
}
