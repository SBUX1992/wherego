
SELECT * FROM admin_cs_notice;

SELECT * FROM member;

INSERT INTO admin_cs_notice(title, content, mem_id, rdate)
VALUE('[안내] 해외결제 사칭 문자 주의', '안녕하세요. 롯데호텔입니다. <br /> 롯데호텔을 사칭하는 피싱 문자가 최근 다시 신고되고 있어 주의
										안내드립니다. <br /> 승인결제 피싱 문자 또는 발신번호 006, 002 등으로 시작하는 피싱 문자를
										수신하신 고객님께서는 통화 또는 문자 내 기재된 번호/링크 등을 클릭하지 않도록 주의하여 주시기 바랍니다. <br />
										<br /> 감사합니다.', '관리자', NOW());

INSERT INTO admin_cs_notice(title, content, mem_id, rdate)
VALUE('[안내] 해외결제 사칭 문자 주의', '안녕하세요. 롯데호텔입니다. <br /> 롯데호텔을 사칭하는 피싱 문자가 최근 다시 신고되고 있어 주의
										안내드립니다. <br /> 승인결제 피싱 문자 또는 발신번호 006, 002 등으로 시작하는 피싱 문자를
										수신하신 고객님께서는 통화 또는 문자 내 기재된 번호/링크 등을 클릭하지 않도록 주의하여 주시기 바랍니다. <br />
										<br /> 감사합니다.', '관리자', NOW());

# id 없이
INSERT INTO admin_cs_notice(title, content, rdate)
VALUE('[안내] 해외결제 사칭 문자 주의', '안녕하세요. 롯데호텔입니다. <br /> 롯데호텔을 사칭하는 피싱 문자가 최근 다시 신고되고 있어 주의
										안내드립니다. <br /> 승인결제 피싱 문자 또는 발신번호 006, 002 등으로 시작하는 피싱 문자를
										수신하신 고객님께서는 통화 또는 문자 내 기재된 번호/링크 등을 클릭하지 않도록 주의하여 주시기 바랍니다. <br />
										<br /> 감사합니다.', NOW());
										
										
UPDATE admin_cs_notice SET title = '[해외]해외결제 사칭 문자 주의' WHERE NO = 1;

DELETE FROM admin_cs_notice WHERE NO = 1;


INSERT INTO admin_cs_notice(title, content, mem_id, rdate)
value('[안내] 해외결제 사칭 문자 주의', '테스트 입니다.', '관리자', NOW());

INSERT INTO admin_cs_notice (title, content, rdate)
VALUES ('[안내] 해외결제 사칭 문자 주의', '테스트 입니다.', NOW(),);


SELECT admin_cs_notice.mem_user_no, member.mem_id
FROM admin_cs_notice
JOIN member ON admin_cs_notice.member_mem_user_no = member.mem_user_no;




SELECT * FROM member;
SELECT * FROM admin_cs_notice;
SELECT * FROM admin_cs_qna;

INSERT INTO admin_cs_qna(title, content, mem_id, rdate)
VALUE('[탈퇴] 탈퇴 문의내용', '개인회원에서 법인회원(사업자 회원)으로 전환은 불가하므로 법인회원(사업자 회원) 전환은 신규 가입으로 진행을
											해야 합니다. <br /> <br /> 감사합니다.', '강**', NOW());





INSERT INTO admin_cs_qna(COMMENT, rdate)
VALUE('답변입니다', NOW());

UPDATE admin_cs_qna SET COMMENT = '수정된 답변입니다' WHERE NO = 1;

DELETE FROM admin_cs_qna WHERE no = 1;

SELECT * FROM admin_cs_qna WHERE NO = 2;



SELECT * FROM cs_notice;






SELECT * FROM cs_qna;


INSERT INTO cs_qna(title, content, rdate)
VALUE('[회원]탈퇴는 어떻게하나요?', '탈퇴시켜주세요', NOW());

INSERT INTO cs_qna(title, content,mem_id, rdate)
VALUE('[회원]탈퇴는 어떻게하나요?', '탈퇴시켜주세요', '강**', NOW());

INSERT INTO cs_qna(title, content, mem_id, rdate)
VALUE('[탈퇴] 탈퇴 문의내용', '개인회원에서 법인회원(사업자 회원)으로 전환은 불가하므로 법인회원(사업자 회원) 전환은 신규 가입으로 진행을
											해야 합니다. <br /> <br /> 감사합니다.', '강**', NOW());



ALTER TABLE `admin_cs_notice` DROP `mem_id`;

SELECT * FROM admin_cs_notice;

SELECT * FROM admin_cs_qna;

INSERT INTO admin_cs_qna(title, content, rdate)
		VALUE('123', '123', NOW());



# 실행됨
SELECT admin_cs_notice.member_mem_user_no, member.mem_id
FROM admin_cs_notice
JOIN member ON admin_cs_notice.member_mem_user_no = member.mem_user_no
WHERE admin_cs_notice.member_mem_user_no = 1;

SELECT a.member_mem_user_no, m.mem_id
FROM admin_cs_notice a
JOIN member m ON a.member_mem_user_no = m.mem_user_no
WHERE a.member_mem_user_no = 1;

SELECT a.member_mem_user_no, m.mem_id
FROM admin_cs_notice a
JOIN member m ON a.member_mem_user_no = m.mem_user_no
WHERE m.mem_user_no = 1;

INSERT IGNORE INTO `member` (`mem_id`, `mem_password`, `mem_nickname`, `mem_name`, `mem_email`, `mem_per_level`, `mem_provider`, `mem_point`, `mem_phone`, `mem_addr1`, `mem_addr2`, `mem_rdate`, `mem_del`)
VALUES('test', '1234', '테스트', '테스트', 'test@naver.com', 1, 1, 500, '010-7897-7897', '부산 광역시', '123로', NOW(), 0);

INSERT INTO admin_cs_notice (title, content, rdate, mem_id)
SELECT '제목', '내용', NOW(), m.mem_id
FROM member m
WHERE m.mem_user_no = 1;

INSERT INTO admin_cs_notice (title, content, mem_id, member_mem_user_no, rdate)
VALUES ('새로운 공지사항 제목', '새로운 공지사항 내용', 'admin', (SELECT mem_user_no FROM member WHERE mem_id = 'admin'), NOW());

INSERT INTO admin_cs_notice (title, content, member_mem_user_no, rdate)
VALUES ('새로운 공지사항 제목', '새로운 공지사항 내용', (SELECT mem_user_no FROM member WHERE mem_id = 'test'), NOW());

INSERT INTO admin_cs_notice (title, content, mem_id, member_mem_user_no, rdate)
SELECT 'test', 'TEST', 'admin', mem_user_no, NOW()
FROM member
WHERE mem_id = 'admin';

INSERT INTO admin_cs_notice (title, content, member_mem_user_no, rdate)
SELECT 'test', 'TEST', mem_user_no, NOW()
FROM member
WHERE mem_id = 'test';

INSERT INTO admin_cs_notice (title, content, mem_id, member_mem_user_no, rdate)
SELECT '1111', '1111', mem_id, mem_user_no, NOW()
FROM member
WHERE mem_user_no = 1; 

INSERT INTO admin_cs_notice (title, content, mem_id, member_mem_user_no, rdate)
SELECT '333', '333', mem_id, mem_user_no, NOW()
FROM member
WHERE mem_user_no = 2;

#INSERT INTO admin_cs_notice (title, content, mem_id, member_mem_user_no, rdate)
#SELECT #{title}, #{content}, #{memId}, #{memUserNo}, NOW()
#FROM member
#WHERE mem_user_no = #{no};

INSERT INTO admin_cs_notice (title, content, mem_id, member_mem_user_no, rdate)
SELECT 'tes123목', 'te123ent', mem_Id, mem_user_no, NOW()
FROM member;

INSERT INTO admin_cs_notice (title, content, member_mem_user_no, rdate)
VALUES ('새로운 공지사항 제목', '새로운 공지사항 내용', (SELECT mem_user_no FROM member WHERE mem_id = 'test'), NOW());

INSERT INTO admin_cs_notice (title, content, mem_id, member_mem_user_no, rdate)
VALUES ('test title', 'test content', (SELECT mem_id FROM member WHERE mem_id = 'admin'), (SELECT mem_user_no FROM member WHERE mem_id = 'admin'), NOW());

SELECT * FROM MEMBER M, ADMIN_CS_NOTICD N WHERE M.MEM_ID = N.MEMID;

SELECT * FROM admin_cs_notice;
SELECT * FROM member;











member_mem_user_no


ALTER TABLE admin_cs_notice DROP FOREIGN KEY fk_admin_cs_notice_admin_cs_qna1;
ALTER TABLE admin_cs_notice DROP FOREIGN KEY fk_admin_cs_notice_member1;
ALTER TABLE admin_cs_qna DROP FOREIGN KEY fk_admin_cs_qna_member;

ALTER TABLE admin_cs_notice
ADD CONSTRAINT fk_admin_cs_notice_member
FOREIGN KEY (`mem_id`)
REFERENCES `member` (`mem_id`);

ALTER TABLE admin_cs_notice
ADD COLUMN `mem_id` varchar(45) COLLATE utf8_bin NOT NULL;

ALTER TABLE admin_cs_notice
ADD CONSTRAINT fk_admin_cs_notice_member
FOREIGN KEY (`mem_id`)
REFERENCES `member` (`mem_id`);


ALTER TABLE admin_cs_qna
ADD CONSTRAINT fk_admin_cs_qna_member
FOREIGN KEY (`mem_id`)
REFERENCES `member` (`mem_id`);



INSERT INTO admin_cs_notice(title, content, rdate)
value('[안내] 해외결제 사칭 문자 주의', '테스트 입니다.', NOW());

INSERT INTO `admin_cs_notice` (title, content, rdate, mem_id)
VALUES ('test title', 'test content', NOW(), 'admin');



SELECT * FROM admin_cs_notice;
SELECT * FROM member;

SELECT * 
FROM admin_cs_notice
WHERE mem_id IN (SELECT mem_id FROM member);



















