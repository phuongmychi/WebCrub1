/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminPost;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class BeanHelp {

    public Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userzalo", "root", "");

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return con;

    }

    public int AddUser(User us) {
        int i = 0;
        try {
            Connection con = getConnection();
            PreparedStatement pt = con.prepareStatement("insert into userzalodb(name,email,username,password) values(?,?,?,?)");
            pt.setString(1, us.getName());
            pt.setString(2, us.getEmail());
            pt.setString(3, us.getUsername());
            pt.setString(4, us.getPassword());
            i = pt.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return i;

    }

    public boolean updateUser(User upu) {
        // int status =0;
        try {
            Connection con = getConnection();
            PreparedStatement pt = con.prepareStatement("update userzalodb set name=?,email=?,username=?,password=? where userid=?");
            pt.setString(1, upu.getName());
            pt.setString(2, upu.getEmail());
            pt.setString(3, upu.getUsername());
            pt.setString(4, upu.getPassword());
            pt.setInt(5, upu.getUserid());
            int status = pt.executeUpdate();
            if (status > 0) {
                return true;

            } else {

                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;

        }
    }
    
    public  boolean DelUser(int userid){
       User delu = new User();
        try {
            Connection con = getConnection();
            PreparedStatement pt = con.prepareStatement("delete from userzalodb where userid = ? ");
            pt.setInt(1, delu.getUserid());
            int status = pt.executeUpdate();
            if(status>0){
                return true;
            }
            else{
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
       
    }

    public List getAllUser() {
        List<User> lst = new ArrayList<User>();
        try {
            Connection con = getConnection();
            PreparedStatement pt = con.prepareStatement("select * from userzalodb");
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
                User us = new User();
                us.setUserid(rs.getInt("userid"));
                us.setName(rs.getString("name"));
                us.setEmail(rs.getString("email"));
                us.setUsername(rs.getString("username"));
                us.setPassword(rs.getString("password"));
                lst.add(us);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return lst;
    }

    public User getUserbyId(int userid) {
        User us = null;
        try {
            Connection con = getConnection();
            PreparedStatement pt = con.prepareStatement("select * from userzalodb where userid=?");
            pt.setInt(1, userid);
            ResultSet rs = pt.executeQuery();
            while (rs.next()) {
//                User us = new User();
                us = new User();
                us.setUserid(rs.getInt("userid"));
                us.setName(rs.getString("name"));
                us.setEmail(rs.getString("email"));
                us.setUsername(rs.getString("username"));
                us.setPassword(rs.getString("password"));

            }
        } catch (Exception e) {
        }

        return us;
    }
}
