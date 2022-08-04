---------------------------생성---------------------------------------------------

-------유저
create SEQUENCE seq_users_no
increment by 1
start with 1
nocache;

CREATE TABLE users (
	no NUMBER NOT NULL, /* 유저번호 */
	id VARCHAR2(100) NOT NULL, /* 아이디 */
	pw VARCHAR2(100) NOT NULL, /* 패스워드 */
	hp VARCHAR2(100) NOT NULL, /* 전화번호 */
	nick_name VARCHAR2(100) NOT NULL, /* 닉네임 */
	email VARCHAR2(100) NOT NULL, /* 이메일 */
	identify VARCHAR2(10) NOT NULL /* 회원구분 */
);

COMMENT ON TABLE users IS '유저';

COMMENT ON COLUMN users.no IS '유저번호';

COMMENT ON COLUMN users.id IS '아이디';

COMMENT ON COLUMN users.pw IS '패스워드';

COMMENT ON COLUMN users.hp IS '전화번호';

COMMENT ON COLUMN users.nick_name IS '닉네임';

COMMENT ON COLUMN users.email IS '이메일';

COMMENT ON COLUMN users.identify IS '회원구분';

CREATE UNIQUE INDEX PK_users
	ON users (
		no ASC
	);

ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			no
		);

-------업체
create sequence seq_company_no
increment by 1
start with 1
nocache;

CREATE TABLE company (
	no NUMBER NOT NULL, /* 업체번호 */
	user_no NUMBER, /* 유저번호 */
	company_hp VARCHAR2(20) NOT NULL, /* 전화번호(업체) */
	ceo_hp VARCHAR2(20) NOT NULL, /* 핸드폰번호(업체) */
	bank_name VARCHAR2(10), /* 계좌은행 */
	account_holder VARCHAR2(20), /* 예금주 */
	account VARCHAR2(100), /* 계좌번호 */
	settlement_cycle VARCHAR2(10), /* 정산주기 */
	tax_Invoice number, /* 세금계산서여부 */
	company_name VARCHAR2(30), /* 상호명 */
	ceo_name VARCHAR2(20), /* 대표명 */
	business_licensenumber VARCHAR2(100), /* 사업자등록번호 */
	postal_code VARCHAR2(10), /* 우편번호 */
	company_address VARCHAR2(100), /* 업체주소 */
	detail_address VARCHAR2(100), /* 상세주소 */
	homepage VARCHAR2(100), /* 홈페이지 */
	tax_Invoice_email VARCHAR2(100) /* 세금계산서이메일 */
);

COMMENT ON TABLE company IS '업체';

COMMENT ON COLUMN company.no IS '업체번호';

COMMENT ON COLUMN company.user_no IS '유저번호';

COMMENT ON COLUMN company.company_hp IS '전화번호(업체)';

COMMENT ON COLUMN company.ceo_hp IS '핸드폰번호(업체)';

COMMENT ON COLUMN company.bank_name IS '계좌은행';

COMMENT ON COLUMN company.account_holder IS '예금주';

COMMENT ON COLUMN company.account IS '계좌번호';

COMMENT ON COLUMN company.settlement_cycle IS '정산주기';

COMMENT ON COLUMN company.tax_Invoice IS '세금계산서여부';

COMMENT ON COLUMN company.company_name IS '상호명';

COMMENT ON COLUMN company.ceo_name IS '대표명';

COMMENT ON COLUMN company.business_licensenumber IS '사업자등록번호';

COMMENT ON COLUMN company.postal_code IS '우편번호';

COMMENT ON COLUMN company.company_address IS '업체주소';

COMMENT ON COLUMN company.detail_address IS '상세주소';

COMMENT ON COLUMN company.homepage IS '홈페이지';

COMMENT ON COLUMN company.tax_Invoice_email IS '세금계산서이메일';

CREATE UNIQUE INDEX PK_company
	ON company (
		no ASC
	);

ALTER TABLE company
	ADD
		CONSTRAINT PK_company
		PRIMARY KEY (
			no
		);

ALTER TABLE company
	ADD
		CONSTRAINT FK_users_TO_company
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			no
		);
--업태
create sequence seq_business_type_no
increment by 1
start with 1
nocache;


CREATE TABLE business_type (
	no NUMBER NOT NULL, /* 업태번호 */
	name VARCHAR2(10) /* 업태명 */
);

COMMENT ON TABLE business_type IS '업테';

COMMENT ON COLUMN business_type.no IS '업태번호';

COMMENT ON COLUMN business_type.name IS '업태명';

CREATE UNIQUE INDEX PK_business_type
	ON business_type (
		no ASC
	);

