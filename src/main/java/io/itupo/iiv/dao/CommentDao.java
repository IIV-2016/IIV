package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.CommentBean;

public interface CommentDao {
	List<CommentBean> readPostList(int id);
	boolean writePost(CommentBean bean);
	boolean updatePost(CommentBean bean);
	boolean deletePostById(int id);
}
