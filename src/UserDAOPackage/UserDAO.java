package UserDAOPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.hostModel;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class UserDAO {

	public void submitHostData(hostModel newHostData) { //FINISH THIS!!!
		try (Connection connection = getConnection()) {
			System.out.println("submitHostData method started");
			String st = "INSERT INTO `boatsharedb`.`boathosts` (`fname`, `lname`, `email`, `address`, "
					+ "`city`, `state`, `zip`, `peoplecapicity`, `boattype`, "
					+ "`picture`, `profile`, `interests`) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement statement = connection.prepareStatement(st);
			statement.setString(1, newHostData.getFname());
			statement.setString(2, newHostData.getLname());
			statement.setString(3, newHostData.getEmail());
			statement.setString(4, newHostData.getAddress());
			statement.setString(5, newHostData.getCity());
			statement.setString(6, newHostData.getState());
			statement.setString(7, newHostData.getZip());
			statement.setInt(8, newHostData.getCapacity());
			statement.setString(9, newHostData.getType());
//The picture will go here	
			statement.setString(10, "");
			statement.setString(11, newHostData.getProfile());
			statement.setString(12, newHostData.getInterests());  
			System.out.println(statement.executeUpdate());
			statement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<hostModel> viewHostData() { 
		try (Connection connection = getConnection()) {
			System.out.println("viewHostData method started");
			String st = "SELECT * FROM boatsharedb.boathosts;";
			PreparedStatement statement = connection.prepareStatement(st);
			ResultSet results = statement.executeQuery();
			ArrayList<hostModel> hosts = new ArrayList<hostModel>();
			while (results.next()) {
				hostModel host = new hostModel();
				host.setId(results.getInt(1));
				host.setFname(results.getString(2));
				host.setLname(results.getString(3));
				host.setEmail(results.getString(4));
				host.setAddress(results.getString(5));
				host.setCity(results.getString(6));
				host.setState(results.getString(7));
				host.setZip(results.getString(8));
				host.setCapacity(results.getInt(9));
				host.setType(results.getString(10));
				host.setProfile(results.getString(11));
				host.setInterests(results.getString(12));
				hosts.add(host);
			}
			statement.close();
			return hosts;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public hostModel getHostById(int id) {
		try (Connection connection = getConnection()) {
			String st = "select * from boathosts where id=?";
			Connection c = getConnection();
			PreparedStatement s = c.prepareStatement(st);
			s.setInt(1, id);
			ResultSet results = s.executeQuery();
			s.close();
			return wrapResultSetToModel(results);
		} catch (Exception e) {
			return null;
		}
	}

	private Connection getConnection() {
		try {

			// Class.forName("com.mysql.jdbc.Driver");
			// Connection c;
			// String connectionString = "jdbc:mysql://endpoint";
			// c = DriverManager.getConnection(connectionString, "root",
			// "password");
			// return c;

			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/dbb");
			Connection c = ds.getConnection();
			return c;

		} catch (Exception e) {
			e.printStackTrace();

			return null;
		}
	}

	private hostModel wrapResultSetToModel(ResultSet result) throws SQLException {
		hostModel newModel = new hostModel();
		if (result.wasNull()) {
			return newModel;
		}
		while (result.next()) {
			newModel.setId(result.getInt("id"));
		}
		return newModel;
	}

}
