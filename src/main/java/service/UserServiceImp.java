package service;

import DAO.UserDAOImp;
import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImp implements UserService {

    @Autowired
    private UserDAOImp userDAOImp;

    @Override
    @Transactional
    public void addUser(User user) {
        userDAOImp.addUser(user);
    }

    @Override
    @Transactional
    public void deleteUser(Long id) {
        userDAOImp.deleteUser(id);
    }

    @Override
    @Transactional
    public void updateUser(User user) {
        if (user.getName() != null && user.getEmail() != null
                && user.getPassword() != null)
        userDAOImp.updateUser(user);
    }

    @Override
    @Transactional
    public List<User> getAllUsers() {
        return userDAOImp.getAllUsers();
    }

    @Override
    @Transactional
    public User getUserById(Long id) {
        return userDAOImp.getUserById(id);
    }
}