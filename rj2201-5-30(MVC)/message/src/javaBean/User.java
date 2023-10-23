package javaBean;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:52
 */
public class User {
    private String id;
    private String username;
    private String password;

    public User() {
        id = "";
        username = "";
        password = "";

    }

    public User(String id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
