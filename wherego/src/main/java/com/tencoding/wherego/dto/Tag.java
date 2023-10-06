package com.tencoding.wherego.dto;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Tag {
    private int tagId;
    private String tagName;
    private int parentTag;
}
