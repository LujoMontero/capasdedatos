package org.example.desafiocapabd.service.serviceimpl;

import org.example.desafiocapabd.dao.UserDAO;
import org.example.desafiocapabd.dao.daoimpl.UserDAOImpl;
import org.example.desafiocapabd.model.UserDTO;
import org.example.desafiocapabd.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    private final UserDAO userDao;

    public UserServiceImpl() {
        this.userDao = new UserDAOImpl();
    }

    @Override
    public UserDTO selectUser(int id) {
        return userDao.selectUser(id);
    }

    @Override
    public List<UserDTO> selectAllUsers() {
        return userDao.selectAllUsers();
    }

    @Override
    public UserDTO insertUser(UserDTO user) {
        return userDao.insertUser(user);
    }

    @Override
    public UserDTO updateUser(UserDTO user) {
        return userDao.updateUser(user);
    }

    @Override
    public boolean deleteUser(int id) {
        return userDao.deleteUser(id);
    }
}