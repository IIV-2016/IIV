package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.itupo.iiv.service.CommentService;

@Controller
@RequestMapping("comment") 
public class CommentController {
	@Autowired
	private CommentService commentService;
}
