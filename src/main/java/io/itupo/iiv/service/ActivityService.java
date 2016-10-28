package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.ActivityDao;
import io.itupo.iiv.dao.LikeDao;
import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.ActivityBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.LikeDto;

@Service
@Transactional
public class ActivityService {
	
	@Autowired
	private ActivityDao activityDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LikeDao likeDao;
	
	public List<ActivityBean> readPostList(){
		List<ActivityBean> readActivityList = activityDao.readPostList();
		return readActivityList;
	}
	
	public ActivityBean readPostById(int id){
		addPostViews(id);
		ActivityBean cleanBoardBean = activityDao.readPostById(id);
		return cleanBoardBean;
	}
	
	public boolean writePost(ActivityBean bean){
		return activityDao.writePost(bean);
	}
	
	public boolean updatePost(ActivityBean bean){
		return activityDao.updatePost(bean);
	}

	public boolean deletePostById(int id){
		return activityDao.deletePostById(id);
	}

	public boolean addPostViews(int id){
		return activityDao.addPostViews(id);
	}
	public boolean addPostLikes(LikeDto dto){
		String username = userDao.readUsernameById(dto.getUserId());
		addLikesHistory(new LikeBean("activity_likes_history", dto.getPostId(), username));
		return activityDao.addPostLikes(dto);
	}
	public boolean addLikesHistory(LikeBean bean){
		return likeDao.addLikesHistory(bean);
	}
	public int checkLikesHistoryById(LikeBean bean){
		return likeDao.checkLikesHistoryById(bean);
	}
	public boolean removePostLikes(LikeDto dto){
		String username = userDao.readUsernameById(dto.getUserId());
		removeLikesHistory(new LikeBean("activity_likes_history", dto.getPostId(), username));
		return activityDao.removePostLikes(dto);
	}
	public boolean removeLikesHistory(LikeBean bean){
		return likeDao.removeLikesHistory(bean);
	}
	public List<ActivityBean> sortingByLikes(){
		List<ActivityBean> postList = activityDao.sortingByLikes();
		return postList;
	}
	public List<ActivityBean> sortingByViews(){
		List<ActivityBean> postList = activityDao.sortingByViews();
		return postList;
	}
}
