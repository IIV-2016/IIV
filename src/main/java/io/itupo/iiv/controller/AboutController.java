package io.itupo.iiv.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("about")
public class AboutController {

	@RequestMapping(value = "gallery")
	public String gallery(Model model) {
		return "about/gallery";
	}
	
	@RequestMapping(value = "dispatch")
	public String dispatch(Model model) {
		return "about/dispatch";
	}
	
	
	@RequestMapping(value = "introduce")
	public String introduce(Model model) {
		return "about/introduce";
	}
}
