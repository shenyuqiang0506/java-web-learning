package Filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * @Author 申宇强
 * @Date 2023/5/23 16:45
 */
@WebFilter("/admin/*")
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
//        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //验证登录
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        if (request.getSession().getAttribute("id") == null) {
            servletResponse.getWriter().println("禁止访问");
            return;//请求弹回
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
//        Filter.super.destroy();
    }
}
