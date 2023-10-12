package com.tencoding.wherego.repository.interfaces.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.repository.model.admin.AdminCsNotice;

@Mapper
public interface AdminCsNoticeRepository {
	
	public int insert(AdminCsNotice adminCsNotice);
	public int updateById(AdminCsNotice adminCsNotice);
	public int deleteById(String memId);

	public List<AdminCsNotice> findAll();
	public List<AdminCsNotice> findById(String memId);
	
	public List<AdminCsNotice> findByMemId(String principalId);
}
