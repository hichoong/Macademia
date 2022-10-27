package com.kh.md.plan.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.md.plan.vo.PlanVo;

@Repository
public class PlanDao {

	public int insertPlan(SqlSessionTemplate sst, PlanVo vo) {
		// TODO Auto-generated method stub
		return sst.insert("planMapper.insertPlan", vo);
	}

	public List<PlanVo> getPlan(SqlSessionTemplate sst) {
		// TODO Auto-generated method stub
		return sst.selectList("planMapper.planList");
	}

	public PlanVo getPlanOne(SqlSessionTemplate sst, String pno) {
		// TODO Auto-generated method stub
		return sst.selectOne("planMapper.planOne", pno);
	}

	public int planDelete(SqlSessionTemplate sst, String pno) {
		// TODO Auto-generated method stub
		return sst.delete("planMapper.planDelete", pno);
	}
	
	

}
