package com.tencoding.wherego.repository.interfaces.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.repository.model.admin.AdminCsNotice;

@Mapper
public interface AdminCsNoticeRepository {
	
	public int insert(AdminCsNotice adminCsNotice);
	public int updateByNo(AdminCsNotice adminCsNotice);
	public int deleteByNo(Integer no);

	public List<AdminCsNotice> findAll();
	public List<AdminCsNotice> findByNo(Integer no);
	
	public List<AdminCsNotice> findByMemId(String principalId);
}
