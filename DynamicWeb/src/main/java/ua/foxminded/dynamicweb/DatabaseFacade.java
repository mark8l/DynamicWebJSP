package ua.foxminded.dynamicweb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;

public class DatabaseFacade {
	public static List<String> getBooks() {
		List<String> result = new ArrayList<String>();

		try (Connection connection = DriverManager
				.getConnection("jdbc:mysql://u520564.mysql.masterhost.ru:3306/u520564", "u520564", "MIcYchandanI2.")) {
			System.out.println("Java JDBC MySQL Example");

			System.out.println("Connected to MySQL database!");
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM BOOKS");
			while (resultSet.next()) {
				result.add(resultSet.getString("name"));
			}
		} catch (SQLException e) {
			System.out.println("Connection failure.");
			e.printStackTrace();
		}
		return result;
	}

	public static void deleteBook(String name) {
		try (Connection connection = DriverManager
				.getConnection("jdbc:mysql://u520564.mysql.masterhost.ru:3306/u520564", "u520564", "MIcYchandanI2.")) {
			System.out.println("Java JDBC MySQL Example");

			System.out.println("Connected to MySQL database!");
			Statement statement = connection.createStatement();
			Formatter f = new Formatter();
			f.format("DELETE FROM u520564.BOOKS WHERE name='%s'", name);
			String deleteQuery = f.toString();
			System.out.println(deleteQuery);
			statement.executeUpdate(deleteQuery);
		} catch (SQLException e) {
			System.out.println("Connection failure.");
			e.printStackTrace();
		}
	}

	public static void addBook(int id, String name) {
		try (Connection connection = DriverManager
				.getConnection("jdbc:mysql://u520564.mysql.masterhost.ru:3306/u520564", "u520564", "MIcYchandanI2.")) {
			System.out.println("Java JDBC MySQL Example");

			System.out.println("Connected to MySQL database!");
			Statement statement = connection.createStatement();
			Formatter f = new Formatter();
			f.format("INSERT u520564.BOOKS(id, name) VALUES (%d, '%s')", id, name);
			String addQuery = f.toString();
			System.out.println(addQuery);
			statement.executeUpdate(addQuery);
		} catch (SQLException e) {
			System.out.println("Connection failure.");
			e.printStackTrace();
		}
	}
}
