package io.itupo.iiv.controller;

import java.security.Principal;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import io.itupo.iiv.domain.UserBean;
import io.itupo.iiv.dto.UserDto;
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
	
	@RequestMapping(value = "/login/fail")
	public String loginfail() {
		return "user/loginfail";
	}
	
    @RequestMapping(value = "registration")
    public String registration() {
        return "user/registration";
    }
    
    @RequestMapping(value = "setting")
    public String setting(Model model, Principal principal) {
    	UserBean bean = userService.readUserByUsername(principal.getName());
    	model.addAttribute("user", bean);
        return "user/setting";
    }
	
    @RequestMapping(value = "update")
    public String update(UserBean bean) {
    	userService.updateUser(bean);
        return "redirect:/user/setting";
    }
    
    @RequestMapping(value = "registerUser", method = RequestMethod.POST)
    public String registerUser(UserBean bean) {
    	userService.registerUser(bean);
        return "redirect:/home";
    }
    
    @RequestMapping(value = "update/password", method = RequestMethod.POST)
    public String updatePassword(UserDto bean) {
    	userService.updatePassword(bean);
        return "redirect:/user/setting";
    }

    @ResponseBody
    @RequestMapping(value = "check", method = RequestMethod.POST)
    public HashMap<String, Integer> checkUsername(@RequestParam HashMap<String, String> param) {
    	int checkResult = userService.checkUsername(param.get("username"));
        HashMap<String, Integer> result = new HashMap<String, Integer>();
        result.put("result", checkResult);
        return result;
    }
}