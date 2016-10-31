package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.CommentDao;
import io.itupo.iiv.domain.CommentBean;

@Service
@Transactional
public class CommentService {
	
	@Autowired
	private CommentDao commentDao;
	
	public List<CommentBean> readPostList(int id){
		return commentDao.readPostList(id);
	}
	public boolean writePost(CommentBean bean){
		return commentDao.writePost(bean);
	}
	public boolean updatePost(CommentBean bean){
		return commentDao.updatePost(bean);
	}
	public boolean deletePostById(int id){
		return commentDao.deletePostById(id);
	}
}
