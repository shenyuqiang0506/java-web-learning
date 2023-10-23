package Filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * @Author 申宇强
 * @Date 2023/6/10 18:36
 */
@WebFilter("/*")
public class EncodingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //进入
        //return;//请求驳回
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setContentType("text/html;charset=UTF-8");
        filterChain.doFilter(servletRequest, servletResponse);//放行
        //退出
    }

    @Override
    public void destroy() {

    }
}
