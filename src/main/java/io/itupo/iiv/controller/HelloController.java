package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import io.itupo.iiv.service.ActivityService;

@Controller
public class HelloController {
	@Autowired
	private ActivityService activityService;
	
	@RequestMapping(value = "/")
	public String index(Model model) {
		return "home";
	}
	
	@RequestMapping(value = "/home")
	public String hello(Model model) {
		model.addAttribute("postList", activityService.readPostList());
		return "home";
	}
}
