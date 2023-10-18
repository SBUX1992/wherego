-- --------------------------------------------------------
-- 호스트:                          13.209.65.211
-- 서버 버전:                        5.5.68-MariaDB - MariaDB Server
-- 서버 OS:                        Linux
-- HeidiSQL 버전:                  12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- wherego 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `wherego` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `wherego`;

-- 테이블 wherego.accommodation 구조 내보내기
CREATE TABLE IF NOT EXISTS `accommodation` (
  `room_no` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(45) COLLATE utf8_bin NOT NULL,
  `room_view` varchar(45) COLLATE utf8_bin NOT NULL,
  `room_size` varchar(45) COLLATE utf8_bin NOT NULL,
  `room_type` varchar(45) COLLATE utf8_bin NOT NULL,
  `room_detail` varchar(225) COLLATE utf8_bin NOT NULL,
  `amenities_common` varchar(225) COLLATE utf8_bin DEFAULT NULL,
  `amenities_bath` varchar(225) COLLATE utf8_bin DEFAULT NULL,
  `amenities_etc` varchar(225) COLLATE utf8_bin DEFAULT NULL,
  `room_price` varchar(45) COLLATE utf8_bin NOT NULL,
  `max_people` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`room_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 테이블 데이터 wherego.accommodation:~8 rows (대략적) 내보내기
INSERT INTO `accommodation` (`room_no`, `room_name`, `room_view`, `room_size`, `room_type`, `room_detail`, `amenities_common`, `amenities_bath`, `amenities_etc`, `room_price`, `max_people`) VALUES
	(1, '디럭스 트윈', '전망 시티뷰', '33.68~36.90', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '223200', '4'),
	(2, '디럭스 패밀리 트윈', '전망 시티뷰', '33.68~36.90', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '2551100', '4'),
	(3, '프리미어 더블', '전망 시티뷰', '33.68~36.90', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '2551100', '4'),
	(4, '프리미어 트윈', '전망 시티뷰', '33.68~36.90', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '2551100', '4'),
	(5, '클럽 디럭스 더블', '전망 시티뷰', '38.28', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '344100', '4'),
	(6, '클럽 디럭스 트윈', '전망 시티뷰', '38.28', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '344100', '5'),
	(7, '클럽 프리미어 더블', '전망 시티뷰', '47.19~48.51', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '372000', '5'),
	(8, '주니어 스위트 패밀리 트윈', '전망 시티뷰', '52.89~59.78', '침대 타입', '여유로운 휴식 공간이 돋보이는 웨어고호텔 부산 디럭스 룸은 끊임 없는 리뉴얼로 최상의 컨디션을 유지하고 있습니다. 객실 내에 마련된 대형 데스크는 출장지에서도 빈틈 없는 업무 처리를 돕...', '32\'\' LCD TV, 손전등, 슬리퍼, 구둣주걱, 구두클리너, 전화기, 티포트, 금고, 냉장고, 대형옷장, 미니바, 소화기', '스폰지, 목욕 가운, 비데, 헤어드라이어, 욕조, 욕실용품, 면봉', '무료 생수 1일 2병, 보이스 메일 서비스, 무료 차(TEA) 서비스', '437100', '5');

-- 테이블 wherego.accommodation_img 구조 내보내기
CREATE TABLE IF NOT EXISTS `accommodation_img` (
  `img_no` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(225) COLLATE utf8_bin NOT NULL,
  `room_no` int(11) NOT NULL,
  PRIMARY KEY (`img_no`),
  KEY `fk_accommodation_img_accommadation1_idx` (`room_no`),
  CONSTRAINT `fk_accommodation_img_accommadation1` FOREIGN KEY (`room_no`) REFERENCES `accommodation` (`room_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 테이블 데이터 wherego.accommodation_img:~27 rows (대략적) 내보내기
INSERT INTO `accommodation_img` (`img_no`, `img_url`, `room_no`) VALUES
	(1, '/wherego/img/accommodation/derux_twin/derux_twin_1.jpg', 1),
	(2, '/wherego/img/accommodation/derux_twin/derux_twin_2.jpg', 1),
	(3, '/wherego/img/accommodation/derux_twin/derux_twin_3.jpg', 1),
	(4, '/wherego/img/accommodation/derux_twin/derux_twin_4.jpg', 1),
	(5, '/wherego/img/accommodation/derux_twin_family/derux_twin_family_1.jpg', 2),
	(6, '/wherego/img/accommodation/derux_twin_family/derux_twin_family_2.jpg', 2),
	(7, '/wherego/img/accommodation/prime_double/prime_double_1.jpg', 3),
	(8, '/wherego/img/accommodation/prime_double/prime_double_2.jpg', 3),
	(9, '/wherego/img/accommodation/prime_double/prime_double_3.jpg', 3),
	(10, '/wherego/img/accommodation/prime_twin/prime_twin_1.jpg', 4),
	(11, '/wherego/img/accommodation/prime_twin/prime_twin_2.jpg', 4),
	(12, '/wherego/img/accommodation/prime_twin/prime_twin_3.jpg', 4),
	(13, '/wherego/img/accommodation/club_derux_double/club_derux_double_1.jpg', 5),
	(14, '/wherego/img/accommodation/club_derux_double/club_derux_double_2.jpg', 5),
	(15, '/wherego/img/accommodation/club_derux_double/club_derux_double_3.jpg', 5),
	(16, '/wherego/img/accommodation/club_derux_double/club_derux_double_4.jpg', 5),
	(17, '/wherego/img/accommodation/club_derux_twin/club_derux_twin_1.jpg', 6),
	(18, '/wherego/img/accommodation/club_prime_double/club_prime_double_1.jpg', 7),
	(19, '/wherego/img/accommodation/club_prime_double/club_prime_double_2.jpg', 7),
	(20, '/wherego/img/accommodation/club_prime_double/club_prime_double_3.jpg', 7),
	(21, '/wherego/img/accommodation/club_prime_double/club_prime_double_4.jpg', 7),
	(22, '/wherego/img/accommodation/club_prime_double/club_prime_double_5.jpg', 7),
	(23, '/wherego/img/accommodation/jr_suite_family_twin/jr_suite_family_twin_1.jpg', 8),
	(24, '/wherego/img/accommodation/jr_suite_family_twin/jr_suite_family_twin_2.jpg', 8),
	(25, '/wherego/img/accommodation/jr_suite_family_twin/jr_suite_family_twin_3.jpg', 8),
	(26, '/wherego/img/accommodation/jr_suite_family_twin/jr_suite_family_twin_4.jpg', 8),
	(27, '/wherego/img/accommodation/jr_suite_family_twin/jr_suite_family_twin_5.jpg', 8);

-- 테이블 wherego.admin_cs_notice 구조 내보내기
CREATE TABLE IF NOT EXISTS `admin_cs_notice` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `rdate` datetime NOT NULL,
  `mem_id` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`no`),
  KEY `fk_admin_cs_notice_member` (`mem_id`),
  CONSTRAINT `fk_admin_cs_notice_member` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 테이블 데이터 wherego.admin_cs_notice:~7 rows (대략적) 내보내기
