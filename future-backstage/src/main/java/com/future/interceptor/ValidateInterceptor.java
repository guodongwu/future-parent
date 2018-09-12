package com.future.interceptor;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.future.jedis.RedisHelper;
import com.future.utils.CookieKit;
import com.future.utils.EncryptKit;
import com.future.utils.JJwtUtil;
import com.future.utils.Md5Utils;
import com.future.vo.LoginVo;
import io.jsonwebtoken.Claims;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by wu on 2018/9/12.
 */
public class ValidateInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURI();
        String loginUrl="/login";
        //非登录页面
        HttpSession session=request.getSession();
        String key= (String) session.getAttribute("key");
        boolean isRemember=false;
        Cookie cookie= CookieKit.getCookieByKeyWord(request,"YES");
        if(key!=null) {
            String  sessionToken=CookieKit.getCookieValue( request,key);
            if (sessionToken==null) {
                response.sendRedirect(request.getContextPath() + loginUrl);
                session.removeAttribute("key");
                return false;
            }
            if(url.contains("login")){
                response.sendRedirect(request.getContextPath() + "/index");
                return false;
            }

       }else  if(cookie!=null ){
            String cookieToken= cookie.getValue();
                isRemember =cookieToken.startsWith("YES");
                if(isRemember){
                    try {
                        cookieToken=cookieToken.substring(3);
                        String token= EncryptKit.getInstance().Base64Decode(cookieToken);
                        Claims claims = JJwtUtil.getInstance().parseJWT(token);
                        ObjectMapper mapper = new ObjectMapper();
                        LoginVo login = mapper.readValue(claims.getSubject(), LoginVo.class);
                        String name = Md5Utils.encryptMD5(String.valueOf(login.getUsername()));
                        session.setAttribute("key", name);
                    }catch (Exception e){
                        return  true;
                    }
                    if(url.contains("login")){
                        response.sendRedirect(request.getContextPath() + "/index");
                        return false;
                    }
                }
        }else if(!url.contains("login")){
            response.sendRedirect(request.getContextPath() + loginUrl);
            return false;
        }
       return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
