package io.itupo.iiv.service;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.ActivityDao;
import io.itupo.iiv.dao.CommentDao;
import io.itupo.iiv.dao.LikeDao;
import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.ActivityBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.CommentDto;
import io.itupo.iiv.dto.LikeDto;

@Service
@Transactional
public class ActivityService {
	
	@Autowired
	private ActivityDao activityDao;
	
	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LikeDao likeDao;
	
	public List<ActivityBean> readPostList(){
		List<ActivityBean> readActivityList = activityDao.readPostList();
		for(int i=0; i<readActivityList.size(); i++){
			readActivityList.get(i).setFileId(imgExtract(readActivityList.get(i).getContent()));
		}
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
		commentDao.deletePostAll(new CommentDto("activity_comment", id));
		removeLikesHistoryAll(new LikeBean("activity_likes_history", id));
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
		for(int i=0; i<postList.size(); i++){
			postList.get(i).setFileId(imgExtract(postList.get(i).getContent()));
		}
		return postList;
	}
	public List<ActivityBean> sortingByViews(){
		List<ActivityBean> postList = activityDao.sortingByViews();
		return postList;
	}
	public String imgExtract(String text) {
		Pattern pattern = Pattern.compile("<img[^>]*src=[\"']?([^>\"']+)[\"']?[^>]*>");
		List<String> result = new ArrayList<String>();
		Matcher matcher = pattern.matcher(text);
		while (matcher.find()) {
			result.add(matcher.group(1));
		}
		if(result.size()==0){
			return "/iivdemo/img/iivlogo.png";
		}else{
			return result.get(0);
		}
	}
	public boolean removeLikesHistoryAll(LikeBean bean){
		return likeDao.removeLikesHistoryAll(bean);
	}
}