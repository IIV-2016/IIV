package io.itupo.iiv.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.CommunityDao;
import io.itupo.iiv.domain.CommunityBean;
import io.itupo.iiv.dto.SearchDto;

@Service
@Transactional
public class CommunityService {

	@Autowired
	private CommunityDao communityDao;

	public List<CommunityBean> readPostList(){
		List<CommunityBean> postList = communityDao.readPostList();
		return postList;
	}

	public CommunityBean readPostById(int id){
		addPostViews(id);
		CommunityBean communityBean = communityDao.readPostById(id);
		return communityBean;
	}

	public boolean writePost(CommunityBean bean){
		return communityDao.writePost(bean);
	}
	
	public boolean updatePost(CommunityBean bean){
		return communityDao.updatePost(bean);
	}

	public boolean deletePostById(int id){
		return communityDao.deletePostById(id);
	}
	public boolean addPostViews(int id){
		return communityDao.addPostViews(id);
	}
}