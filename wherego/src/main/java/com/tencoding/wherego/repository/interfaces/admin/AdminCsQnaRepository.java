package com.tencoding.wherego.repository.interfaces.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.repository.model.admin.AdminCsQna;

@Mapper
public interface AdminCsQnaRepository {

	public int insert(AdminCsQna adminCsQna);
	public int updateByNo(AdminCsQna adminCsQna);
	public int deleteByNo(Integer no);
	
	public List<AdminCsQna> findAll();
	public List<AdminCsQna> findByNo(Integer no);
	
	public List<AdminCsQna> findByMemId(String principalId);
 
	
}
