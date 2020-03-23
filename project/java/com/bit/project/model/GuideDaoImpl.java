package com.bit.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bit.project.model.entity.GuideVo;

@Repository
public class GuideDaoImpl implements GuideDao {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<GuideVo> selectAll_guide() throws Exception {
		return sqlSession.selectList("guide.selectAll_guide");
	}

	@Override
	public GuideVo selectOne_guide(int key) throws Exception {
		return sqlSession.selectOne("guide.selectOne_guide",key);
	}

	@Override
	public void insertOne_guide(GuideVo bean) throws Exception {
		sqlSession.insert("guide.insertOne_guide",bean);
	}

	@Override
	public int updateOne_guide(GuideVo bean) throws Exception {
		return sqlSession.update("guide.updateOne_guide",bean);
	}

	@Override
	public int deleteOne_guide(int key) throws Exception {
		return sqlSession.delete("guide.deleteOne_guide",key);
	}


}
