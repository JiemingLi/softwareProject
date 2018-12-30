package com.jieming.interceptor;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jieming.entity.Culture;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by JieMing on 2018/12/30.
 */
public class PageInterceptor implements HandlerInterceptor{
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
//        String cn = request.getParameter("page");

        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("拦截");
//        System.out.println("查询后");
//
//        Integer page = (Integer) modelAndView.getModel().get("page");
//        PageHelper.startPage(page,10);
//        List<Culture> list = (List<Culture>) modelAndView.getModel().get("list");
//        PageInfo pageInfo = new PageInfo(list);
//        System.out.println("一共多少页:" + pageInfo.getPages());
//        modelAndView.addObject("total",pageInfo.getPages());
//        modelAndView.addObject("list",list);
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
