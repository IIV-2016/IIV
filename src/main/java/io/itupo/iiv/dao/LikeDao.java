package io.itupo.iiv.dao;

import io.itupo.iiv.domain.LikeBean;

public interface LikeDao {
	boolean addLikesHistory(LikeBean bean);
	int checkLikesHistoryById(LikeBean bean);
	boolean removeLikesHistory(LikeBean bean);
	boolean removeLikesHistoryAll(LikeBean bean);
}

