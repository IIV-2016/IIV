package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.service.CommunityService;

@Controller
@RequestMapping("community")
public class CommunityController {
	@Autowired
	private CommunityService communityService;

	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String item(Model model) {
		return "community/notices";
	}
	
	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String board(Model model) {
		return "community/board";
	}
}