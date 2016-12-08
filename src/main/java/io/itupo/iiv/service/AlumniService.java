package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.AlumniDao;
import io.itupo.iiv.dao.CommentDao;
import io.itupo.iiv.dao.LikeDao;
import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.AlumniBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.CommentDto;
import io.itupo.iiv.dto.LikeDto;

@Service
@Transactional
public class AlumniService {

	@Autowired
	private AlumniDao alumniDao;
	
	@Autowired
	private CommentDao commentDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LikeDao likeDao;

	public List<AlumniBean> readPostList(){
		List<AlumniBean> postList = alumniDao.readPostList();
		return postList;
	}

	public AlumniBean readPostById(int id){
		addPostViews(id);
		AlumniBean alumniBean = alumniDao.readPostById(id);
		return alumniBean;
	}

	public boolean writePost(AlumniBean bean){
		return alumniDao.writePost(bean);
	}
	
	public boolean updatePost(AlumniBean bean){
		return alumniDao.updatePost(bean);
	}

	public boolean deletePostById(int id){
		commentDao.deletePostAll(new CommentDto("alumni_comment", id));
		removeLikesHistoryAll(new LikeBean("alumni_likes_history", id));
		return alumniDao.deletePostById(id);
	}
	public boolean addPostViews(int id){
		return alumniDao.addPostViews(id);
	}
	public boolean addPostLikes(LikeDto dto){
		String username = userDao.readUsernameById(dto.getUserId());
		addLikesHistory(new LikeBean("alumni_likes_history", dto.getPostId(), username));
		return alumniDao.addPostLikes(dto);
	}
	public boolean addLikesHistory(LikeBean bean){
		return likeDao.addLikesHistory(bean);
	}
	public int checkLikesHistoryById(LikeBean bean){
		return likeDao.checkLikesHistoryById(bean);
	}
	public boolean removePostLikes(LikeDto dto){
		String username = userDao.readUsernameById(dto.getUserId());
		removeLikesHistory(new LikeBean("alumni_likes_history", dto.getPostId(), username));
		return alumniDao.removePostLikes(dto);
	}
	public boolean removeLikesHistory(LikeBean bean){
		return likeDao.removeLikesHistory(bean);
	}
	public List<AlumniBean> sortingByLikes(){
		List<AlumniBean> postList = alumniDao.sortingByLikes();
		return postList;
	}
	public List<AlumniBean> sortingByViews(){
		List<AlumniBean> postList = alumniDao.sortingByViews();
		return postList;
	}
	public boolean removeLikesHistoryAll(LikeBean bean){
		return likeDao.removeLikesHistoryAll(bean);
	}
	public int readPostCountByUsername(int userId){
		return alumniDao.readPostCountByUsername(userId);
	}
}