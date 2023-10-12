package com.tencoding.wherego.repository.interfaces.cs;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.repository.model.cs.CsNotice;

@Mapper
public interface CsNoticeRepository {

	
	public List<CsNotice> findAll();
}
