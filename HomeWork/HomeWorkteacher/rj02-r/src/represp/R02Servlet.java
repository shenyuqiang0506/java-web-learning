package represp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author SHEN
 * @date 2023-02-27
 */
public class R02Servlet extends HttpServlet {
    // list map
    private static Map<String, String> users;

    static {
        //初始化操作
        users = new HashMap<String, String>();
        users.put("shen", "888");
        users.put("root", "888");
        users.put("hello", "888");


    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //System.out.println("只有get会打印");
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //System.out.println("写代码的位置");
        /*
         * 1.配置该项目模块需要引入tomcat
         * 2.在src下创建一个包 创建了一个继承HttpServlet的java类，重写了doGet和doPost
         *   2.1注意doGet或者doPost调用对方的时候只要写一个就好 eg：doGet里写了doPost，doPost里就不能再写调用doGet
         *   2.2调用的时候前面不能加super关键字
         *   2.3注意调用的时候不要调用本身
         * 3.配置在web =》 web-inf 底下的web.xml
         * 4.需要配置servlet标签和servlet-mapping标签
         * 5.一个servlet实现类可以对应多个servlet-mapping,url-pattern:一定要以 / 开始
         * */
        //HttpServletRequest 请求：存放来自浏览器发送的信息
        //HttpServletResponse 响应：从java代码要回馈到浏览器的信息
        //解决乱码：保持前后端一致的编码格式 utf-8，gbk
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        //获取一些用户传递的数据 eg：user=你好
        //获取数据：通过 请求的对象HttpServletRequest req 调用getParameter方法来获取到用户发送的数据
        String user = req.getParameter("user");
        System.out.println(user);
        String password = req.getParameter("password");
        System.out.println(password);
        if (users.get(user) ! = null && users.get(users).equals(password) ){
            //设置数据 setAttribute getAttribute
            if ("shen".equals(user) && "888".equals(password)) {
                //给当前的请求设置一个叫 msg 的变量数据
                req.setAttribute("msg", "恭喜您登录成功");
                //转发到新的页面 req.getRequestDispatcher：获取转发的位置 forward：携带请求和响应两个变量转发
                req.getRequestDispatcher("success.jsp").forward(req, resp);
            } else {
                req.setAttribute("msg", "账号密码有误");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }

            //本周作业：设置一个集合存放账号数据，修改47-55的内容，改成与集合里的数据进行对比
            //成功就转发到 success.jsp 并输出当前登录的账号信息
            //失败转发到当前页面 正常提示


        }
    }

}
