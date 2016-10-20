package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.service.AlumniService;

@Controller
@RequestMapping("alumni")
public class AlumniController {
	@Autowired
	private AlumniService alumniService;
	
	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String home(Model model) {
		return "alumni/board";
	}
}
