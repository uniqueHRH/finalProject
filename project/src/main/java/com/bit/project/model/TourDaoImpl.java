package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.TourVo;

@Repository
public class TourDaoImpl implements TourDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<TourVo> selectAll_eastasia() throws Exception {
		return sqlSession.selectList("tour.selectAll_eastasia");
	}

	@Override
	public TourVo selectOne_eastasia(int tour_no) throws Exception {
		return sqlSession.selectOne("tour.selectOne_eastasia",tour_no);
	}

}
