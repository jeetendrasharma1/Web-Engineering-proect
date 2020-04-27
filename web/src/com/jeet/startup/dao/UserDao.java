package com.jeet.startup.dao;

import java.sql.*;

import com.jeet.startup.model.User;
import com.jeet.startup.model.LoginBean;


public class UserDao {
	private String jdbcURL = "jdbc:mysql://localhost:3306/startup?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "abc123";

	private static final String INSERT_USERS_SQL = "INSERT INTO user" + "  (name,email,username,password,phone) VALUES "
			+ " (?, ?, ?, ?, ?);";

	
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertUser(User user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getUsername());
			preparedStatement.setString(4, user.getPassword());
			preparedStatement.setString(5, user.getPhone());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
    
	public User validate(LoginBean loginBean) throws ClassNotFoundException {
        boolean status = false;
        User user=null;
        
        try (Connection connection = getConnection();
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection
            .prepareStatement("select * from user where username = ? and password = ? ")) {
            preparedStatement.setString(1, loginBean.getUsername());
            preparedStatement.setString(2, loginBean.getPassword());

            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();
            if (status==true) {
             user=new User(rs.getString("name"),rs.getString("email"),rs.getString("username"),rs.getString("password"),rs.getString("phone"));
             System.out.println(rs.getString("name"));
            }
        } catch (SQLException e) {
            
            printSQLException(e);
        }
        return user;
    }

	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