ALTER TABLE business_type
	ADD
		CONSTRAINT PK_business_type
		PRIMARY KEY (
			no
		);


--업체업태
create sequence seq_cbt_no
increment by 1
start with 1
nocache;


CREATE TABLE c_b_type (
	no NUMBER NOT NULL, /* 업체 업태번호 */
	c_no NUMBER, /* 업체번호 */
	b_type_no NUMBER /* 업태번호 */
);

COMMENT ON TABLE c_b_type IS '업체 업태';

COMMENT ON COLUMN c_b_type.no IS '업체 업태번호';

COMMENT ON COLUMN c_b_type.c_no IS '업체번호';

COMMENT ON COLUMN c_b_type.b_type_no IS '업태번호';

CREATE UNIQUE INDEX PK_c_b_type
	ON c_b_type (
		no ASC
	);

ALTER TABLE c_b_type
	ADD
		CONSTRAINT PK_c_b_type
		PRIMARY KEY (
			no
		);

ALTER TABLE c_b_type
	ADD
		CONSTRAINT FK_company_TO_c_b_type
		FOREIGN KEY (
			c_no
		)
		REFERENCES company (
			no
		);

ALTER TABLE c_b_type
	ADD
		CONSTRAINT FK_business_type_TO_c_b_type
		FOREIGN KEY (
			b_type_no
		)
		REFERENCES business_type (
			no
		);
--업종
create sequence  seq_business_group_no
increment by 1
start with 1
nocache;

CREATE TABLE business_group (
	no NUMBER NOT NULL, /* 업종번호 */
	name VARCHAR2(10) /* 업종명 */
);

COMMENT ON TABLE business_group IS '업종';

COMMENT ON COLUMN business_group.no IS '업종번호';

COMMENT ON COLUMN business_group.name IS '업종명';

CREATE UNIQUE INDEX PK_business_group
	ON business_group (
		no ASC
	);

ALTER TABLE business_group
	ADD
		CONSTRAINT PK_business_group
		PRIMARY KEY (
			no
		);
-- 업체 업종
create sequence seq_cbg_no
increment by 1
start with 1
nocache;


CREATE TABLE c_b_group (
	no NUMBER NOT NULL, /* 업체 업종번호 */
	c_no NUMBER, /* 업체번호 */
	b_group_no NUMBER /* 업종번호 */
);

COMMENT ON TABLE c_b_group IS '업체 업종';

COMMENT ON COLUMN c_b_group.no IS '업체 업종번호';

COMMENT ON COLUMN c_b_group.c_no IS '업체번호';

COMMENT ON COLUMN c_b_group.b_group_no IS '업종번호';

CREATE UNIQUE INDEX PK_c_b_group
	ON c_b_group (
		no ASC
	);

ALTER TABLE c_b_group
	ADD
		CONSTRAINT PK_c_b_group
		PRIMARY KEY (
			no
		);

ALTER TABLE c_b_group
	ADD
		CONSTRAINT FK_company_TO_c_b_group
		FOREIGN KEY (
			c_no
		)
		REFERENCES company (
			no
		);

ALTER TABLE c_b_group
	ADD
		CONSTRAINT FK_business_group_TO_c_b_group
		FOREIGN KEY (
			b_group_no
		)
		REFERENCES business_group (
			no
		);


--펜션
create sequence seq_pension_no
increment by 1
start with 1
nocache;


CREATE TABLE pension (
	no NUMBER NOT NULL, /* 펜션번호 */
	company_no NUMBER, /* 업체번호 */
	name VARCHAR2(100), /* 펜션명 */
	postal_code VARCHAR2(10), /* 우편번호 */
	address VARCHAR2(100), /* 펜션주소 */
	detail_address VARCHAR2(100), /* 상세주소 */
	law_code NUMBER, /* 법정동코드 */
	law_name VARCHAR2(200), /* 법정동이름 */
	visit_road1 VARCHAR2(1000) NOT NULL, /* 오시는길1 */
	visit_road2 VARCHAR2(1000) NOT NULL, /* 오시는길2 */
	visit_road3 VARCHAR2(1000) NOT NULL, /* 오시는길3 */
	area_info1 VARCHAR2(1000) NOT NULL, /* 주변정보1 */
	area_info2 VARCHAR2(1000) NOT NULL, /* 주변정보2 */
	area_info3 VARCHAR2(1000) NOT NULL, /* 주변정보3 */
	rules VARCHAR2(2000), /* 이용규칙 */
	live_pay VARCHAR2(2000), /* 현장요금 추가정보 */
	parking_info VARCHAR2(2000), /* 주차장정보 */
	etc VARCHAR2(2000), /* 기타 */
	check_in VARCHAR2(20), /* 체크인 */
	check_out VARCHAR2(20), /* 체크아웃 */
	add_adult_price NUMBER, /* 성인가격 */
	add_kid_price NUMBER, /* 아동가격 */
	add_baby_price NUMBER, /* 영유아가격 */
	refund_no NUMBER /* 환불규정번호 */
);

