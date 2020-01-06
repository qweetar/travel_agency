package ru.myfirstwebsite.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import ru.myfirstwebsite.domain.User;
import ru.myfirstwebsite.domain.enums.Role;
import ru.myfirstwebsite.service.ReviewService;
import ru.myfirstwebsite.service.UserService;

import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    public UserService userService;

    @Autowired
    public ReviewService reviewService;

    @GetMapping("/")
    public String greeting(){
        return "greeting";
    }

    @GetMapping("/main")
    public String main() {
        return "main";
    }

    @GetMapping("/users")
    public String getAllUsers(Model model) {
        model.addAttribute("users", userService.findAll());
        return "usersList";
    }

    @GetMapping("/user/{id}")
    public String getById(@PathVariable("id") Long id, Model model) {
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("reviews", reviewService.getReviewByUserId(id));
        return "showUser";
    }

    @GetMapping("/userProfile/{username}")
    public String getByUserName(@PathVariable("username") String username, Model model) {
        Long id = userService.getIdByUserName(username);
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("reviews", reviewService.getReviewByUserId(id));
        return "showUser";
    }

    @GetMapping("/registration")
    public String createUserPage() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(@ModelAttribute("user") User user, BindingResult bindingResult, Model model) {
        if (user.getPass() != null && !user.getPass().equals(user.getPass2())) {
            model.addAttribute("passwordEncoder", "Passwords are different!");
        }

        if (bindingResult.hasErrors()) {
            Map<String, String> errors = ControllerUtils.getErrors(bindingResult);

            model.mergeAttributes(errors);

            return "registration";
        }

        Boolean userExist = userService.save(user);

        if (userExist = true) {
            model.addAttribute("message", "User exists!");
            return "registration";
        }

        return "redirect:/login";
    }

    @PostMapping("/updateUser")
//    @PreAuthorize("hasAuthority('ADMIN')")
    public String updateUser(
            @ModelAttribute("user") User user,
            @RequestParam Map<String, String> form
    ) {
        User userFromDb = userService.getById(user.getId());
        userFromDb.setPass(user.getPass());
        userFromDb.setEmail(user.getEmail());
        userFromDb.setLogin(user.getLogin());
        userFromDb.setUserName(user.getUserName());

        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());

        userFromDb.getRoles().clear();

        for (String key : form.keySet()) {
            if (roles.contains(key)) {
                userFromDb.getRoles().add(Role.valueOf(key));
            }
        }

        userService.update(userFromDb);
        return "redirect:/user/" + userFromDb.getId();
    }

    @GetMapping("/update/{id}")
    public String userEditForm(@PathVariable("id") Long id, Model model) {
        model.addAttribute("user", userService.getById(id));
        model.addAttribute("roles", Role.values());
        return "editUser";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userService.delete(id);
        return "redirect:/users";
    }
}


