/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class UserDAO {

    ArrayList<UserDTO> list = new ArrayList<>();

    public UserDAO() {
        list.add(new UserDTO("user1", "user1", "M10"));
        list.add(new UserDTO("user2", "user2", "CR7"));
    }

    public UserDTO searchById(String id) {
        for (UserDTO userDTO : list) {
            if (userDTO.getUsername().equals(id)) {
                return userDTO;
            }
        }
        return null;
    }

    public UserDTO login(String username, String password) {
        UserDTO user = searchById(username);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        } else {
            return null;
        }
    }

}