COMMENT ON TABLE pension IS '펜션';

COMMENT ON COLUMN pension.no IS '펜션번호';

COMMENT ON COLUMN pension.company_no IS '업체번호';

COMMENT ON COLUMN pension.name IS '펜션명';

COMMENT ON COLUMN pension.postal_code IS '우편번호';

COMMENT ON COLUMN pension.address IS '펜션주소';

COMMENT ON COLUMN pension.detail_address IS '상세주소';

COMMENT ON COLUMN pension.law_code IS '법정동코드';

COMMENT ON COLUMN pension.law_name IS '법정동이름';

COMMENT ON COLUMN pension.visit_road1 IS '오시는길1';

COMMENT ON COLUMN pension.visit_road2 IS '오시는길2';

COMMENT ON COLUMN pension.visit_road3 IS '오시는길3';

COMMENT ON COLUMN pension.area_info1 IS '주변정보1';

COMMENT ON COLUMN pension.area_info2 IS '주변정보2';

COMMENT ON COLUMN pension.area_info3 IS '주변정보3';

COMMENT ON COLUMN pension.rules IS '이용규칙';

COMMENT ON COLUMN pension.live_pay IS '현장요금 추가정보';

COMMENT ON COLUMN pension.parking_info IS '주차장정보';

COMMENT ON COLUMN pension.etc IS '기타';

COMMENT ON COLUMN pension.check_in IS '체크인';

COMMENT ON COLUMN pension.check_out IS '체크아웃';

COMMENT ON COLUMN pension.cancel_refund IS '취소 및 환불 규정';

COMMENT ON COLUMN pension.add_adult_price IS '성인가격';

COMMENT ON COLUMN pension.add_kid_price IS '아동가격';

COMMENT ON COLUMN pension.add_baby_price IS '영유아가격';

COMMENT ON COLUMN pension.refund_no IS '환불규정번호';

CREATE UNIQUE INDEX PK_pension
	ON pension (
		no ASC
	);

ALTER TABLE pension
	ADD
		CONSTRAINT PK_pension
		PRIMARY KEY (
			no
		);

ALTER TABLE pension
	ADD
		CONSTRAINT FK_company_TO_pension
		FOREIGN KEY (
			company_no
		)
		REFERENCES company (
			no
		);

--펜션 이미지
create sequence seq_pension_img_no
increment by 1
start with 1
nocache;


CREATE TABLE pension_image (
	no NUMBER NOT NULL, /* 팬션이미지번호 */
	pension_no NUMBER, /* 펜션번호 */
	image_path VARCHAR2(200), /* 이미지경로 */
	orders NUMBER /* 순서 */
);

COMMENT ON TABLE pension_image IS '팬션이미지';

COMMENT ON COLUMN pension_image.no IS '팬션이미지번호';

COMMENT ON COLUMN pension_image.pension_no IS '펜션번호';

COMMENT ON COLUMN pension_image.image_path IS '이미지경로';

COMMENT ON COLUMN pension_image.orders IS '순서';

CREATE UNIQUE INDEX PK_pension_image
	ON pension_image (
		no ASC
	);

ALTER TABLE pension_image
	ADD
		CONSTRAINT PK_pension_image
		PRIMARY KEY (
			no
		);

ALTER TABLE pension_image
	ADD
		CONSTRAINT FK_pension_TO_pension_image
		FOREIGN KEY (
			pension_no
		)
		REFERENCES pension (
			no
		);


-- 편의시설 서비스
create sequence seq_s_amenities_no
increment by 1
start with 1
nocache;


CREATE TABLE s_amenities (
	no NUMBER NOT NULL, /* 편의시설서비스번호 */
	name VARCHAR2(30) /* 편의시설명 */
);

COMMENT ON TABLE s_amenities IS '편의시설 서비스';

COMMENT ON COLUMN s_amenities.no IS '편의시설서비스번호';

COMMENT ON COLUMN s_amenities.name IS '편의시설명';

CREATE UNIQUE INDEX PK_s_amenities
	ON s_amenities (
		no ASC
	);

ALTER TABLE s_amenities
	ADD
		CONSTRAINT PK_s_amenities
		PRIMARY KEY (
			no
		);


--펜션 편의시설
create sequence seq_p_amenities_no
increment by 1
start with 1
nocache;


