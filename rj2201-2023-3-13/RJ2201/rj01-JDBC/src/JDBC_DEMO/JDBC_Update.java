package JDBC_DEMO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBC_Update {public static void main(String[] args) {
    try {
        //1.注册驱动
        Class.forName("com.mysql.cj.jdbc.Driver");
        //2.连接数据库
        //2.获取数据库连接 通过DriverManger获取Connection连接对象
        //  2.1 url：数据库连接的地址  jdbc:mysql://ip:端口号/数据库名称?useSSL=false&serverTimezone=UTC
        //  2.2 username：用户名
        //  2.3 password：密码
        Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/shen?useSSL=false&serverTimezone=UTC",
                "root",
                "123456");
        //3.通过连接信息获取执行sql语句的工具 PreparedStatement
        PreparedStatement statement = connection.prepareStatement("UPDATE 学生表 SET 年龄 = '12' WHERE id = 3");
        //4.通过创建出的工具进行执行操作 会返回结果集
        int i = statement.executeUpdate();
        System.out.println("执行修改成功" + i);
        //6.关闭资源
        connection.close();
    } catch (Exception e) {
        e.printStackTrace();
        }
    }
}


