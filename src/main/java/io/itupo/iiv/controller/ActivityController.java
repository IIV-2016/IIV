package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.service.ActivityService;

@Controller
@RequestMapping("activity")
public class ActivityController {
	@Autowired
	private ActivityService activityService;
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(Model model) {
		return "activity/home";
	}
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model) {
		return "activity/list";
	}
	
	@RequestMapping(value = "item", method = RequestMethod.GET)
	public String item(Model model) {
		return "activity/item";
	}	
}
