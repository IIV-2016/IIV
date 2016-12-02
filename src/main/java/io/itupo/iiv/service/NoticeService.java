package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.NoticeDao;
import io.itupo.iiv.dao.LikeDao;
import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.NoticeBean;
import io.itupo.iiv.domain.LikeBean;
import io.itupo.iiv.dto.LikeDto;

@Service
@Transactional
public class NoticeService {

	@Autowired
	private NoticeDao noticeDao;
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private LikeDao likeDao;

	public List<NoticeBean> readPostList(){
		List<NoticeBean> postList = noticeDao.readPostList();
		return postList;
	}

	public NoticeBean readPostById(int id){
		addPostViews(id);
		NoticeBean noticeBean = noticeDao.readPostById(id);
		return noticeBean;
	}

	public boolean writePost(NoticeBean bean){
		return noticeDao.writePost(bean);
	}
	
	public boolean updatePost(NoticeBean bean){
		return noticeDao.updatePost(bean);
	}

	public boolean deletePostById(int id){
		return noticeDao.deletePostById(id);
	}
	public boolean addPostViews(int id){
		return noticeDao.addPostViews(id);
	}
}