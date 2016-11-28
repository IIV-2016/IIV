package io.itupo.iiv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.itupo.iiv.dao.NoticeDao;
import io.itupo.iiv.domain.NoticeBean;

@Service
@Transactional
public class NoticeService {
	@Autowired
	private NoticeDao noticeDao;
	
	public boolean writePost(NoticeBean bean){
		return noticeDao.writePost(bean);
	}
}