CREATE TABLE p_amenities (
	no NUMBER NOT NULL, /* 펜션편의시설번호 */
	pension_no NUMBER, /* 펜션번호 */
	s_amenities_no NUMBER /* 편의시설서비스번호 */
);

COMMENT ON TABLE p_amenities IS '팬션편의시설';

COMMENT ON COLUMN p_amenities.no IS '펜션편의시설번호';

COMMENT ON COLUMN p_amenities.pension_no IS '펜션번호';

COMMENT ON COLUMN p_amenities.s_amenities_no IS '편의시설서비스번호';

CREATE UNIQUE INDEX PK_p_amenities
	ON p_amenities (
		no ASC
	);

ALTER TABLE p_amenities
	ADD
		CONSTRAINT PK_p_amenities
		PRIMARY KEY (
			no
		);

ALTER TABLE p_amenities
	ADD
		CONSTRAINT FK_pension_TO_p_amenities
		FOREIGN KEY (
			pension_no
		)
		REFERENCES pension (
			no
		);

ALTER TABLE p_amenities
	ADD
		CONSTRAINT FK_s_amenities_TO_p_amenities
		FOREIGN KEY (
			s_amenities_no
		)
		REFERENCES s_amenities (
			no
		);


--공용시설 서비스
create sequence seq_s_public_no
increment by 1
start with 1
nocache;


CREATE TABLE s_public (
	no NUMBER NOT NULL, /* 공용시설서비서번호 */
	name VARCHAR2(30) /* 공용시설명 */
);

COMMENT ON TABLE s_public IS '공용시설 서비스';

COMMENT ON COLUMN s_public.no IS '공용시설서비서번호';

COMMENT ON COLUMN s_public.name IS '공용시설명';

CREATE UNIQUE INDEX PK_s_public
	ON s_public (
		no ASC
	);

ALTER TABLE s_public
	ADD
		CONSTRAINT PK_s_public
		PRIMARY KEY (
			no
		);

--펜션 공용시설
create sequence seq_p_public_no
increment by 1
start with 1
nocache;


CREATE TABLE p_public (
	no NUMBER NOT NULL, /* 펜션공용시설번호 */
	pension_no NUMBER, /* 펜션번호 */
	s_public_no NUMBER /* 공용시설서비서번호 */
);

COMMENT ON TABLE p_public IS '팬션공용시설';

COMMENT ON COLUMN p_public.no IS '펜션공용시설번호';

COMMENT ON COLUMN p_public.pension_no IS '펜션번호';

COMMENT ON COLUMN p_public.s_public_no IS '공용시설서비서번호';

CREATE UNIQUE INDEX PK_p_public
	ON p_public (
		no ASC
	);

ALTER TABLE p_public
	ADD
		CONSTRAINT PK_p_public
		PRIMARY KEY (
			no
		);

ALTER TABLE p_public
	ADD
		CONSTRAINT FK_pension_TO_p_public
		FOREIGN KEY (
			pension_no
		)
		REFERENCES pension (
			no
		);

ALTER TABLE p_public
	ADD
		CONSTRAINT FK_s_public_TO_p_public
		FOREIGN KEY (
			s_public_no
		)
		REFERENCES s_public (
			no
		);
-- 준성수기
create sequence seq_sub_peck_no
increment by 1
start with 1
nocache;


CREATE TABLE sub_peck (
	no NUMBER NOT NULL, /* 준성수기 번호 */
	sub_peck_start DATE, /* 준성수기 시작 */
	sub_peck_end DATE /* 준성수기 끝 */
);

COMMENT ON TABLE sub_peck IS '준성수기';

COMMENT ON COLUMN sub_peck.no IS '준성수기 번호';

COMMENT ON COLUMN sub_peck.sub_peck_start IS '준성수기 시작';

COMMENT ON COLUMN sub_peck.sub_peck_end IS '준성수기 끝';

CREATE UNIQUE INDEX PK_sub_peck
	ON sub_peck (
		no ASC
	);

ALTER TABLE sub_peck
	ADD
		CONSTRAINT PK_sub_peck
		PRIMARY KEY (
			no
		);

--펜션 준성수기
create sequence seq_p_sub_peck_no
increment by 1
start with 1
nocache;


CREATE TABLE p_sub_peck (
	no NUMBER NOT NULL, /* 성수기 준성수기 번호 */
	pension_no NUMBER, /* 펜션번호 */
	sub_peck_no NUMBER /* 준성수기 번호 */
);

COMMENT ON TABLE p_sub_peck IS '팬션준성수기';

COMMENT ON COLUMN p_sub_peck.no IS '성수기 준성수기 번호';

