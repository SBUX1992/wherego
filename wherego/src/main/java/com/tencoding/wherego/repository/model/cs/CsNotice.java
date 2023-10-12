package com.tencoding.wherego.repository.model.cs;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data	// Getter Setter 함께 선언
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CsNotice {
	private int no;
	private String title;
	private String content;
	private String memId;
	private String rdate;
}
