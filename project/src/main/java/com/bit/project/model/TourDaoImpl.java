package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.PaidVo;
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
	public TourVo selectOne_tour(int tour_no) throws Exception {
		
		return sqlSession.selectOne("tour.selectOne_tour",tour_no);
	}

	@Override
	public void insertOne(PaidVo bean) {
		sqlSession.insert("tour.insertOne_tour",bean);
		
	}

	@Override
	public List<TourVo> selectAll_southeastasia() throws Exception {
		return sqlSession.selectList("tour.selectAll_southeastasia");
	}

	@Override
	public List<TourVo> selectAll_america() throws Exception {
		return sqlSession.selectList("tour.selectAll_america");
	}

	@Override
	public List<TourVo> selectAll_europe() throws Exception {
		return sqlSession.selectList("tour.selectAll_europe");
	}

	@Override
	public List<TourVo> selectAll_pacific() throws Exception {
		return sqlSession.selectList("tour.selectAll_pacific");
	}

}
