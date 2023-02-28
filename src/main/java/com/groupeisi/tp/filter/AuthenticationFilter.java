package com.groupeisi.tp.filter;



import org.hibernate.internal.build.AllowSysOut;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public abstract class AuthenticationFilter implements Filter {

    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        chain.doFilter( request, new HttpServletResponseWrapper( (HttpServletResponse) response ) {
            @Override
            public void setHeader(String name, String value) {
                if( ! name.equalsIgnoreCase( "marieme" ) ) {
                    super.setHeader(name, value);
                }

            }
        });


    }

    public void destroy() {}
}