package Servlets_reg;

import Beans.StudentBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * @Author 申宇强
 * @Date 2023/5/18 12:00
 */
@WebServlet("/regsrv.do")
public class Regsrv extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("utf-8");
//        resp.setContentType("text/html;charset=UTF-8");
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        String confirm_pwd = req.getParameter("confirm_pwd");
        String gender = req.getParameter("gender");
        StudentBean student = new StudentBean();
        student.setId(id);
        student.setName(name);
        student.setPassword(password);
        student.setConfirm_pwd(confirm_pwd);
        student.setGender(gender);
        PrintWriter out = resp.getWriter();
        if (password.equals(confirm_pwd)) {
            out.println("注册信息" +"<br/>");
            out.println("学号:" + student.getId() + "<br/>");
            out.println("姓名:" + student.getName() + "<br/>");
            out.println("密码:" + student.getPassword() + "<br/>");
            out.println("性别:" + student.getGender() + "<br/>");
        } else {
            out.print("两次输入的密码不相同，请重新输入！");
        }
    }
}