INSERT INTO `admin_cs_notice` (`no`, `title`, `content`, `rdate`, `mem_id`) VALUES
	(3, '[안내] 해외결제 사칭 문자 주의', '테스트 입니다.', '2023-10-16 07:29:18', 'admin'),
	(4, 'test title', 'test content', '2023-10-16 07:29:54', 'admin'),
	(6, 'test title', 'test content', '2023-10-16 07:34:45', 'test'),
	(7, '4563', '5634h', '2023-10-16 12:06:32', 'admin'),
	(8, '관리자 작성', '관리자 작성', '2023-10-17 01:40:55', 'admin'),
	(9, 'tete', 'tete', '2023-10-17 05:19:50', 'admin'),
	(10, '87878', '878787', '2023-10-18 05:13:31', 'admin');

-- 테이블 wherego.admin_cs_qna 구조 내보내기
CREATE TABLE IF NOT EXISTS `admin_cs_qna` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(225) COLLATE utf8_bin NOT NULL,
  `comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `mem_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `rdate` datetime NOT NULL,
  PRIMARY KEY (`no`),
  KEY `fk_admin_cs_qna_member` (`mem_id`),
  CONSTRAINT `fk_admin_cs_qna_member` FOREIGN KEY (`mem_id`) REFERENCES `member` (`mem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 테이블 데이터 wherego.admin_cs_qna:~7 rows (대략적) 내보내기
INSERT INTO `admin_cs_qna` (`no`, `title`, `comment`, `content`, `mem_id`, `rdate`) VALUES
	(1, '[회원] 가입문의', NULL, 'test content', 'test', '2023-10-16 08:40:54'),
	(17, 'ㄷㄷㄷㄷㅈㅈ', NULL, 'ㅂㅈㄷㅈㅈ', '', '2023-10-16 13:46:17'),
	(18, '55', NULL, '55', '', '2023-10-16 13:59:22'),
	(19, 'ㄹㄴㅇㅁ', NULL, 'ㄹㅇㅁㄴ', '', '2023-10-16 14:02:06'),
	(20, 'tete', NULL, 'tete', '', '2023-10-17 05:20:12'),
	(21, 'tetete', NULL, 'tetete', '', '2023-10-17 05:21:41'),
	(22, 'www', NULL, 'www', '', '2023-10-17 05:23:14');

-- 테이블 wherego.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `mem_user_no` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `mem_password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mem_nickname` varchar(20) COLLATE utf8_bin NOT NULL,
  `mem_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `mem_email` varchar(45) COLLATE utf8_bin NOT NULL,
  `mem_per_level` int(11) NOT NULL DEFAULT '1',
  `mem_provider` int(11) NOT NULL DEFAULT '1',
  `mem_point` int(11) NOT NULL DEFAULT '500',
  `mem_phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `mem_addr1` varchar(45) COLLATE utf8_bin NOT NULL,
  `mem_addr2` varchar(45) COLLATE utf8_bin NOT NULL,
  `mem_rdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mem_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mem_user_no`),
  UNIQUE KEY `mem_id_UNIQUE` (`mem_id`),
  UNIQUE KEY `mem_nickname_UNIQUE` (`mem_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 테이블 데이터 wherego.member:~7 rows (대략적) 내보내기
INSERT INTO `member` (`mem_user_no`, `mem_id`, `mem_password`, `mem_nickname`, `mem_name`, `mem_email`, `mem_per_level`, `mem_provider`, `mem_point`, `mem_phone`, `mem_addr1`, `mem_addr2`, `mem_rdate`, `mem_del`) VALUES
	(1, 'admin', '$2a$10$Buy7mjKR4M4R9xSX9H8fOOvbR.3q1wEBo.CTl.Jlc5NhLM7TNezHG', '관리자', '관리자', 'admin@naver.com', 1, 1, 500, '010-8989-9898', '부산 광역시', '123로', '2023-10-16 03:07:32', 0),
	(2, 'test', '1234', '테스트', '테스트', 'test@naver.com', 1, 1, 500, '010-7897-7897', '부산 광역시', '123로', '2023-10-16 04:50:14', 0),
	(3, 'test55', '$2a$10$gch1ti.eHDOq97eKT3q6/esmbBHK2ITF4f1b1MdwHBnxNDDgKjdMW', 'test55', '테스트55', 'test55@naver.com', 1, 1, 500, '010-5555-5555', '부산 강서구 가달1로 17', '55', '2023-10-17 03:14:49', 0),
	(4, 'qwe9250@naver.com_3039789541', '$2a$10$HSxVEtuyqGeI5RBThjN.nu0irT08HNGrXnrqGNMxOM3MA4N/ss8Um', '카카오테스트', '카카오테스트', 'qwe9250@naver.com', 1, 2, 500, '010-8989-9898', '제주특별자치도 서귀포시 상예동 4565-2', '한양빌라', '2023-10-17 05:48:37', 0),
	(5, 'test1234', '$2a$10$tda0SzctszWN7eAxuTgnIOX8J8qruMzxBk04COz5Pgke8zG3Ulk96', '테스트1234', '테스트1234', 'test1234@naver.com', 1, 1, 500, '010-8989-9898', '경남 거창군 거창읍 거열로 239', '어딘가호텔', '2023-10-17 06:23:24', 0),
	(8, 'test4', '$2a$10$hM4DqAC3h8UWTmEGUO04LuQHYwKRRu8G.iwyFcth569nbSuqio9O2', 'aaa', 'bank', 'rlxoa456@hanmail.net', 1, 1, 500, '010-4567-4562', '경북 안동시 강남1길 9', '1234', '2023-10-17 09:18:02', 0),
	(9, 'test12', '$2a$10$2BuAPkjZ/dyuUrVAi6eUvO5rbPSFvLvKZ9R80XD3bK0R7I0DzeGn2', 'test123', '테스트22', 'test12@naver.com', 1, 1, 500, '010-1234-4321', '부산 강서구 가달1로 7', '1111', '2023-10-18 05:12:30', 0);

-- 테이블 wherego.payment 구조 내보내기
CREATE TABLE IF NOT EXISTS `payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` varchar(45) COLLATE utf8_bin NOT NULL,
  `pay_completed` varchar(1) COLLATE utf8_bin NOT NULL,
  `imp_uid` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `merchat_uid` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `paid_amount` int(30) DEFAULT NULL,
  `apply_num` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `pay_created_at` timestamp NULL DEFAULT NULL,
  `member_mem_user_no` int(11) NOT NULL,
  `accommadation_room_no` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `fk_payment_member1_idx` (`member_mem_user_no`),
  KEY `fk_payment_accommadation1_idx` (`accommadation_room_no`),
  CONSTRAINT `fk_payment_accommadation1` FOREIGN KEY (`accommadation_room_no`) REFERENCES `accommodation` (`room_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_member1` FOREIGN KEY (`member_mem_user_no`) REFERENCES `member` (`mem_user_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 테이블 데이터 wherego.payment:~2 rows (대략적) 내보내기
INSERT INTO `payment` (`pay_id`, `mem_id`, `pay_completed`, `imp_uid`, `merchat_uid`, `paid_amount`, `apply_num`, `pay_created_at`, `member_mem_user_no`, `accommadation_room_no`, `res_id`) VALUES
	(1, 'test', 'T', '', '', 400000, '', '2023-10-17 02:43:36', 5, 1, 1),
	(2, 'test', 'T', NULL, NULL, 800000, NULL, '2023-10-18 02:43:36', 5, 1, 1);

-- 테이블 wherego.reservation 구조 내보내기
CREATE TABLE IF NOT EXISTS `reservation` (
  `res_id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` int(11) NOT NULL,
  `res_from_date` date NOT NULL,
  `res_to_date` date NOT NULL,
  PRIMARY KEY (`res_id`),
  KEY `fk_res_date_accommadation1_idx` (`room_no`),
  CONSTRAINT `fk_res_date_accommadation1` FOREIGN KEY (`room_no`) REFERENCES `accommodation` (`room_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 테이블 데이터 wherego.reservation:~2 rows (대략적) 내보내기
INSERT INTO `reservation` (`res_id`, `room_no`, `res_from_date`, `res_to_date`) VALUES
	(1, 1, '2023-10-16', '2023-10-17'),
	(2, 1, '2023-10-17', '2023-10-18');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
