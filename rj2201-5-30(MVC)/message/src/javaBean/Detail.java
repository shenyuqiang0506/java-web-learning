package javaBean;

import java.sql.Date;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:52
 */
public class Detail {
    private  String cid;
    private String mid;
    private  String cuser;
    private  String comment;
    private Date ctime;

    public Detail() {
        cid ="";
        cuser="";
        comment = "";

    }

    public Detail(String cid, String mid, String cuser, String comment, Date ctime) {
        this.cid = cid;
        this.mid = mid;
        this.cuser = cuser;
        this.comment = comment;
        this.ctime = ctime;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid;
    }

    public String getCuser() {
        return cuser;
    }

    public void setCuser(String cuser) {
        this.cuser = cuser;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getCtime() {
        return ctime;
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }
}
