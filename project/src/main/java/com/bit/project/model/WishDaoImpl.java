package com.bit.project.model;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.WishVo;

@Repository
public class WishDaoImpl implements WishDao {

	@Autowired
	SqlSession sqlSession;

	
	@Override
	public WishVo select_wish(WishVo bean) throws Exception {
		return sqlSession.selectOne("wish.select_wish", bean);
	}

	@Override
	public void insert_wish(WishVo bean) throws Exception {
		sqlSession.insert("wish.insert_wish", bean);
	}

	@Override
	public int delete_wish(int key) throws Exception {
		return sqlSession.delete("wish.delete_wish", key);
	}
	


}
