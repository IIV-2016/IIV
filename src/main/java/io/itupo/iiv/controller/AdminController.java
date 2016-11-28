package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.domain.NoticeBean;
import io.itupo.iiv.service.NoticeService;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String readPostList(Model model) {
		return "admin/board";
	}
	@RequestMapping(value = "notice/write", method = RequestMethod.GET)
	public String write() {
		return "admin/notice/write";
	}
    @RequestMapping(value = "notice/write/submit", method = RequestMethod.POST)
    public String writePost(NoticeBean bean) {
    	noticeService.writePost(bean);
        return "redirect:/community/notice";
    }
}