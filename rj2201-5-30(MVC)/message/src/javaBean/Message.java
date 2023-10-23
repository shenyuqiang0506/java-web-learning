package javaBean;

import java.io.Serializable;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:52
 */
public class Message implements Serializable {
    private String mid;
    private String userid;
    private String title;
    private String context;

    public Message() {
    }

    public Message(String mid, String userid, String title, String context) {
        this.mid = mid;
        this.userid = userid;
        this.title = title;
        this.context = context;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }
}
