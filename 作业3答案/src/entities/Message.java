package entities;

import java.util.Date;

public class Message {
	int id;
	Date time;
	String user;
	String msg;
	String toUser;
	boolean isPrivate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public boolean isPrivate() {
		return isPrivate;
	}
	public void setPrivate(boolean isPrivate) {
		this.isPrivate = isPrivate;
	}
	public Message(int id, Date time, String user, String msg, boolean isPrivate, String toUser) {
		super();
		this.id = id;
		this.time = time;
		this.user = user;
		this.msg = msg;
		this.isPrivate = isPrivate;
		this.toUser = toUser;
	}
	public String getToUser() {
		return toUser;
	}
	public void setToUser(String toUser) {
		this.toUser = toUser;
	}
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
