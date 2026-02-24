/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utils.DbUtils;

/**
 *
 * @author HOANG KHANG PC
 */
public class userDao {

    public userDto SearchById(String id) {
        userDto user = null;
        String sql = "SELECT * FROM dbo.tblUsers where userID = ?";
        try ( Connection conn = DbUtils.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String userId = rs.getString("userID");
                String fullName = rs.getString("fullName");
                String password = rs.getString("password");
                String roleID = rs.getString("roleID");
                boolean status = rs.getBoolean("status");
                
                user = new userDto(userId, fullName, password, roleID, status);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public userDto Login(String userName, String password){
        userDto user = SearchById(userName);
        if (user!= null && user.getPassword().equals(password)){
            return user;
    }
        return null;
    }
}
