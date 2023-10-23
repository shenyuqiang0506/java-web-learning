package Filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

/**
 * @Author 申宇强
 * @Date 2023/5/30 14:14
 */
@WebFilter("/*")
public class CodeExchange implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //进入
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setContentType("text/html;charset=UTF-8");
        filterChain.doFilter(servletRequest, servletResponse);//放行
        //退出
    }

    @Override
    public void destroy() {
        //Filter.super.destroy();
    }
}
