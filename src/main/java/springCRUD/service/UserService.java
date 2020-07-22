package springCRUD.service;

import springCRUD.model.User;
import java.util.List;

public interface UserService {
    void addUser(User user);
    void deleteUser(Long id);
    void updateUser(User user);
    List<User> getAllUsers();
    User getUserById(Long id);
}