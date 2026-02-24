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

    public userDto searchById(String id) {
        String url = "SELECT * FROM tblUsers WHERE userID = ?";
        userDto user = null;
        try ( Connection conn = DbUtils.getConnection()) {

            PreparedStatement ps = conn.prepareStatement(url);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String userID = rs.getString("userID");
                String fullName = rs.getString("fullName");
                String password = rs.getString("password");
                String roleID = rs.getString("roleID");
                boolean status = rs.getBoolean("status");

                user = new userDto(userID, fullName, password, roleID, status);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public userDto Login(String userID, String password) {
        userDto user = searchById(userID);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }
}