COMMENT ON COLUMN p_sub_peck.pension_no IS '펜션번호';

COMMENT ON COLUMN p_sub_peck.sub_peck_no IS '준성수기 번호';

CREATE UNIQUE INDEX PK_p_sub_peck
	ON p_sub_peck (
		no ASC
	);

ALTER TABLE p_sub_peck
	ADD
		CONSTRAINT PK_p_sub_peck
		PRIMARY KEY (
			no
		);

ALTER TABLE p_sub_peck
	ADD
		CONSTRAINT FK_sub_peck_TO_p_sub_peck
		FOREIGN KEY (
			sub_peck_no
		)
		REFERENCES sub_peck (
			no
		);

ALTER TABLE p_sub_peck
	ADD
		CONSTRAINT FK_pension_TO_p_sub_peck
		FOREIGN KEY (
			pension_no
		)
		REFERENCES pension (
			no
		);

--성수기
create sequence seq_peck_no
increment by 1
start with 1
nocache;


CREATE TABLE peck (
	no NUMBER NOT NULL, /* 성수기 번호 */
	peck_start DATE, /* 성수기 시작 */
	peck_end DATE /* 성수기 끝 */
);

COMMENT ON TABLE peck IS '성수기';

COMMENT ON COLUMN peck.no IS '성수기 번호';

COMMENT ON COLUMN peck.peck_start IS '성수기 시작';

COMMENT ON COLUMN peck.peck_end IS '성수기 끝';

CREATE UNIQUE INDEX PK_peck
	ON peck (
		no ASC
	);

ALTER TABLE peck
	ADD
		CONSTRAINT PK_peck
		PRIMARY KEY (
			no
		);

--펜션 성수기
create sequence seq_p_peck_no
increment by 1
start with 1
nocache;


CREATE TABLE p_peck (
	no NUMBER NOT NULL, /* 펜션 성수기 번호 */
	pension_no NUMBER, /* 펜션번호 */
	peck_no NUMBER /* 성수기 번호 */
);

COMMENT ON TABLE p_peck IS '팬션성수기';

COMMENT ON COLUMN p_peck.no IS '펜션 성수기 번호';

COMMENT ON COLUMN p_peck.pension_no IS '펜션번호';

COMMENT ON COLUMN p_peck.peck_no IS '성수기 번호';

CREATE UNIQUE INDEX PK_p_peck
	ON p_peck (
		no ASC
	);

ALTER TABLE p_peck
	ADD
		CONSTRAINT PK_p_peck
		PRIMARY KEY (
			no
		);

ALTER TABLE p_peck
	ADD
		CONSTRAINT FK_peck_TO_p_peck
		FOREIGN KEY (
			peck_no
		)
		REFERENCES peck (
			no
		);

ALTER TABLE p_peck
	ADD
		CONSTRAINT FK_pension_TO_p_peck
		FOREIGN KEY (
			pension_no
		)
		REFERENCES pension (
			no
		);


---객실
create sequence seq_rooms_no
increment by 1
start with 1
nocache;


CREATE TABLE rooms (
	no NUMBER NOT NULL, /* 객실번호 */
	pension_no NUMBER NOT NULL, /* 펜션번호 */
	room_name VARCHAR2(100), /* 객실명 */
	standard_people NUMBER, /* 기준인원 */
	max_people NUMBER, /* 최대인원 */
	room_amenities VARCHAR2(100), /* 편의시설 */
	add_info VARCHAR2(100), /* 추가정보 */
	reserve_avai VARCHAR2(10) /* 예약가능여부 */
);

COMMENT ON TABLE rooms IS '객실';

COMMENT ON COLUMN rooms.no IS '객실번호';

COMMENT ON COLUMN rooms.pension_no IS '펜션번호';

COMMENT ON COLUMN rooms.room_name IS '객실명';

COMMENT ON COLUMN rooms.standard_people IS '기준인원';

COMMENT ON COLUMN rooms.max_people IS '최대인원';

COMMENT ON COLUMN rooms.room_amenities IS '편의시설';

COMMENT ON COLUMN rooms.add_info IS '추가정보';

COMMENT ON COLUMN rooms.reserve_avai IS '예약가능여부';

CREATE UNIQUE INDEX PK_rooms
	ON rooms (
		no ASC
	);

ALTER TABLE rooms
	ADD
		CONSTRAINT PK_rooms
		PRIMARY KEY (
			no
		);

ALTER TABLE rooms
	ADD
		CONSTRAINT FK_pension_TO_rooms
		FOREIGN KEY (
			pension_no
		)
		REFERENCES pension (
			no
		);

--객실 이미지
create sequence seq_room_image_no
increment by 1
start with 1
nocache;


