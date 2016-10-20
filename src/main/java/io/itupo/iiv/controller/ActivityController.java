package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

	@RequestMapping(value = "item", method = RequestMethod.GET)
	public String item(Model model) {
		return "activity/item";
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String readActivityList(Model model) {
		model.addAttribute("postList", activityService.readPostList());
		return "activity/list";
	}
	
	@RequestMapping(value = "post/{id}", method = RequestMethod.GET)
	public String readActivityContent(@PathVariable(value="id") int id, Model model) {
		model.addAttribute("post", activityService.readPostById(id));
		return "activity/post";
	}
}
