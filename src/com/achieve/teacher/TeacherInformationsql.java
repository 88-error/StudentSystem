package com.achieve.teacher;

import java.sql.*;

public class TeacherInformationsql {
    public static Object[][] teadata = new Object[99][6];
    private static Connection getConn() {
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://127.0.0.1:3306/Information?serverTimezone=UTC";
        String username = "myuser";
        String password = "bokuaka";
        Connection conn = null;
        try {
            Class.forName(driver); //classLoader,加载对应驱动
            conn = (Connection) DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }


    /**
     *          查询
     * */
    
    public static Integer getAll() {
        Connection conn = getConn();
        String sql = "select * from teacher";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement)conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            int col = rs.getMetaData().getColumnCount();
            int i = 0;
            while (rs.next()) {
                teadata[i][0] = rs.getInt(1);
                teadata[i][1] = rs.getString(2);
                teadata[i][2] = rs.getString(3);
                teadata[i][3] = rs.getString(4);
                teadata[i][4] = rs.getInt(5);
                teadata[i][5] = rs.getString(6);
                i++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    

}
