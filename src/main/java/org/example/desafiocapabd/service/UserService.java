package org.example.desafiocapabd.service;

import org.example.desafiocapabd.model.UserDTO;

import java.util.List;

public interface UserService {

    UserDTO selectUser(int id);

    List<UserDTO> selectAllUsers();

    UserDTO insertUser(UserDTO user);

    UserDTO updateUser(UserDTO user);

    boolean deleteUser(int id);
}