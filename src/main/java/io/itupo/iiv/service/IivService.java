package io.itupo.iiv.service;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import io.itupo.iiv.dao.IivDao;
import io.itupo.iiv.domain.IivBean;
import io.itupo.iiv.dto.SearchDto;
import io.itupo.iiv.util.FileUtils;

@Service
@Transactional
public class IivService{
	Logger log = Logger.getLogger(this.getClass());
	
	final static int SIZE = 5;

	@Autowired
	private IivDao cleanBoardDao;

    @Resource(name="fileUtils")
    private FileUtils fileUtils;
    
	public List<IivBean> selectCleanBoardAll(){
		List<IivBean> selectAll = cleanBoardDao.selectCleanBoardAll();
		return selectAll;
	}
	
	public List<IivBean> selectCleanBoardPage(int page){
		int start = (page-1) * SIZE;
		List<IivBean> selectPage = cleanBoardDao.selectCleanBoardPage(start);
		return selectPage;
	}

	public IivBean selectCleanBoardById(int id){
		updateCleanBoardViews(id);
		IivBean cleanBoardBean = cleanBoardDao.selectCleanBoardById(id);
		return cleanBoardBean;
	}

	public boolean insertCleanBoard(IivBean bean, HttpServletRequest request){
	     
	    MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
	    Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
	    MultipartFile multipartFile = null;
	    while(iterator.hasNext()){
	        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	        if(multipartFile.isEmpty() == false){
	            log.debug("------------- file start -------------");
	            log.debug("name : "+multipartFile.getName());
	            log.debug("filename : "+multipartFile.getOriginalFilename());
	            log.debug("size : "+multipartFile.getSize());
	            log.debug("-------------- file end --------------\n");
	        }
	    }
		
        try {
			List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(request);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cleanBoardDao.insertCleanBoard(bean);
	}

	public boolean updateCleanBoard(IivBean bean){
		return cleanBoardDao.updateCleanBoard(bean);
	}

	public boolean deleteCleanBoardById(int id){
		return cleanBoardDao.deleteCleanBoardById(id);
	}

	public List<IivBean> searchCleanBoard(SearchDto dto){
		List<IivBean> cleanBoardBean = cleanBoardDao.searchCleanBoard(dto);
		return cleanBoardBean;
	}

	public boolean updateCleanBoardViews(int id){
		return cleanBoardDao.updateCleanBoardViews(id);
	}
	
	public int countCleanBoardAll(){
		return (cleanBoardDao.countCleanBoardAll()/5) + 1;
	}
}