CREATE TABLE room_image (
	no NUMBER NOT NULL, /* 객실이미지번호 */
	rooms_no NUMBER, /* 객실번호 */
	image_path VARCHAR2(100) /* 경로 */
);

COMMENT ON TABLE room_image IS '객실이미지';

COMMENT ON COLUMN room_image.no IS '객실이미지번호';

COMMENT ON COLUMN room_image.rooms_no IS '객실번호';

COMMENT ON COLUMN room_image.image_path IS '경로';

CREATE UNIQUE INDEX PK_room_image
	ON room_image (
		no ASC
	);

ALTER TABLE room_image
	ADD
		CONSTRAINT PK_room_image
		PRIMARY KEY (
			no
		);

ALTER TABLE room_image
	ADD
		CONSTRAINT FK_rooms_TO_room_image
		FOREIGN KEY (
			rooms_no
		)
		REFERENCES rooms (
			no
		);


--객실요금
create sequence seq_prices_no
increment by 1
start with 1
nocache;


CREATE TABLE prices (
	no NUMBER NOT NULL, /* 번호 */
	rooms_no NUMBER, /* 객실번호 */
	sortation VARCHAR2(10), /* 구분(준,성,비) */
	price NUMBER, /* 가격(5000) */
	monday VARCHAR2(10), /* 월 */
	tuesday VARCHAR2(10), /* 화 */
	wednesday VARCHAR2(10), /* 수 */
	thursday VARCHAR2(10), /* 목 */
	friday VARCHAR2(10), /* 금 */
	saturday VARCHAR2(10), /* 토 */
	sunday VARCHAR2(10) /* 일 */
);

COMMENT ON TABLE prices IS '요금';

COMMENT ON COLUMN prices.no IS '번호';

COMMENT ON COLUMN prices.rooms_no IS '객실번호';

COMMENT ON COLUMN prices.sortation IS '구분(준,성,비)';

COMMENT ON COLUMN prices.price IS '가격(5000)';

COMMENT ON COLUMN prices.monday IS '월';

COMMENT ON COLUMN prices.tuesday IS '화';

COMMENT ON COLUMN prices.wednesday IS '수';

COMMENT ON COLUMN prices.thursday IS '목';

COMMENT ON COLUMN prices.friday IS '금';

COMMENT ON COLUMN prices.saturday IS '토';

COMMENT ON COLUMN prices.sunday IS '일';

CREATE UNIQUE INDEX PK_prices
	ON prices (
		no ASC
	);

ALTER TABLE prices
	ADD
		CONSTRAINT PK_prices
		PRIMARY KEY (
			no
		);

ALTER TABLE prices
	ADD
		CONSTRAINT FK_rooms_TO_prices
		FOREIGN KEY (
			rooms_no
		)
		REFERENCES rooms (
			no
		);
        
--예약      
create sequence seq_reservations_no
increment by 1
start with 1
nocache;
        

CREATE TABLE reservations (
	no NUMBER NOT NULL, /* 예약번호 */
	room_no NUMBER, /* 객실번호 */
	user_no NUMBER NOT NULL, /* 유저번호 */
	name VARCHAR2(10) NOT NULL, /* 예약자이름 */
	hp VARCHAR2(20) NOT NULL, /* 휴대폰번호 */
	check_in VARCHAR2(20) NOT NULL, /* 체크인날짜 */
	check_out VARCHAR2(20) NOT NULL, /* 체크아웃날짜 */
	adult NUMBER NOT NULL, /* 성인 */
	kid NUMBER, /* 아동 */
	baby NUMBER, /* 영유아 */
	total_price NUMBER NOT NULL, /* 총가격 */
	reg_date DATE NOT NULL, /* 등록일 */
	pay_way VARCHAR2(20) NOT NULL, /* 결제수단 */
	pay_status VARCHAR2(20), /* 결제상태 */
	status VARCHAR2(100), /* 예약상태 */
	trans_price VARCHAR2(20), /* 양도가격 */
	p_r_no NUMBER /* 부모예약번호 */
);

COMMENT ON TABLE reservations IS '예약';

COMMENT ON COLUMN reservations.no IS '예약번호';

COMMENT ON COLUMN reservations.room_no IS '객실번호';

COMMENT ON COLUMN reservations.user_no IS '유저번호';

COMMENT ON COLUMN reservations.name IS '예약자이름';

COMMENT ON COLUMN reservations.hp IS '휴대폰번호';

COMMENT ON COLUMN reservations.check_in IS '체크인날짜';

COMMENT ON COLUMN reservations.check_out IS '체크아웃날짜';

