package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.ActivityDao;
import io.itupo.iiv.domain.ActivityBean;

@Service
@Transactional
public class ActivityService {
	
	@Autowired
	private ActivityDao activityDao;
	
	public List<ActivityBean> readPostList(){
		List<ActivityBean> readActivityList = activityDao.readPostList();
		return readActivityList;
	}
	
	public ActivityBean readPostById(int id){
		ActivityBean cleanBoardBean = activityDao.readPostById(id);
		return cleanBoardBean;
	}
}
