package myservlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author JMLF
 * @date 2023-02-20
 */
public class R01Servlet extends HttpServlet {
    public R01Servlet() {
    }
     @Override
     protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //user:root,password:123456
        String user = req.getParameter("user");
        System.out.println("用户名" + user);
        String password = req.getParameter("password");
        System.out.println("用户提交的密码" + password);
        if ("root".equals(user) && "123456".equals(password)){
         System.err.println("登录成功");

        } else {
         System.err.println("登录失败");
    }


}


    }
