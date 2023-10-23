package Filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * @Author 申宇强
 * @Date 2023/6/10 18:37
 */
@WebFilter("/manage.jsp")
public class manage implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //验证登录
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        if (request.getSession().getAttribute("user_id") == null) {
            //servletResponse.getWriter().println("禁止访问,请先登录或者注册");
            request.getRequestDispatcher("Regist.jsp").forward(servletRequest, servletResponse);
            return;//请求弹回
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {

    }
}
