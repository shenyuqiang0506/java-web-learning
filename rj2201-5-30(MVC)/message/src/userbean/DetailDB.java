package userbean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connectionPool.ConnectionPool;
import connectionPool.DBUtil;
import javaBean.Detail;

/**
 * @Author 申宇强
 * @Date 2023/6/1 14:55
 */
public class DetailDB {

    public static int insert(Detail detail) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;

        String query = "INSERT INTO Detail (mid, cuser, comment, ctime)"
                + "VALUES (?, ?, ?, ?)";
        try {

            ps = connection.prepareStatement(query);
            ps.setString(1, detail.getMid());
            ps.setString(2, detail.getCuser());
            ps.setString(3, detail.getComment());
            ps.setDate(4, detail.getCtime());

            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }

    }


    public static Detail selectDetail(String userid) {
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;

        String query = "SELECT * FROM Detail "
                + "WHERE userid = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, userid);
            rs = ps.executeQuery();
            Detail detail = null;
            if (rs.next()) {
                detail = new Detail();
                detail.setMid(rs.getString("mid"));
                detail.setCuser(rs.getString("cuser"));
                detail.setComment(rs.getString("comment"));
                detail.setCtime(rs.getDate("ctime"));
            }

            return detail;
        } catch (SQLException e) {
            System.out.println(e);
            return null;
        } finally {
            DBUtil.closeResultSet(rs);
            DBUtil.closePreparedStatement(ps);
            pool.freeConnection(connection);
        }
    }


    public static List<Detail> selectU() {
        List<Detail> mL = new ArrayList<Detail>();
        ConnectionPool pool = ConnectionPool.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;


        String query = "SELECT * FROM detail";
        try {
            ps = connection.prepareStatement(query);
            rs = ps.executeQuery();
            Detail m = null;
            while (rs.next()) {
                m = new Detail();
                m.setCid(rs.getString("cid"));
                m.setMid(rs.getString("mid"));
                m.setCuser(rs.getString("cuser"));
                m.setComment(rs.getString("comment"));
                m.setCtime(rs.getDate("ctime"));
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
