package Beans;

import java.util.Date;

/**
 * @Author 申宇强
 * @Date 2023/5/30 14:14
 */
public class Message {
    private String username;
    private String messageTitle;
    private String messageContent;
    private Date time;

    public Message() {

    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getMessageTitle() {
        return messageTitle;
    }

    public void setMessageTitle(String messageTitle) {
        this.messageTitle = messageTitle;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Message(String username, String messageTitle, String messageContent, Date time) {
        this.username = username;
        this.messageTitle = messageTitle;
        this.messageContent = messageContent;
        this.time = time;
    }

    @Override
    public String toString() {
        return "Message{" +
                "username='" + username + '\'' +
                ", messageTitle='" + messageTitle + '\'' +
                ", messageContent='" + messageContent + '\'' +
                ", time=" + time +
                '}';
    }
}
