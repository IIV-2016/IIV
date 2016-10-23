package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.domain.CommunityBean;
import io.itupo.iiv.service.CommunityService;

@Controller
@RequestMapping("community")
public class CommunityController {
	@Autowired
	private CommunityService communityService;

	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String item(Model model) {
		return "community/notices";
	}

	@RequestMapping(value = "board", method = RequestMethod.GET)
	public String readPostList(Model model) {
		model.addAttribute("postList", communityService.readPostList());
		return "community/board";
	}
	
	@RequestMapping(value = "post/{id}", method = RequestMethod.GET)
	public String readPost(@PathVariable(value="id") int id, Model model) {
		model.addAttribute("post", communityService.readPostById(id));
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

    @RequestMapping(value = "updateForm/{id}", method = RequestMethod.GET)
    public String updateForm(@PathVariable(value="id") int id, Model model) {
    	model.addAttribute("bean", communityService.readPostById(id));
    	return "updateForm";
    }
    
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public String update(CommunityBean bean) {
    	communityService.updatePost(bean);
    	return "redirect:/board/index";
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	communityService.deletePostById(id);
    	return "redirect:/board/index";
    }
}