COMMENT ON COLUMN reservations.adult IS '성인';

COMMENT ON COLUMN reservations.kid IS '아동';

COMMENT ON COLUMN reservations.baby IS '영유아';

COMMENT ON COLUMN reservations.total_price IS '총가격';

COMMENT ON COLUMN reservations.reg_date IS '등록일';

COMMENT ON COLUMN reservations.pay_way IS '결제수단';

COMMENT ON COLUMN reservations.pay_status IS '결제상태';

COMMENT ON COLUMN reservations.status IS '예약상태';

COMMENT ON COLUMN reservations.trans_price IS '양도가격';

COMMENT ON COLUMN reservations.p_r_no IS '부모예약번호';

CREATE UNIQUE INDEX PK_reservations
	ON reservations (
		no ASC
	);

ALTER TABLE reservations
	ADD
		CONSTRAINT PK_reservations
		PRIMARY KEY (
			no
		);

ALTER TABLE reservations
	ADD
		CONSTRAINT FK_users_TO_reservations
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			no
		);

ALTER TABLE reservations
	ADD
		CONSTRAINT FK_rooms_TO_reservations
		FOREIGN KEY (
			room_no
		)
		REFERENCES rooms (
			no
		);

--포인트
create sequence seq_points_no
increment by 1
start with 1
nocache;


CREATE TABLE points (
	no NUMBER NOT NULL, /* 포인트번호 */
	reserve_no NUMBER, /* 예약번호 */
	point VARCHAR2(20), /* 금액 */
	reg_date DATE /* 이용날짜 */
);

COMMENT ON TABLE points IS '포인트';

COMMENT ON COLUMN points.no IS '포인트번호';

COMMENT ON COLUMN points.reserve_no IS '예약번호';

COMMENT ON COLUMN points.point IS '금액';

COMMENT ON COLUMN points.reg_date IS '이용날짜';

CREATE UNIQUE INDEX PK_points
	ON points (
		no ASC
	);

ALTER TABLE points
	ADD
		CONSTRAINT PK_points
		PRIMARY KEY (
			no
		);

ALTER TABLE points
	ADD
		CONSTRAINT FK_reservations_TO_points
		FOREIGN KEY (
			reserve_no
		)
		REFERENCES reservations (
			no
		);


--리뷰
create sequence seq_reviews_no
increment by 1
start with 1
nocache;

CREATE TABLE reviews (
	review_no NUMBER NOT NULL, /* 리뷰번호 */
	no NUMBER, /* 예약번호 */
	title VARCHAR2(2000) NOT NULL, /* 제목 */
	stars NUMBER NOT NULL, /* 평점 */
	image1 VARCHAR2(20), /* 이미지1 */
	image2 VARCHAR2(20), /* 이미지2 */
	content VARCHAR2(1000) NOT NULL, /* 내용 */
	reg_date DATE NOT NULL /* 등록일 */
);

COMMENT ON TABLE reviews IS '리뷰';

COMMENT ON COLUMN reviews.review_no IS '리뷰번호';

COMMENT ON COLUMN reviews.no IS '예약번호';

COMMENT ON COLUMN reviews.title IS '제목';

COMMENT ON COLUMN reviews.stars IS '평점';

COMMENT ON COLUMN reviews.image1 IS '이미지1';

COMMENT ON COLUMN reviews.image2 IS '이미지2';

COMMENT ON COLUMN reviews.content IS '내용';

COMMENT ON COLUMN reviews.reg_date IS '등록일';

CREATE UNIQUE INDEX PK_reviews
	ON reviews (
		review_no ASC
	);

ALTER TABLE reviews
	ADD
		CONSTRAINT PK_reviews
		PRIMARY KEY (
			review_no
		);

ALTER TABLE reviews
	ADD
		CONSTRAINT FK_reservations_TO_reviews
		FOREIGN KEY (
			no
		)
		REFERENCES reservations (
			no
		);


--리뷰답글
create sequence seq_replys_no
increment by 1
start with 1
nocache;



CREATE TABLE replys (
	reply_no NUMBER NOT NULL, /* 리뷰관리번호 */
	review_no NUMBER NOT NULL, /* 리뷰번호 */
	content VARCHAR2(1000), /* 내용 */
	reg_date DATE, /* 등록일 */
	owner NUMBER /* 펜션주인 */
);

COMMENT ON TABLE replys IS '리뷰답글';

COMMENT ON COLUMN replys.reply_no IS '리뷰관리번호';

COMMENT ON COLUMN replys.review_no IS '리뷰번호';

COMMENT ON COLUMN replys.content IS '내용';

COMMENT ON COLUMN replys.reg_date IS '등록일';

