package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.domain.CommentBean;
import io.itupo.iiv.service.CommentService;

@Controller
@RequestMapping("comment") 
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value = "list/{id}", method = RequestMethod.GET)
	public String readPostList(@PathVariable(value="id") int id, Model model) {
		model.addAttribute("postList", commentService.readPostList(id));
		return "activity/list";
	}

    @RequestMapping(value = "write/submit", method = RequestMethod.POST)
    public String writePost(CommentBean bean) {
    	commentService.writePost(bean);
        return "activity/list";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	commentService.deletePostById(id);
    	return "activity/list";
    }
}
