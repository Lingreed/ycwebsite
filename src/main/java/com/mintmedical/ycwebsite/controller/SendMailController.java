package com.mintmedical.ycwebsite.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;
import com.mintmedical.ycwebsite.model.MailModel;
import com.mintmedical.ycwebsite.service.SendMailService;
import com.mintmedical.ycwebsite.utils.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;

/**
 * Created by BryanLin on 2015/8/12.
 */
@Controller
public class SendMailController extends BaseController{

    @Autowired
    private Producer captchaProducer;
    
    @Resource
    private SendMailService sendMailService;
    
    //向数据库里添加联系内容
    @RequestMapping(value = "/sendMail",method = { RequestMethod.POST })
    public void sendMail(MailModel model, HttpServletResponse response){
        Json j = new Json();
        if(sendMailService.add(model)){
        	j.setSuccess(true);
            j.setMsg("成功");
        }else{
        	j.setSuccess(false);
            j.setMsg("失败");
        }
        super.writeJson(response,j);
    }


    //生成验证码
   @RequestMapping(value = "/code/captcha-image")
    public ModelAndView getKaptchaImage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        HttpSession session = request.getSession();

        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");

        String capText = captchaProducer.createText();
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);

        BufferedImage bi = captchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }

        return null;
    }

    //验证码验证
    @RequestMapping(value = "/code/validateCaptcha",method = { RequestMethod.POST })
    public void validateCaptcha(@RequestParam(value = "code",required = true)String code,HttpServletRequest request,HttpServletResponse response){
        HttpSession session = request.getSession();
        Json j =new Json();
        String captcha = (String)session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        if(code.equals(captcha)){
            j.setSuccess(true);
        }else{
            j.setSuccess(false);
        }
        super.writeJson(response, j);
    }

}
