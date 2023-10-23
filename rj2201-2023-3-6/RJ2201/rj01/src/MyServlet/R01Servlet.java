package MyServlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class R01Servlet extends HttpServlet {
    //集合 list map
    public static Map<String,String> users;
    static {
        //初始化操作
        users = new HashMap<String,String>();
        //填入几个数据
        users.put("root","123456");
        users.put("stu01","234567");
        users.put("stu02","345678");
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        //获取一些用户传递的数据 eg：user=你好
        //获取数据：通过 请求的对象HttpServletRequest req 调用getParameter方法来获取到用户发送的数据
        String user = req.getParameter("user");
        System.out.println(user);
        String password = req.getParameter("password");
        System.out.println(password);
        //设置数据 setAttribute getAttribute
        if(users.get(user) != null && users.get(user).equals(password)){
            //给当前的请求设置一个叫 msg 的变量数据
            req.setAttribute("msg","恭喜您登录成功");
            //转发到新的页面 req.getRequestDispatcher：获取转发的位置 forward：携带请求和响应两个变量转发
            req.getRequestDispatcher("success.jsp").forward(req,resp);
        }else{
            req.setAttribute("msg","账号密码有误");
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }
}
