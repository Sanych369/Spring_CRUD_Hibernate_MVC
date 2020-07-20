package web.controller;

import model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import service.UserServiceImp;

import java.util.List;

@Controller
public class IndexController {
    @GetMapping("/")
    public String usersList(Model model) {
        UserServiceImp userServiceImp = new UserServiceImp();
        userServiceImp.addUser(new User("s","sss", "SSS"));
        userServiceImp.addUser(new User("a","aaa", "AAA"));
        List<User> userList = userServiceImp.getAllUsers();
        model.addAttribute("userList", userList);
        return "index";
    }
}
