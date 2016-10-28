package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.ActivityDao;
import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.ActivityBean;
import io.itupo.iiv.domain.CommunityBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.LikeDto;

@Service
@Transactional
public class ActivityService {
	
	@Autowired
	private ActivityDao activityDao;
	
	public List<ActivityBean> readPostList(){
		List<ActivityBean> readActivityList = activityDao.readPostList();
		return readActivityList;
	}
	
	public ActivityBean readPostById(int id){
		ActivityBean cleanBoardBean = activityDao.readPostById(id);
		return cleanBoardBean;
	}
	
	public boolean writePost(CommunityBean bean){
		return activityDao.writePost(bean);
	}
	
	public boolean updatePost(CommunityBean bean){
		return activityDao.updatePost(bean);
	}

	public boolean deletePostById(int id){
		return activityDao.deletePostById(id);
	}
	public boolean addPostViews(int id){
		return activityDao.addPostViews(id);
	}
}
