package io.itupo.iiv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.itupo.iiv.domain.CommunityBean;
import io.itupo.iiv.dto.LikeDto;
import io.itupo.iiv.service.ActivityService;

@Controller
@RequestMapping("activity")
public class ActivityController {
	@Autowired
	private ActivityService activityService;
	
	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String home(Model model) {
		return "activity/home";
	}

	@RequestMapping(value = "item", method = RequestMethod.GET)
	public String item(Model model) {
		return "activity/item";
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String readActivityList(Model model) {
		model.addAttribute("postList", activityService.readPostList());
		return "activity/list";
	}
	
	@RequestMapping(value = "post/{id}", method = RequestMethod.GET)
	public String readActivityContent(@PathVariable(value="id") int id, Model model) {
		model.addAttribute("post", activityService.readPostById(id));
		return "activity/post";
	}
	

	@RequestMapping(value = "write", method = RequestMethod.GET)
	public String write(Model model) {
		return "activity/write";
	}
    
    @RequestMapping(value = "write/submit", method = RequestMethod.POST)
    public String writePost(CommunityBean bean) {
    	activityService.writePost(bean);
        return "activity/list";
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.GET)
    public String loadUpdateForm(@PathVariable(value="id") int id, Model model) {
    	model.addAttribute("post", activityService.readPostById(id));
    	return "activity/update";
    }
    
    @RequestMapping(value = "update/{id}", method = RequestMethod.POST)
    public String update(CommunityBean bean) {
    	activityService.updatePost(bean);
    	return "redirect:/activity/post/" + bean.getId();
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable(value="id") int id, Model model) {
    	activityService.deletePostById(id);
    	return "activity/list";
    }
}
