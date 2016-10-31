package io.itupo.iiv.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.domain.CommunityBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.LikeDto;
import io.itupo.iiv.service.CommentService;
import io.itupo.iiv.service.CommunityService;

@Controller
@RequestMapping("community")
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	@Autowired
	private CommentService commentService;

	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String item(Model model) {
		return "community/notices";
	}

	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String readPostList(Model model) {
		model.addAttribute("postList", communityService.readPostList());
		model.addAttribute("likesList", communityService.sortingByLikes());
		model.addAttribute("viewsList", communityService.sortingByViews());
		return "community/board";
	}
	
	@RequestMapping(value = "post/{id}", method = RequestMethod.GET)
	public String readPost(@PathVariable(value="id") int id, Model model, Principal principal) {
		model.addAttribute("post", communityService.readPostById(id));
		model.addAttribute("likeHistory", communityService.checkLikesHistoryById(new LikeBean("community_likes_history", id, principal.getName())));
		model.addAttribute("commentList", commentService.readPostList(id));
		model.addAttribute("user", commentService.readPostList(id));
		return "community/post";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(Model model) {
		return "community/write";
	}
    
    @RequestMapping(value = "write/submit", method = RequestMethod.POST)
    public String writePost(CommunityBean bean) {
    	communityService.writePost(bean);
        return "community/board";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String loadUpdateForm(@PathVariable(value="id") int id, Model model) {
    	model.addAttribute("post", communityService.readPostById(id));
    	return "community/update";
    }
    
    @RequestMapping(value = "update/{id}", method = RequestMethod.POST)
    public String update(CommunityBean bean) {
    	communityService.updatePost(bean);
    	return "redirect:/community/post/" + bean.getId();
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	communityService.deletePostById(id);
    	return "community/list";
    }
    
    @RequestMapping(value = "likes/{id}/{userId}", method = RequestMethod.GET)
    public String addPostLikes(@PathVariable(value="id") int id, @PathVariable(value="userId") int userId, Model model) {
    	communityService.addPostLikes(new LikeDto(id, userId));
    	return "redirect:/community/post/" + id;
    }
    @RequestMapping(value = "likesremove/{id}/{userId}", method = RequestMethod.GET)
    public String removePostLikes(@PathVariable(value="id") int id, @PathVariable(value="userId") int userId, Model model) {
    	communityService.removePostLikes(new LikeDto(id, userId));
    	return "redirect:/community/post/" + id;
    }
}