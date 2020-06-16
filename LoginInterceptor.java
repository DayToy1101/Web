package dt.config;

import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {
    //Controller接收客户端请求，匹配到路径，并拦截到，进入方法前执行的逻辑
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession(false);//如果没有session，不创建
        if(session != null){//表示有登录
            //权限的校验
            //if(权限通过)
            return true;
            //else(不通过)
//            response.setStatus(HttpStatus.FORBIDDEN.value());//权限不通过的状态码：403
        }
        response.setStatus(HttpStatus.UNAUTHORIZED.value());//401

        response.sendRedirect("/login.html");
        return false;
    }

    //Controller方法执行完，之后的逻辑
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
