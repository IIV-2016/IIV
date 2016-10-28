package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.CommunityDao;
import io.itupo.iiv.dao.LikeDao;
import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.CommunityBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.LikeDto;

@Service
@Transactional
public class CommunityService {

	@Autowired
	private CommunityDao communityDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LikeDao likeDao;

	public List<CommunityBean> readPostList(){
		List<CommunityBean> postList = communityDao.readPostList();
		return postList;
	}

	public CommunityBean readPostById(int id){
		addPostViews(id);
		CommunityBean communityBean = communityDao.readPostById(id);
		return communityBean;
	}

	public boolean writePost(CommunityBean bean){
		return communityDao.writePost(bean);
	}
	
	public boolean updatePost(CommunityBean bean){
		return communityDao.updatePost(bean);
	}

	public boolean deletePostById(int id){
		return communityDao.deletePostById(id);
	}
	public boolean addPostViews(int id){
		return communityDao.addPostViews(id);
	}
	public boolean addPostLikes(LikeDto dto){
		String username = userDao.readUsernameById(dto.getUserId());
		addLikesHistory(new LikeBean(dto.getPostId(), username));
		return communityDao.addPostLikes(dto);
	}
	public boolean addLikesHistory(LikeBean bean){
		return likeDao.addLikesHistory(bean);
	}
	public int checkLikesHistoryById(LikeBean bean){
		return likeDao.checkLikesHistoryById(bean);
	}
	public boolean removePostLikes(LikeDto dto){
		String username = userDao.readUsernameById(dto.getUserId());
		removeLikesHistory(new LikeBean(dto.getPostId(), username));
		return communityDao.removePostLikes(dto);
	}
	public boolean removeLikesHistory(LikeBean bean){
		return likeDao.removeLikesHistory(bean);
	}
	public List<CommunityBean> sortingByLikes(){
		List<CommunityBean> postList = communityDao.sortingByLikes();
		return postList;
	}
	public List<CommunityBean> sortingByViews(){
		List<CommunityBean> postList = communityDao.sortingByViews();
		return postList;
	}
}