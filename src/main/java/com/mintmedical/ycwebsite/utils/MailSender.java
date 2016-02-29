package com.mintmedical.ycwebsite.utils;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.task.TaskExecutor;



/**
 * Created by BryanLin on 2015/8/17.
 * 并没有用到，如果要用邮件发的话就可以用到了
 */
public class MailSender {


    private ApplicationContext ctx= new ClassPathXmlApplicationContext("spring/applicationContext.xml");
   /* @Resource
    private JavaMailSender javaMailSender;

    @Resource
    private TaskExecutor taskExecutor;*/
    //private JavaMailSender javaMailSender = (JavaMailSender)ctx.getBean("javaMailSender");
    private TaskExecutor taskExecutor = (TaskExecutor)ctx.getBean("taskExecutor");

    public void send(String from,String subject,String to,String text){
        //this.taskExecutor.execute(new SendMailThread(from, subject, to, text));
        sendMail(from, subject, to, text);
    }

    //内部线程类，利用线程池异步发邮件。
    private class SendMailThread implements Runnable {
        private String to;
        private String from;
        private String subject;
        private String text;
        private SendMailThread(String from,String subject,String to,String text) {
            super();
            this.to = to;
            this.from = from;
            this.subject = subject;
            this.text = text;
        }
        //@Override
        public void run() {
        	sendMail(from, subject, to, text);
        }
    }
 	
    public void sendMail(String from,String subject,String to,String text) {
        /*try {
            SimpleMailMessage mail = new SimpleMailMessage();

            mail.setTo(to);

            mail.setFrom(from);
            mail.setSubject(subject);
            mail.setText(text);
            javaMailSender.send(mail);
        
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        HtmlEmail multipartemail = new HtmlEmail();
        try {
            multipartemail.setHostName("smtp.exmail.qq.com");

            multipartemail.addTo("bryanlin@mintmedical.cn", "jiang");

            multipartemail.setFrom("357305882@qq.com", "jiang");

            //multipartemail.setAuthentication("bryanlin@mintmedical.cn", "mtlovelxj2012-");   //"XXXXX"是上面163邮箱的那个用户名,即去掉"@163.com","****"是163邮箱的密码

            multipartemail.setSubject("邮件测试");
            // set the html message
            multipartemail.setCharset("gb2312");

            // set the alternative message
            multipartemail.setTextMsg("dfsdfsdf");

            //发送邮件

            multipartemail.send();
        } catch (Exception e) {
            System.out.println(e.toString());
        }

    }


}
