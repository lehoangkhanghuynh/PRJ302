/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utils.DbiUtils;

/**
 *
 * @author USER
 */
public class DAO extends DTO {

    public DAO() {
    }

    public DTO searchbyID(String id) {
        DTO user = null;
        
        
        
        try {
            Connection conn = DbiUtils.getConnection();
            String sql = "SELECT * FROM tblUsers WHERE userID=?";
            System.out.println(sql);
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String userID = rs.getString("userID");
                String fullName = rs.getString("fullName");
                String password = rs.getString("password");
                String roleID = rs.getString("roleID");
                boolean status = rs.getBoolean("status");
                user = new DTO(userID, fullName, password, roleID, status);
            }
        } catch (Exception e) {
            return null;
        }
        System.out.println(user);
        return user;
    }
    public DTO login(String username, String password){
        DTO user = searchbyID(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }else{
            return null;
        }
    }
}
