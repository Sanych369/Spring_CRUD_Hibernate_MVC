package web.controller;

import model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import service.UserService;
import service.UserServiceImp;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private UserService userService;

    @GetMapping("/")
    public String usersList(Model model) {
        this.userService.addUser(new User("s","sss", "SSS"));
        userService.addUser(new User("a","aaa", "AAA"));
        List<User> userList = userService.getAllUsers();
        model.addAttribute("userList", userList);
        return "index";
    }
}
