package com.mintmedical.ycwebsite.utils;

import java.io.Serializable;

/**
 * 用来封装转化成json字符串返回前台的对象
 * Created by BryanLin on 2015/8/17.
 */
public class Json implements Serializable{

    private static final long serialVersionUID = 2302953171016798853L;

    /**
     * 后台处理的结果
     */
    private String msg = "";

    private Object object;

    private boolean success = false;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }
}
