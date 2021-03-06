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

import io.itupo.iiv.domain.ActivityBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.CommentDto;
import io.itupo.iiv.dto.LikeDto;
import io.itupo.iiv.service.CommentService;
import io.itupo.iiv.service.ActivityService;
import io.itupo.iiv.service.UserService;

@Controller
@RequestMapping("activity")
public class ActivityController {
	@Autowired
	private ActivityService activityService;
	
	@Autowired
	private CommentService commentService;
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String item(Model model) {
		model.addAttribute("likesList", activityService.sortingByLikes());
		return "activity/home";
	}

	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String readPostList(Model model, Principal principal) {
		model.addAttribute("postList", activityService.readPostList());
		model.addAttribute("likesList", activityService.sortingByLikes());
		model.addAttribute("viewsList", activityService.sortingByViews());
		if(principal != null && principal.getName().equals("admin")){
			return "activity/admin";
		}
		return "activity/board";
	}
	
	@RequestMapping(value = "post/{id}", method = RequestMethod.GET)
	public String readPost(@PathVariable(value="id") int id, Model model, Principal principal) {
		ActivityBean bean = activityService.readPostById(id);
		model.addAttribute("post", bean);
		if(principal != null){
			model.addAttribute("likeHistory", activityService.checkLikesHistoryById(new LikeBean("activity_likes_history", id, principal.getName())));
		}else{
			model.addAttribute("likeHistory", 0);
		}
		model.addAttribute("commentList", commentService.readPostList(new CommentDto("activity_comment", id)));
		model.addAttribute("user", userService.readUserById(bean.getUserId()));
		return "activity/post";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(@AuthenticationPrincipal UserDetails userDetail) {
		/*
		if(userDetail == null){
			throw new CustomAuthException("login");
		}
		*/
		return "activity/write";
	}
    
    @RequestMapping(value = "write/submit", method = RequestMethod.POST)
    public String writePost(ActivityBean bean) {
    	activityService.writePost(bean);
        return "redirect:/activity/board";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String loadUpdateForm(@PathVariable(value="id") int id, Model model) {
    	model.addAttribute("post", activityService.readPostById(id));
    	return "activity/update";
    }
    
    @RequestMapping(value = "update/{id}", method = RequestMethod.POST)
    public String update(ActivityBean bean) {
    	activityService.updatePost(bean);
    	return "redirect:/activity/post/" + bean.getId();
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	activityService.deletePostById(id);
    	return "redirect:/activity/board";
    }
    
    @RequestMapping(value = "likes/{id}/{userId}", method = RequestMethod.GET)
    public String addPostLikes(@PathVariable(value="id") int id, @PathVariable(value="userId") int userId, Model model) {
    	activityService.addPostLikes(new LikeDto(id, userId));
    	return "redirect:/activity/post/" + id;
    }
    @RequestMapping(value = "likesremove/{id}/{userId}", method = RequestMethod.GET)
    public String removePostLikes(@PathVariable(value="id") int id, @PathVariable(value="userId") int userId, Model model) {
    	activityService.removePostLikes(new LikeDto(id, userId));
    	return "redirect:/activity/post/" + id;
    }
}