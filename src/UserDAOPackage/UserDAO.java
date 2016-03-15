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

import org.apache.catalina.connector.Request;

public class UserDAO {

	public void submitHostData(hostModel newHostData) { //FINISH THIS!!!
		try (Connection connection = getConnection()) {
			System.out.println("submitHostData method started");
			String st = "INSERT INTO `boatsharedb`.`boathosts` (`fname`, `lname`, `email`, `address`, "
					+ "`city`, `state`, `zip`, `peoplecapicity`, `boattype`, "
					+ "`pictureurl`, `profile`, `interests`) "
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
			statement.setString(10,newHostData.getPictureurl());
			statement.setString(11, newHostData.getProfile());
			statement.setString(12, newHostData.getInterests());  
			System.out.println(statement.executeUpdate());
			statement.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<hostModel> viewHostData() { 
		String query = "SELECT * FROM boatsharedb.boathosts;";
		return searchDBByInputQuery(query);
	}
	
	public ArrayList<hostModel> viewHostDataByCity(String city) { 
		String query = "SELECT * FROM boatsharedb.boathosts Where City like \"%"+city+"%\";";
		return searchDBByInputQuery(query);
	}
	
	public ArrayList<hostModel> viewHostDataBySearch(String searchInput, String type) { 
		String query = "SELECT * FROM boatsharedb.boathosts where boattype = \""+type+"\" and city = \""+searchInput+"\";";
		return searchDBByInputQuery(query);
	}

	public ArrayList<hostModel> viewHostDataBySearch1(String searchInput, String type, String sort) { 
			String query = "Select * from (SELECT * FROM boatsharedb.boathosts Where "+type+" like \"%"+searchInput+"%\";) sort by " +sort+";";
			return searchDBByInputQuery(query);
	}
	
	
	public ArrayList<hostModel> viewHostDataByType(String type) { 
		String query = "SELECT * FROM boatsharedb.boathosts Where boattype like \"%"+type+"%\";";
		return searchDBByInputQuery(query);
	}
	
	public ArrayList<hostModel> viewHostDataBySort(String sort) { 
		String query = "SELECT * FROM boatsharedb.boathosts order by "+sort+";";
		return searchDBByInputQuery(query);
	}
	
	private ArrayList<hostModel> searchDBByInputQuery(String query) {
		try (Connection connection = getConnection()) {
			System.out.println("viewHostDataByCity method started");
			PreparedStatement statement = connection.prepareStatement(query);
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
				host.setPictureurl(results.getString(11));
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
