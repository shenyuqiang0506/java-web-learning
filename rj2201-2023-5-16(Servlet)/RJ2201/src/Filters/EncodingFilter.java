package Filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;

import java.io.IOException;

/**
 * @Author 申宇强
 * @Date 2023/5/23 15:04
 */
//面向对象三大特征
//封装:属性私有,方法公开
//继承:实现代码复用性
//多态:实现代码扩展,基于接口编程

//1.接口内的所有的方法都是虚方法
//2.接口是类,而且是一个纯虚类(所以方法都是虚方法)
//3.如果类包含虚方法,则该类为虚类
//4.虚类不能用于创建对象
@WebFilter("/*")
public class EncodingFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //Filter.super.init(filterConfig);
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
        //Filter.super.destroy();
    }
}
