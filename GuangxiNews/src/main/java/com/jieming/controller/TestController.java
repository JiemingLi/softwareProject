package com.jieming.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jieming.dao.CultureMapper;
import com.jieming.dao.TypeMapper;
import com.jieming.entity.Culture;
import com.jieming.entity.Type;
import com.jieming.service.CultureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

/**
 * Created by JieMing on 2018/12/29.
 */
@Controller
@RequestMapping("/news")
public class TestController {

    @Autowired
    private CultureService cultureService ;


    @Autowired
    private TypeMapper typeMapper;

    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String testDemo(){
        List<Culture> list = cultureService.getAll();
        for (Culture c :
                list) {
            System.out.println(c);
        }
        System.out.println("111");
        return "index";
    }

    @RequestMapping(value = "/all",method = RequestMethod.GET)
    public ModelAndView getAllInfo(HttpServletRequest request){
        String cn = request.getParameter("page");
        ModelAndView modelAndView = new ModelAndView();
        Integer n ;
        if(cn == null){
            n = 1;
        }else{
            n = Integer.valueOf(cn);
        }
        PageHelper.startPage(n,10);
        List<Culture> list = cultureService.getAll();
        PageInfo pageInfo = new PageInfo(list);
        Integer total = pageInfo.getPages();
        if(pageInfo.isHasPreviousPage()){
            modelAndView.addObject("pre",pageInfo.getPrePage());
        }else {
            modelAndView.addObject("pre", 1);
        }
        if(pageInfo.isHasNextPage()){
            modelAndView.addObject("next",pageInfo.getNextPage());
        }else{
            modelAndView.addObject("next",n);
        }
        modelAndView.addObject("current",n);
        modelAndView.addObject("next",pageInfo.getNextPage());
        modelAndView.addObject("list",list);
        modelAndView.addObject("total",total);
        modelAndView.addObject("type",1);
        modelAndView.setViewName("index");
        return modelAndView;
    }

//    @RequestMapping(value = "/all",method = RequestMethod.GET)
//    public String getAllInfo(Map<String,Object> map){
//        List<Culture> list = cultureService.getAll();
//        map.put("list",list);
//        return "index";
//    }

    @RequestMapping(value = "/culture/{pathId}",method = RequestMethod.GET)
    public String getTraditional(@PathVariable Long pathId, Map<String,Object> map, HttpServletRequest request){
        String cn = request.getParameter("page");
        Integer n ;
        if(cn == null){
            n = 1;
        }else{
            n = Integer.valueOf(cn);
        }
        PageHelper.startPage(n,10);
        List<Culture> list = cultureService.getNewsByCategories(pathId);
        PageInfo pageInfo = new PageInfo(list);
        Integer total = pageInfo.getPages();
        if(pageInfo.isHasPreviousPage()){
            map.put("pre",pageInfo.getPrePage());
        }else {
            map.put("pre", 1);
        }
        if(pageInfo.isHasNextPage()){
            map.put("next",pageInfo.getNextPage());
        }else{
            map.put("next",n);
        }
        map.put("current",n);
//        map.put("next",pageInfo.getNextPage());
        map.put("list",list);
        map.put("total",total);
        map.put("type",pathId);
        return "index";
    }

    @RequestMapping(value = "/contents/{pathId}",method = RequestMethod.GET)
    public String getContents(@PathVariable Long pathId,Map<String,Object> map){
        Culture culture = cultureService.getContentsById(pathId);
        map.put("contentCulture",culture);
//        System.out.println(culture.getContents());
        return "content";
    }

    @RequestMapping(value = "/searchByTitles",method = RequestMethod.GET)
    public String getPostsByTitle(Map<String,Object> map,HttpServletRequest request){
//        search_keyword = new String(search_keyword.getBytes("ISO8859-1"),"utf-8");
        String search_keyword = request.getParameter("search_keyword");
        if(search_keyword!=null){
            String keyword = search_keyword;
            try {
                keyword = new String(keyword.getBytes("iso-8859-1"),"UTF-8");
                request.getSession().setAttribute("keyword",keyword);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        String cn = request.getParameter("page");
        Integer n ;
        if(cn == null){
            n = 1;
        }else{
            n = Integer.valueOf(cn);
        }
        PageHelper.startPage(n,10);
        List<Culture> list = cultureService.getNewsByTitleKeyWord((String) request.getSession().getAttribute("keyword"));
        PageInfo pageInfo = new PageInfo(list);
        Integer total = pageInfo.getPages();
        if(pageInfo.isHasPreviousPage()){
            map.put("pre",pageInfo.getPrePage());
        }else {
            map.put("pre", 1);
        }
        if(pageInfo.isHasNextPage()){
            map.put("next",pageInfo.getNextPage());
        }else{
            map.put("next",n);
        }
        map.put("current",n);
//        map.put("next",pageInfo.getNextPage());
        map.put("list",list);
        map.put("total",total);
        map.put("type",-1);
        return "index";
    }
}
