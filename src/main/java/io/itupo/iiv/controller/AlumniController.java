package io.itupo.iiv.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.domain.AlumniBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.CommentDto;
import io.itupo.iiv.dto.LikeDto;
import io.itupo.iiv.service.AlumniService;
import io.itupo.iiv.service.CommentService;
import io.itupo.iiv.service.UserService;

@Controller
@RequestMapping("alumni")
public class AlumniController {
	@Autowired
	private AlumniService alumniService;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String readPostList(Model model, Principal principal) {
		model.addAttribute("postList", alumniService.readPostList());
		model.addAttribute("likesList", alumniService.sortingByLikes());
		model.addAttribute("viewsList", alumniService.sortingByViews());
		if(principal != null && principal.getName().equals("admin")){
			return "alumni/admin";
		}
		return "alumni/board";
	}
	
	@RequestMapping(value = "post/{id}", method = RequestMethod.GET)
	public String readPost(@PathVariable(value="id") int id, Model model, Principal principal) {
		AlumniBean bean = alumniService.readPostById(id);
		model.addAttribute("post", bean);
		if(principal != null){
			model.addAttribute("likeHistory", alumniService.checkLikesHistoryById(new LikeBean("alumni_likes_history", id, principal.getName())));
		}else{
			model.addAttribute("likeHistory", 0);
		}
		model.addAttribute("commentList", commentService.readPostList(new CommentDto("alumni_comment", id)));
		model.addAttribute("user", userService.readUserById(bean.getUserId()));
		return "alumni/post";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(@AuthenticationPrincipal UserDetails userDetail) {
		return "alumni/write";
	}
    
    @RequestMapping(value = "write/submit", method = RequestMethod.POST)
    public String writePost(AlumniBean bean) {
    	alumniService.writePost(bean);
        return "redirect:/alumni/board";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String loadUpdateForm(@PathVariable(value="id") int id, Model model) {
    	model.addAttribute("post", alumniService.readPostById(id));
    	return "alumni/update";
    }
    
    @RequestMapping(value = "update/{id}", method = RequestMethod.POST)
    public String update(AlumniBean bean) {
    	alumniService.updatePost(bean);
    	return "redirect:/alumni/post/" + bean.getId();
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	alumniService.deletePostById(id);
    	return "redirect:/alumni/list";
    }
    
    @RequestMapping(value = "likes/{id}/{userId}", method = RequestMethod.GET)
    public String addPostLikes(@PathVariable(value="id") int id, @PathVariable(value="userId") int userId, Model model) {
    	alumniService.addPostLikes(new LikeDto(id, userId));
    	return "redirect:/alumni/post/" + id;
    }
    @RequestMapping(value = "likesremove/{id}/{userId}", method = RequestMethod.GET)
    public String removePostLikes(@PathVariable(value="id") int id, @PathVariable(value="userId") int userId, Model model) {
    	alumniService.removePostLikes(new LikeDto(id, userId));
    	return "redirect:/alumni/post/" + id;
    }
}