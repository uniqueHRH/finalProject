package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.EastAsiaVo;

@Repository
public class EastAsiaDaoImpl implements EastAsiaDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<EastAsiaVo> selectAll_eastasia() throws Exception {
		return sqlSession.selectList("eastasia.selectAll_eastasia");
	}

	@Override
	public EastAsiaVo selectOne_eastasia(int eastasia_no) throws Exception {
		return sqlSession.selectOne("eastasia.selectOne_eastasia",eastasia_no);
	}

}
