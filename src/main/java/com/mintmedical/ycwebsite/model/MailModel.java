package com.mintmedical.ycwebsite.model;

import java.io.Serializable;

/**
 * Created by BryanLin on 2015/8/17.
 */
public class MailModel implements Serializable{

    private static final long serialVersionUID = 455775036145994986L;

    private String name;
    private String email;
    private String captcha;
    private String text;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
