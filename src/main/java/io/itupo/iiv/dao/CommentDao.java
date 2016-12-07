package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.CommentBean;
import io.itupo.iiv.dto.CommentDto;

public interface CommentDao {
	List<CommentBean> readPostList(CommentDto dto);
	boolean writePost(CommentBean bean);
	boolean updatePost(CommentBean bean);
	boolean deletePostById(CommentDto dto);
}
