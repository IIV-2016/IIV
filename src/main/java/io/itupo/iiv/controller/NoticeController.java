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

import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.domain.NoticeBean;
import io.itupo.iiv.dto.LikeDto;
import io.itupo.iiv.service.NoticeService;
import io.itupo.iiv.service.UserService;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String notice(Model model) {
		return "notice/notice";
	}

	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String readPostList(Model model) {
		model.addAttribute("postList", noticeService.readPostList());
		return "notice/board";
	}
	
	@RequestMapping(value = "post/{id}", method = RequestMethod.GET)
	public String readPost(@PathVariable(value="id") int id, Model model, Principal principal) {
		NoticeBean bean = noticeService.readPostById(id);
		model.addAttribute("post", bean);
		model.addAttribute("user", userService.readUserById(bean.getUserId()));
		return "notice/post";
	}

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(@AuthenticationPrincipal UserDetails userDetail) {
		return "notice/write";
	}
    
    @RequestMapping(value = "write/submit", method = RequestMethod.POST)
    public String writePost(NoticeBean bean) {
    	noticeService.writePost(bean);
        return "redirect:/notice/board";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String loadUpdateForm(@PathVariable(value="id") int id, Model model) {
    	model.addAttribute("post", noticeService.readPostById(id));
    	return "notice/update";
    }
    
    @RequestMapping(value = "update/{id}", method = RequestMethod.POST)
    public String update(NoticeBean bean) {
    	noticeService.updatePost(bean);
    	return "redirect:/notice/post/" + bean.getId();
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	noticeService.deletePostById(id);
    	return "redirect:/notice/list";
    }
}