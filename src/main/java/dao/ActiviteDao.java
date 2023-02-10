package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import config.MySqlConnection;
import model.Personne;
import model.Activite;
// dao - crud 
//classe Personne, type clé primaire type Integer
public class ActiviteDao implements Dao<Activite, Integer> {

	@Override
	public List<Activite> findAll() {
		ArrayList<Activite> activite = null;
		Connection connection = MySqlConnection.getConnection();
		String sql = "SELECT * FROM activite";
		try {
			Statement statement = connection.createStatement();
			ResultSet result = statement.executeQuery(sql);
			activite = new ArrayList<>();
			while (result.next()) {
				activite.add(new Activite(result.getInt("num"), result.getString("nom"), result.getString("type"), result.getString("lieu"), result.getString("date"), result.getString("heure")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return activite;
	}

	@Override
	public Activite findById(Integer id) {
		Connection connection = MySqlConnection.getConnection();
		String sql = "SELECT * FROM personne WHERE num = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet result = statement.executeQuery();
			if (result.next()) {
				return new Activite(result.getInt("num"), result.getString("nom"), result.getString("type"), result.getString("lieu"), result.getString("date"), result.getString("heure"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
//		Personne personne = null;
//		Connection connection = MySqlConnection.getConnection();
//		String sql = "SELECT * FROM personne WHRERE num= " + id;
//		try {
//			Statement statement = connection.createStatement();
//			ResultSet result = statement.executeQuery(sql);
//			if (result.next()) {
//				personne = new Personne(result.getInt("num"), result.getString("nom"), result.getString("prenom"));
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} 
//		return personne;
//	}

	@Override
	public Activite save(Activite objet) {
		Connection connection = MySqlConnection.getConnection();
		String sql = "INSERT INTO activite (nom, type, lieu, date, heure) VALUES (?, ?, ?, ?, ?)";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, objet.getNom());
			statement.setString(2, objet.getType());
			statement.setString(3, objet.getLieu());
			statement.setString(4, objet.getDate());
			statement.setString(5, objet.getHeure());
			int nombre = statement.executeUpdate();
			if (nombre > 0) {
				return objet;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

//	String sql = "SELECT * FROM personne WHERE num = ?";
//	try {
//		PreparedStatement statement = connection.prepareStatement(sql);
//		statement.setInt(1, id);
		
	@Override
	public Activite update(Activite objet) {
		Connection connection = MySqlConnection.getConnection();
		String sql = "UPDATE activite SET nom = ?, type = ?, lieu = ?, date = ?, heure = ? WHERE num= ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, objet.getNom());
			statement.setString(2, objet.getType());
			statement.setString(3, objet.getLieu());
			statement.setString(4, objet.getDate());
			statement.setString(5, objet.getHeure());
			int nombre = statement.executeUpdate();
			if (nombre > 0) {
				return objet;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void remove(Integer id) {
		Connection connection = MySqlConnection.getConnection();
		String sql = "DELETE FROM activite WHERE num = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
//spring angular 

