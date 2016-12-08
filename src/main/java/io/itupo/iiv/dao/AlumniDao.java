package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.AlumniBean;
import io.itupo.iiv.dto.LikeDto;

public interface AlumniDao {
	List<AlumniBean> readPostList();
	AlumniBean readPostById(int id);
	boolean writePost(AlumniBean bean);
	boolean updatePost(AlumniBean bean);
	boolean deletePostById(int id);
	boolean addPostViews(int id);
	boolean addPostLikes(LikeDto dto);
	boolean removePostLikes(LikeDto dto);
	List<AlumniBean> sortingByLikes();
	List<AlumniBean> sortingByViews();
	int readPostCountByUsername(int userId);
}

