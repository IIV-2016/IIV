package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.CommunityBean;

public interface CommunityDao {
	List<CommunityBean> readPostList();
	CommunityBean readPostById(int id);
	boolean writePost(CommunityBean bean);
	boolean updatePost(CommunityBean bean);
	boolean deletePostById(int id);
}
