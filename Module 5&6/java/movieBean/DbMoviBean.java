/*
Nardos Gebremedhin
Module 5 & 6
11/15/2025

This JavaBean handles database operations for the movies project, it retrieve all movie IDs for populating a dropdown menu
retrieve a specific movie record by its movie ID
The bean connects to the CSD430 database using the user name and password 
*/

package movieBean;
import java.sql.*;
import java.util.ArrayList;

public class DbMoviBean {

    private Connection conn;

    // constructor
    public DbMoviBean() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Integer> getMovieIds() {
        ArrayList<Integer> ids = new ArrayList<>();
        try {
            String query = "SELECT movie_id FROM nardos_movies_data";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ids.add(rs.getInt("movie_id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ids;
    }

    public ResultSet getMovieById(int id) {
        try {
            String query = "SELECT * FROM nardos_movies_data WHERE movie_id = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            return ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
