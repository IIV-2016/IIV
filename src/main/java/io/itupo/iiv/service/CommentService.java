package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.CommentDao;
import io.itupo.iiv.domain.CommentBean;
import io.itupo.iiv.dto.CommentDto;

@Service
@Transactional
public class CommentService {
	
	@Autowired
	private CommentDao commentDao;
	
	public List<CommentBean> readPostList(CommentDto dto){
		return commentDao.readPostList(dto);
	}
	public boolean writePost(CommentBean bean){
		return commentDao.writePost(bean);
	}
	public boolean updatePost(CommentBean bean){
		return commentDao.updatePost(bean);
	}
	public boolean deletePostById(CommentDto dto){
		return commentDao.deletePostById(dto);
	}
	public boolean deletePostAll(CommentDto dto){
		return commentDao.deletePostAll(dto);
	}
}
