/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import utils.DbUtils;

/**
 *
 * @author HOANG KHANG PC
 */
public class UniversityDao {

    public ArrayList<UniversityDto> SearchByColumn(String column, String value) {
        ArrayList<UniversityDto> result = new ArrayList<>();
        try ( Connection conn = DbUtils.getConnection()) {
            String sql = "SELECT * FROM tblUniversity WHERE" + column + " = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, value);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String id = rs.getString("id");
                String name = rs.getString("name");
                String shortName = rs.getString("shortName");
                String description = rs.getString("description");
                int foundedYear = rs.getInt("foundedYear");
                String address = rs.getString("address");
                String city = rs.getString("city");
                String region = rs.getString("region");
                String type = rs.getString("type");
                int totalStudents = rs.getInt("totalStudents");
                int totalFaculties = rs.getInt("totalFaculties");
                Boolean isDraft = rs.getBoolean("isDraft");

                UniversityDto u = new UniversityDto(id, name, shortName, description, address, city, region, type, foundedYear, totalStudents, totalFaculties, true);
                result.add(u);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public ArrayList<UniversityDto> filterByColumn(String column, String value) {
        ArrayList<UniversityDto> result = new ArrayList<>();
        try ( Connection conn = DbUtils.getConnection()) {
            String sql = "SELECT * FROM tblUniversity WHERE " + column + " LIKE ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setNString(1, "%" + value + "%");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String id = rs.getString("id");
                String name = rs.getString("name");
                String shortName = rs.getString("shortName");
                String description = rs.getString("description");
                int foundedYear = rs.getInt("foundedYear");
                String address = rs.getString("address");
                String city = rs.getString("city");
                String region = rs.getString("region");
                String type = rs.getString("type");
                int totalStudents = rs.getInt("totalStudents");
                int totalFaculties = rs.getInt("totalFaculties");
                Boolean isDraft = rs.getBoolean("isDraft");

                UniversityDto u = new UniversityDto(id, name, shortName, description, address, city, region, type, foundedYear, totalStudents, totalFaculties, true);
                result.add(u);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public ArrayList<UniversityDto> searchById(String id) {
        return SearchByColumn("id", id);
    }

    public ArrayList<UniversityDto> SearchByName(String name) {
        return SearchByColumn("name", name);
    }

    public ArrayList<UniversityDto> filterByName(String name) {
        return filterByColumn("name", name);
    }
}
