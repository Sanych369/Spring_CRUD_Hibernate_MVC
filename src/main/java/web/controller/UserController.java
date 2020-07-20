//package web.controller;
//
//import model.User;
//import org.springframework.lang.NonNull;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import service.UserServiceImp;
//
//import java.util.List;
//
//@Controller
//public class UserController {
//    private UserServiceImp userServiceImp;
//
//    @GetMapping("/users")
//    public String usersList(Model model) {
//        List<User> userList = userServiceImp.getAllUsers();
//        model.addAttribute("users", userList);
//        return "users";
//    }
//    @PostMapping("/addUser")
//    public String addUser(@RequestParam("name") String name,
//                          @RequestParam("password") String password,
//                          @RequestParam("email") String email) {
//        User newUser = new User(name, password, email);
//        userServiceImp.addUser(newUser);
//        return "redirect:/users";
//    }
//
//    @PostMapping("/deleteUser")
//    public String deleteUser(@RequestParam @NonNull Long id) {
//        userServiceImp.deleteUser(id);
//        return "redirect:/users";
//    }
//
//    @PostMapping("/updateUser")
//    public String updateUser(@RequestParam("name") String name,
//                             @RequestParam("password") String password,
//                             @RequestParam("email") String email,
//                             Model model) {
//        User newUser = new User(name, password, email);
//        userServiceImp.updateUser(newUser);
//        model.addAttribute("user", newUser);
//        model.addAttribute("userList", userServiceImp.getAllUsers());
//        return "redirect:/users";
//    }
//}
