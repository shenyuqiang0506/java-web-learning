package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;



@WebFilter(
        filterName = "CharacterEncodingFilter",
        urlPatterns = "/*",
        initParams = {@WebInitParam(name = "characterEncoding", value = "utf-8")}
)
public class CharacterEncodingFilter implements Filter {
    private String characterEncoding;

    @Override
    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("characterEncoding=" + characterEncoding);
        if (null != characterEncoding) {
            req.setCharacterEncoding(characterEncoding);
            resp.setCharacterEncoding(characterEncoding);
        }
        chain.doFilter(req, resp);
    }

    @Override
    public void init(FilterConfig config) throws ServletException {
        characterEncoding = config.getInitParameter("characterEncoding");
    }

}