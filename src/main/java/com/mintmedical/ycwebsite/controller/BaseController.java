package com.mintmedical.ycwebsite.controller;

import com.alibaba.fastjson.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by BryanLin on 2015/8/17.
 */
public class BaseController {
    /**
     * 日志对象
     */
    protected Logger logger = LoggerFactory.getLogger(getClass());

    /**
     * 将对象写成json传给前台
     * @param response 相应页面的response
     * @param obj 转化成json的对象
     */
    protected void writeJson(HttpServletResponse response,Object obj){
        try {
            response.setContentType("application/json;charset=UTF-8");
            response.getWriter().write(JSONObject.toJSONString(obj));
            logger.debug(JSONObject.toJSONString(obj));
        } catch (IOException e) {
            logger.error("Response获取页面的Writer失败",e);
        }
    }
}
