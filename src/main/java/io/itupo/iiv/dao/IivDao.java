package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.IivBean;
import io.itupo.iiv.dto.SearchDto;

public interface IivDao {
	List<IivBean> selectCleanBoardAll();
	List<IivBean> selectCleanBoardPage(int id);
	IivBean selectCleanBoardById(int id);
	boolean insertCleanBoard(IivBean bean);
	boolean updateCleanBoard(IivBean bean);
	boolean deleteCleanBoardById(int id);
	List<IivBean> searchCleanBoard(SearchDto dto);
	boolean updateCleanBoardViews(int id);
	int countCleanBoardAll();
}
