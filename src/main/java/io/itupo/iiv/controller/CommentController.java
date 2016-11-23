package io.itupo.iiv.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import io.itupo.iiv.domain.CommentBean;
import io.itupo.iiv.dto.CommentDto;
import io.itupo.iiv.service.CommentService;

@Controller
@RequestMapping("comment") 
public class CommentController {
	@Autowired
	private CommentService commentService;

    @RequestMapping(value = "list", method = RequestMethod.POST)
    public String checkUsername(Model model, @RequestParam HashMap<String, String> param) {
    	String table = param.get("table");
    	int postId = Integer.parseInt(param.get("postId"));
    	model.addAttribute("commentList", commentService.readPostList(new CommentDto(table, postId)));
        return "comment";
    }
	
    @RequestMapping(value = "write/submit", method = RequestMethod.POST)
    public String writePost(Model model, @RequestParam HashMap<String, String> param) {
    	String content = param.get("content");
    	String username = param.get("username");
    	int postId = Integer.parseInt(param.get("postId"));
    	String table = param.get("table");
    	commentService.writePost(new CommentBean(content, username, postId, table));
        return "";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	commentService.deletePostById(id);
    	return "activity/list";
    }
}
