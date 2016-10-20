package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.domain.UserBean;
import io.itupo.iiv.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/admin")
	public void admin() {}

	@RequestMapping("/login")
	public void login() {}
	
	@RequestMapping(value = "/logout")
	public String logout(Model model) {
		return "logout";
	}
	
    @RequestMapping(value = "registration")
    public String registration() {
        return "user/registration";
    }
	
    @RequestMapping(value = "registerUser", method = RequestMethod.POST)
    public String registerUser(UserBean bean) {
    	userService.registerUser(bean);
        return "redirect:/home";
    }
}