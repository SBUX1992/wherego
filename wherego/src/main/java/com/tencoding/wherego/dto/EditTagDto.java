package com.tencoding.wherego.dto;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class EditTagDto {
	private int tagId;
	private String editTagName;
}
