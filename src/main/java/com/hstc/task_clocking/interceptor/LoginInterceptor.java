package com.hstc.task_clocking.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();
        // 登录后不在重定向登录界面
        HttpSession session = request.getSession();
        String loginUsername = (String) session.getAttribute("loginUsername");
        if (loginUsername != null) {
            return true;
        }
        if(uri.indexOf("teacher/page")>0 || uri.indexOf("student/page")>0
                && request.getSession().getAttribute("loginUsername") == null) {
            request.setAttribute("errorMsg", "请先登录");
            response.sendRedirect(request.getContextPath() + "/login");
            return false;
        } else {
            return true;
        }
    }
}
