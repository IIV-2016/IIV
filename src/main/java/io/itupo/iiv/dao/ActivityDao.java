package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.ActivityBean;

public interface ActivityDao {
	List<ActivityBean> readPostList();
	ActivityBean readPostById(int id);
}
