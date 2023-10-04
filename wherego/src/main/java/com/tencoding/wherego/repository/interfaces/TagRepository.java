package com.tencoding.wherego.repository.interfaces;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.tencoding.wherego.dto.EditTagDto;
import com.tencoding.wherego.dto.Tag;

@Mapper
public interface TagRepository {
    public List<Tag> findMainTags();
    public List<Tag> findSubTags(int parentTagId);
    public int saveTags(Tag tag);
    public int editTag(EditTagDto editTagDto);
	public int deleteByTagId(int tagId);
}
