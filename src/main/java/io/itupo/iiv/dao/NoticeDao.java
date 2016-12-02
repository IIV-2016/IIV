package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.NoticeBean;

public interface NoticeDao {
	List<NoticeBean> readPostList();
	NoticeBean readPostById(int id);
	boolean writePost(NoticeBean bean);
	boolean updatePost(NoticeBean bean);
	boolean deletePostById(int id);
	boolean addPostViews(int id);
}

