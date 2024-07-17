package org.example.desafiocapabd.dao;

import org.example.desafiocapabd.model.UserDTO;

import java.util.List;

public interface UserDAO {

    UserDTO selectUser(int id);

    List<UserDTO> selectAllUsers();

    UserDTO insertUser(UserDTO user);

    UserDTO updateUser(UserDTO user);

    boolean deleteUser(int id);
}
