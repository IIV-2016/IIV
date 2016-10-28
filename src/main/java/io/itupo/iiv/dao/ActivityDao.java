package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.ActivityBean;
import io.itupo.iiv.domain.CommunityBean;
import io.itupo.iiv.dto.LikeDto;

public interface ActivityDao {
	List<ActivityBean> readPostList();
	ActivityBean readPostById(int id);
	boolean writePost(CommunityBean bean);
	boolean updatePost(CommunityBean bean);
	boolean deletePostById(int id);
	boolean addPostViews(int id);
	boolean addPostLikes(LikeDto dto);
	boolean removePostLikes(LikeDto dto);
}
