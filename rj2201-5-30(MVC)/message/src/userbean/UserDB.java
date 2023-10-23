package userbean;

import connectionPool.ConnectionPool;
import connectionPool.DBUtil;
import javaBean.User;
import javaBean.Message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:55
 */
public class UserDB {
    //插入用户
    public static int insert(User user) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;

        String query = "INSERT INTO User (username, password)null".formatted();
        try {

            ps = connection.prepareStatement("query");
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    //判断用户名是否存在
    public static boolean UserExists(String username) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT username FROM User " + "WHERE username = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);

        }
    }

    //根据username读出user
    public static User selectUser(String username) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;


        String query = "SELECT * FROM User "
                + "WHERE username = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, username);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setId(rs.getString("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
            }
            return user;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    //根据userid读出user
    public static User selectUser1(String id) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;


        String query = "SELECT * FROM User "
                + "WHERE id = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            User user = null;
            if (rs.next()) {
                user = new User();
                user.setId(rs.getString("id"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
            }
            return user;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }

    //从message表中读出所有数据
    public static List<Message> selectU() {
        List<Message> mL = new ArrayList<Message>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;


        String query = "SELECT * FROM Message ";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            Message m = null;
            while (rs.next()) {
                m = new Message();
                m.setContext(rs.getString("context"));
                m.setMid(rs.getString("mid"));
                m.setTitle(rs.getString("title"));
                m.setUserid(rs.getString("userid"));
                mL.add(m);
            }

            return mL;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }
}