COMMENT ON COLUMN replys.owner IS '펜션주인';

CREATE UNIQUE INDEX PK_replys
	ON replys (
		reply_no ASC
	);

ALTER TABLE replys
	ADD
		CONSTRAINT PK_replys
		PRIMARY KEY (
			reply_no
		);

ALTER TABLE replys
	ADD
		CONSTRAINT FK_reviews_TO_replys
		FOREIGN KEY (
			review_no
		)
		REFERENCES reviews (
			review_no
		);

ALTER TABLE replys
	ADD
		CONSTRAINT FK_users_TO_replys
		FOREIGN KEY (
			owner
		)
		REFERENCES users (
			no
		);








------삭제---------------------------------------------------------------------

---유저
DROP INDEX PK_users;

DROP TABLE users 
	CASCADE CONSTRAINTS;

drop sequence seq_users_no;

--업체
DROP INDEX PK_company;

DROP TABLE company 
	CASCADE CONSTRAINTS;
    
drop sequence seq_company_no;

--업태
DROP INDEX PK_business_type;

DROP TABLE business_type 
	CASCADE CONSTRAINTS;
    
drop sequence seq_business_type_no;

--업체업태
DROP INDEX PK_c_b_type;

DROP TABLE c_b_type 
	CASCADE CONSTRAINTS;

drop sequence seq_cbt_no; -- cbt = company_business_type

--업종
DROP INDEX PK_business_group;

DROP TABLE business_group 
	CASCADE CONSTRAINTS;

drop sequence seq_business_group_no;

-- 업체 업종
DROP INDEX PK_c_b_group;

DROP TABLE c_b_group 
	CASCADE CONSTRAINTS;

drop sequence seq_cbg_no;  -- cbg = company_business_group


--펜션

DROP INDEX PK_pension;

DROP TABLE pension 
	CASCADE CONSTRAINTS;
    
drop sequence seq_pension_no;    

--펜션이미지
DROP INDEX PK_pension_image;

DROP TABLE pension_image 
	CASCADE CONSTRAINTS;

drop sequence seq_pension_img_no;

--편의시설 서비스 
DROP INDEX PK_s_amenities;

DROP TABLE s_amenities 
	CASCADE CONSTRAINTS;

drop sequence seq_s_amenities_no;

--펜션 편의시설
DROP INDEX PK_p_amenities;

DROP TABLE p_amenities 
	CASCADE CONSTRAINTS;

drop sequence seq_p_amenities_no;

--공용시설 서비스
DROP INDEX PK_s_public;

DROP TABLE s_public 
	CASCADE CONSTRAINTS;

drop sequence seq_s_public_no;

--펜션 공용시설
DROP INDEX PK_p_public;

DROP TABLE p_public 
	CASCADE CONSTRAINTS;
    
drop sequence seq_p_public_no;

--준성수기
DROP INDEX PK_sub_peck;

DROP TABLE sub_peck 
	CASCADE CONSTRAINTS;

drop sequence seq_sub_peck_no;

--펜션 준성수기
DROP INDEX PK_p_sub_peck;

DROP TABLE p_sub_peck 
	CASCADE CONSTRAINTS;

drop sequence seq_p_sub_peck_no;

--성수기
DROP INDEX PK_peck;

DROP TABLE peck 
	CASCADE CONSTRAINTS;
    
drop sequence seq_peck_no;

--펜션 성수기
DROP INDEX PK_p_peck;

DROP TABLE p_peck 
	CASCADE CONSTRAINTS;

drop sequence seq_p_peck_no;

--객실
DROP INDEX PK_rooms;

DROP TABLE rooms 
	CASCADE CONSTRAINTS;

drop sequence seq_rooms_no;
    

--객실 이미지
DROP INDEX PK_room_image;

DROP TABLE room_image 
	CASCADE CONSTRAINTS;

drop sequence seq_room_image_no;

--객실요금
DROP INDEX PK_prices;

DROP TABLE prices 
	CASCADE CONSTRAINTS;

drop sequence seq_prices_no;

--예약
DROP INDEX PK_reservations;

DROP TABLE reservations 
	CASCADE CONSTRAINTS;

drop sequence seq_reservations_no;

--포인트
DROP INDEX PK_points;

DROP TABLE points 
	CASCADE CONSTRAINTS;

drop sequence seq_points_no;

--리뷰
DROP INDEX PK_reviews;

DROP TABLE reviews 
	CASCADE CONSTRAINTS;

drop sequence seq_reviews_no;

--리뷰 답글
DROP INDEX PK_replys;

DROP TABLE replys 
	CASCADE CONSTRAINTS;

drop sequence seq_replys_no;