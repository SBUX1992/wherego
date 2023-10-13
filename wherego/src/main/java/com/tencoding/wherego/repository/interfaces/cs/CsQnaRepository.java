package com.tencoding.wherego.repository.interfaces.cs;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.repository.model.cs.CsQna;

@Mapper
public interface CsQnaRepository {

	public int insert(CsQna csQna);
	public int updateByNo(CsQna csQna);
	public int deleteByNo(Integer no);
	
	public List<CsQna> findAll();
	public List<CsQna> findByNo(Integer no);
	
	public List<CsQna> findByMemId(String principalId);
	
}
