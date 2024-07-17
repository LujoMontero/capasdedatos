package org.example.desafiocapabd.dao.daoimpl;

import org.example.desafiocapabd.connection.MysqlConnection;
import org.example.desafiocapabd.dao.UserDAO;
import org.example.desafiocapabd.model.UserDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {

    private static final String SELECT_ALL_USERS = "SELECT id, nombre, rut, direccion, correo, telefono, contacto, telefono_contacto FROM proveedores";
    private static final String SELECT_USER_BY_ID = "SELECT id, nombre, rut, direccion, correo, telefono, contacto, telefono_contacto FROM proveedores WHERE id = ?";
    private static final String INSERT_USER_SQL = "INSERT INTO proveedores (nombre, rut, direccion, correo, telefono, contacto, telefono_contacto) VALUES (?, ?, ?, ?, ?, ?, ?)";
    private static final String UPDATE_USER_SQL = "UPDATE proveedores SET nombre = ?, rut = ?, direccion = ?, correo = ?, telefono = ?, contacto = ?, telefono_contacto = ? WHERE id = ?";
    private static final String DELETE_USER_SQL = "DELETE FROM proveedores WHERE id = ?";

    @Override
    public UserDTO selectUser(int id) {
        UserDTO user = null;
        try (Connection connection = MysqlConnection.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                int userId = rs.getInt("id");
                String name = rs.getString("nombre");
                String rut = rs.getString("rut");
                String address = rs.getString("direccion");
                String email = rs.getString("correo");
                String phone = rs.getString("telefono");
                String contact = rs.getString("contacto");
                String phone2 = rs.getString("telefono_contacto");
                user = new UserDTO(userId, name, rut, email, address, phone, contact, phone2);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    @Override
    public List<UserDTO> selectAllUsers() {
        List<UserDTO> users = new ArrayList<>();
        try (Connection connection = MysqlConnection.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("nombre");
                String rut = rs.getString("rut");
                String address = rs.getString("direccion");
                String email = rs.getString("correo");
                String phone = rs.getString("telefono");
                String contact = rs.getString("contacto");
                String phone2 = rs.getString("telefono_contacto");
                users.add(new UserDTO(id, name, rut, email, address, phone, contact, phone2));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return users;
    }

    @Override
    public UserDTO insertUser(UserDTO user) {
        UserDTO newUser = null;
        try (Connection connection = MysqlConnection.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL, PreparedStatement.RETURN_GENERATED_KEYS)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getRut());
            preparedStatement.setString(3, user.getAddress());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, user.getPhone());
            preparedStatement.setString(6, user.getContact());
            preparedStatement.setString(7, user.getPhone2());

            preparedStatement.executeUpdate();
            ResultSet rs = preparedStatement.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                newUser = new UserDTO(id, user.getName(), user.getRut(), user.getAddress(), user.getEmail(), user.getPhone(), user.getContact(), user.getPhone2());
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return newUser;
    }

    @Override
    public UserDTO updateUser(UserDTO user) {
        try (Connection connection = MysqlConnection.getInstance().getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_SQL)) {
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getRut());
            preparedStatement.setString(3, user.getAddress());
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(5, user.getPhone());
            preparedStatement.setString(6, user.getContact());
            preparedStatement.setString(7, user.getPhone2());
            preparedStatement.setInt(8, user.getUserId());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    @Override
    public boolean deleteUser(int id) {
        boolean rowDeleted = false;
        try (Connection connection = MysqlConnection.getInstance().getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_USER_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rowDeleted;
    }
}