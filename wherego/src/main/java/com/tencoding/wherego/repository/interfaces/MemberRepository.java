package com.tencoding.wherego.repository.interfaces;

import org.apache.ibatis.annotations.Mapper;

<<<<<<< HEAD
import com.tencoding.wherego.dto.SignUpFormDto;
=======
import com.tencoding.wherego.dto.LogInFormDto;
import com.tencoding.wherego.dto.SignUpFormDto;
import com.tencoding.wherego.repository.model.Member;
>>>>>>> 63b9ac653e59da5b7450053eb9313bc18e0187ac

@Mapper
public interface MemberRepository {
	// 회원가입
	public int insert(SignUpFormDto signUpFormDto);
<<<<<<< HEAD
=======
	// 로그인
	public Member findByIdAndPassword(LogInFormDto logInFormDto);
	// 회원정보 수정
	
	// 아이디 찾기
	
	// 비밀번호 찾기
	
>>>>>>> 63b9ac653e59da5b7450053eb9313bc18e0187ac
}
