 ---유저

DROP TABLE users 
   CASCADE CONSTRAINTS;

drop sequence seq_users_no;

--업체

DROP TABLE company 
   CASCADE CONSTRAINTS;
    
drop sequence seq_company_no;

--업태

DROP TABLE business_type 
   CASCADE CONSTRAINTS;
    
drop sequence seq_business_type_no;

--업체업태

DROP TABLE c_b_type 
   CASCADE CONSTRAINTS;

drop sequence seq_cbt_no; -- cbt = company_business_type

--업종

DROP TABLE business_group 
   CASCADE CONSTRAINTS;

drop sequence seq_business_group_no;

-- 업체 업종

DROP TABLE c_b_group 
   CASCADE CONSTRAINTS;

drop sequence seq_cbg_no;  -- cbg = company_business_group


--펜션
DROP TABLE pension 
   CASCADE CONSTRAINTS;
    
drop sequence seq_pension_no;    

--시도
DROP TABLE sido 
   CASCADE CONSTRAINTS;

drop sequence seq_sido_no; 

--구군
DROP TABLE gugun 
   CASCADE CONSTRAINTS;
    
drop sequence seq_gugun_no; 

--펜션이미지

DROP TABLE pension_image 
   CASCADE CONSTRAINTS;

drop sequence seq_pension_img_no;

--편의시설 서비스 
DROP TABLE s_amenities 
   CASCADE CONSTRAINTS;

drop sequence seq_s_amenities_no;

--펜션 편의시설

DROP TABLE p_amenities 
   CASCADE CONSTRAINTS;

drop sequence seq_p_amenities_no;

--공용시설 서비스

DROP TABLE s_public 
   CASCADE CONSTRAINTS;

drop sequence seq_s_public_no;

--펜션 공용시설

DROP TABLE p_public 
   CASCADE CONSTRAINTS;
    
drop sequence seq_p_public_no;


--성수기

DROP TABLE peck 
   CASCADE CONSTRAINTS;
    
drop sequence seq_peck_no;


--객실

DROP TABLE rooms 
   CASCADE CONSTRAINTS;

drop sequence seq_rooms_no;
    

--객실 이미지

DROP TABLE room_image 
   CASCADE CONSTRAINTS;

drop sequence seq_room_image_no;

--객실요금
DROP TABLE prices 
   CASCADE CONSTRAINTS;

drop sequence seq_prices_no;

--요일
DROP TABLE week 
   CASCADE CONSTRAINTS;
drop sequence seq_week_no;
--예약

DROP TABLE reservations 
   CASCADE CONSTRAINTS;

drop sequence seq_reservations_no;

--포인트

DROP TABLE points 
   CASCADE CONSTRAINTS;

drop sequence seq_points_no;

--리뷰

DROP TABLE reviews 
   CASCADE CONSTRAINTS;

drop sequence seq_reviews_no;

--리뷰 답글

DROP TABLE replys 
   CASCADE CONSTRAINTS;

drop sequence seq_replys_no;



--유저생성
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
   ceo_hp VARCHAR2(200) NOT NULL, /* 핸드폰번호(업체) */
   bank_name VARCHAR2(100), /* 계좌은행 */
   account_holder VARCHAR2(200), /* 예금주 */
   account VARCHAR2(100), /* 계좌번호 */
   settlement_cycle VARCHAR2(100), /* 정산주기 */
   tax_Invoice number, /* 세금계산서여부 */
   company_name VARCHAR2(300), /* 상호명 */
   ceo_name VARCHAR2(20), /* 대표명 */
   business_licensenumber VARCHAR2(100), /* 사업자등록번호 */
   postal_code VARCHAR2(100), /* 우편번호 */
   company_address VARCHAR2(100), /* 업체주소 */
   detail_address VARCHAR2(100), /* 상세주소 */
   homepage VARCHAR2(1000), /* 홈페이지 */
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
   name VARCHAR2(100) /* 업태명 */
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
   name VARCHAR2(100) /* 업종명 */
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
   postal_code VARCHAR2(100), /* 우편번호 */
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
   check_in VARCHAR2(200), /* 체크인 */
   check_out VARCHAR2(200), /* 체크아웃 */
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
	save_name VARCHAR2(200), /* 이미지저장이름 */
	image_path VARCHAR2(200) /* 이미지경로 */
);

COMMENT ON TABLE pension_image IS '팬션이미지';

COMMENT ON COLUMN pension_image.no IS '팬션이미지번호';

COMMENT ON COLUMN pension_image.pension_no IS '펜션번호';

COMMENT ON COLUMN pension_image.save_name IS '이미지저장이름';

COMMENT ON COLUMN pension_image.image_path IS '이미지경로';

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
   name VARCHAR2(100), /* 편의시설명 */
   icon_path VARCHAR2(1000) /* 편의시설아이콘 */
);

COMMENT ON TABLE s_amenities IS '편의시설 서비스';

COMMENT ON COLUMN s_amenities.no IS '편의시설서비스번호';

COMMENT ON COLUMN s_amenities.name IS '편의시설명';

COMMENT ON COLUMN s_amenities.icon_path IS '편의시설아이콘';

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
   name VARCHAR2(100), /* 공용시설명 */
   icon_path VARCHAR2(1000) /* 공용시설아이콘 */
);

COMMENT ON TABLE s_public IS '공용시설 서비스';

COMMENT ON COLUMN s_public.no IS '공용시설서비서번호';

COMMENT ON COLUMN s_public.name IS '공용시설명';

COMMENT ON COLUMN s_public.icon_path IS '공용시설아이콘';

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
      
--시/도
create sequence seq_sido_no
increment by 1
start with 1
nocache;


CREATE TABLE sido (
   no NUMBER NOT NULL, /* 시/도번호 */
   pension_no NUMBER, /* 펜션번호 */
   name VARCHAR2(100) /* 이름 */
);

COMMENT ON TABLE sido IS '시/도';

COMMENT ON COLUMN sido.no IS '시/도번호';

COMMENT ON COLUMN sido.pension_no IS '펜션번호';

COMMENT ON COLUMN sido.name IS '이름';

CREATE UNIQUE INDEX PK_sido
   ON sido (
      no ASC
   );

ALTER TABLE sido
   ADD
      CONSTRAINT PK_sido
      PRIMARY KEY (
         no
      );

ALTER TABLE sido
   ADD
      CONSTRAINT FK_pension_TO_sido
      FOREIGN KEY (
         pension_no
      )
      REFERENCES pension (
         no
      );
        
        
--구/군
create sequence seq_gugun_no
increment by 1
start with 1
nocache;


CREATE TABLE gugun (
   no NUMBER NOT NULL, /* 구/군번호 */
   sido_no NUMBER, /* 시/도번호 */
   name VARCHAR2(100) /* 이름 */
);

COMMENT ON TABLE gugun IS '구/군';

COMMENT ON COLUMN gugun.no IS '구/군번호';

COMMENT ON COLUMN gugun.sido_no IS '시/도번호';

COMMENT ON COLUMN gugun.name IS '이름';

CREATE UNIQUE INDEX PK_gugun
   ON gugun (
      no ASC
   );

ALTER TABLE gugun
   ADD
      CONSTRAINT PK_gugun
      PRIMARY KEY (
         no
      );

ALTER TABLE gugun
   ADD
      CONSTRAINT FK_sido_TO_gugun
      FOREIGN KEY (
         sido_no
      )
      REFERENCES sido (
         no
      );
        
        


--성수기
create sequence seq_peck_no
increment by 1
start with 1
nocache;


CREATE TABLE peck (
	no NUMBER NOT NULL, /* 성수기 번호 */
	pension_no NUMBER, /* 펜션번호 */
	peck_start DATE, /* 성수기 시작 */
	peck_end DATE, /* 성수기 끝 */
	gubun VARCHAR2(100) /* 구분 */
);

COMMENT ON TABLE peck IS '성수기';

COMMENT ON COLUMN peck.no IS '성수기 번호';

COMMENT ON COLUMN peck.pension_no IS '펜션번호';

COMMENT ON COLUMN peck.peck_start IS '성수기 시작';

COMMENT ON COLUMN peck.peck_end IS '성수기 끝';

COMMENT ON COLUMN peck.gubun IS '구분';

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

ALTER TABLE peck
	ADD
		CONSTRAINT FK_pension_TO_peck
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
   save_name VARCHAR2(200), /* 이미지저장이름 */
   image_path VARCHAR2(100) /* 경로 */
);

COMMENT ON TABLE room_image IS '객실이미지';

COMMENT ON COLUMN room_image.no IS '객실이미지번호';

COMMENT ON COLUMN room_image.rooms_no IS '객실번호';

COMMENT ON COLUMN room_image.save_name IS '이미지저장이름';

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
   room_no NUMBER, /* 객실번호 */
   sortation NUMBER, /* 구분(준= 2,성 = 1,비  = 3) */
   divide NUMBER, /* 구분(준1,준2) */
   price NUMBER /* 가격(5000) */
);

COMMENT ON TABLE prices IS '요금';

COMMENT ON COLUMN prices.no IS '번호';

COMMENT ON COLUMN prices.room_no IS '객실번호';

COMMENT ON COLUMN prices.sortation IS '구분(준,성,비)';

COMMENT ON COLUMN prices.divide IS '구분(준1,준2)';

COMMENT ON COLUMN prices.price IS '가격(5000)';

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
         room_no
      )
      REFERENCES rooms (
         no
      );
        
--요일
create sequence seq_week_no
increment by 1
start with 1
nocache;

CREATE TABLE week (
   no NUMBER NOT NULL, /* 요일번호 */
   price_no NUMBER, /* 요금번호 */
   name VARCHAR2(100) /* 요일명 */
);

COMMENT ON TABLE week IS '요일';

COMMENT ON COLUMN week.no IS '요일번호';

COMMENT ON COLUMN week.price_no IS '요금번호';

COMMENT ON COLUMN week.name IS '요일명';

CREATE UNIQUE INDEX PK_week
   ON week (
      no ASC
   );

ALTER TABLE week
   ADD
      CONSTRAINT PK_week
      PRIMARY KEY (
         no
      );

ALTER TABLE week
   ADD
      CONSTRAINT FK_prices_TO_week
      FOREIGN KEY (
         price_no
      )
      REFERENCES prices (
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
   name VARCHAR2(100) NOT NULL, /* 예약자이름 */
   hp VARCHAR2(20) NOT NULL, /* 휴대폰번호 */
   check_in Date NOT NULL, /* 체크인날짜 */
   check_out Date NOT NULL, /* 체크아웃날짜 */
   adult NUMBER NOT NULL, /* 성인 */
   kid NUMBER, /* 아동 */
   baby NUMBER, /* 영유아 */
   total_price varchar2(100) NOT NULL, /* 총가격 */
   reg_date DATE NOT NULL, /* 등록일 */
   pay_way VARCHAR2(20) NOT NULL, /* 결제수단 */
   pay_status VARCHAR2(20), /* 결제상태 */
   status number, /* 예약상태 1 예약완료
                             2 이용중
                             3 이용완료
                             4 일반취소
                             5 양도에의한취소(양도완료)
                             6 양도대기 */ 
   trans_price varchar2(100)   , /* 양도가격 */
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
   point varchar2(100), /* 금액 */
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

--유저 회원가입
insert into users
values(seq_users_no.nextval,'aa','11','01012341234','양도받자','aa@gmail.com','user');  ----1

insert into users
values(seq_users_no.nextval,'cc','11','01012341254','양도받자','cc@gmail.com','user'); -----2

--호스트 회원가입
insert into users
values(seq_users_no.nextval,'bb','11','01040012325','호스트','bb@gmail.com','host'); -----3

insert into users
values(seq_users_no.nextval,'gg','11','01099821354','호아','gg@gmail.com','host'); -----4

insert into users
values(seq_users_no.nextval,'ww','11','01077853320','많이벌자','ㅈㅈ@gmail.com','host'); -----5

insert into users
values(seq_users_no.nextval,'hh','11','01010041009','체인점','hh@gmail.com','host'); -----6

insert into users
values(seq_users_no.nextval,'pp','11','01065659989','쓰레기','pp@gmail.com','host'); -----7



--호스트가 업체등록
insert into company
values(SEQ_COMPANY_NO.nextval,3,'0266539875','01040012325','국민','김민규','04680104232123','week',2,'민규컴퍼니','김민규','321312312','78567','서울대입구역에그옐로우','123층','www.zxz.com','qqq@gmail.com');

insert into company
values(SEQ_COMPANY_NO.nextval,4,'0277345195','01099821354','국민','지금이순간','04233354652154','week',2,'밍키컴퍼니','김밍키','12312312312','22222','어디인지말롸~','14층','www.xxx.com','wwww@gmail.com');

insert into company
values(SEQ_COMPANY_NO.nextval,5,'0266457335','01077853320','국민','이건뭐냐','01452154979865','week',2,'양키컴퍼니','김양키','123213123123','43234','제주도~','1433층','www.ccc.com','eeeee@gmail.com');

insert into company
values(SEQ_COMPANY_NO.nextval,6,'02327546195','01010041009','국민','나도잘몰라','2123545232028','week',2,'짱꺠컴퍼니','김짱깨','124213123123','12321','대구','5214층','www.fff.com','r@gmail.com');

insert into company
values(SEQ_COMPANY_NO.nextval,7,'0215151949','01065659989','국민','허허','6548951235545','week',2,'캄퍼니','김퍼니','12123124123','46545','중궈','14321층','www.ggg.com','rrsda@gmail.com');


--업태등록
insert into business_type
values(SEQ_BUSINESS_TYPE_NO.nextval,'숙박');
insert into business_type
values(SEQ_BUSINESS_TYPE_NO.nextval,'음식 및 숙박');
insert into business_type
values(SEQ_BUSINESS_TYPE_NO.nextval,'부동산');
insert into business_type
values(SEQ_BUSINESS_TYPE_NO.nextval,'음식');
insert into business_type
values(SEQ_BUSINESS_TYPE_NO.nextval,'서비스');

--업체 업태
insert into c_b_type
values(SEQ_CBT_NO.nextval,1,1);

insert into c_b_type
values(SEQ_CBT_NO.nextval,2,2);

insert into c_b_type
values(SEQ_CBT_NO.nextval,3,2);

insert into c_b_type
values(SEQ_CBT_NO.nextval,4,2);

insert into c_b_type
values(SEQ_CBT_NO.nextval,5,1);

--업종
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'민박');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'외국인도시민박');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'게스트하우스');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'한옥체험');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'여관');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'숙박');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'펜션');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'호스텔');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'모텔');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'관광');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'임대');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'호텔');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'관광호텔');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'일반여행');
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'무인텔');

--업체업종
insert into c_b_group
values(SEQ_CBG_NO.nextval,1,1);

insert into c_b_group
values(SEQ_CBG_NO.nextval,1,3);

insert into c_b_group
values(SEQ_CBG_NO.nextval,1,2);

insert into c_b_group
values(SEQ_CBG_NO.nextval,2,1);

insert into c_b_group
values(SEQ_CBG_NO.nextval,2,6);

insert into c_b_group
values(SEQ_CBG_NO.nextval,2,3);

insert into c_b_group
values(SEQ_CBG_NO.nextval,3,5);

insert into c_b_group
values(SEQ_CBG_NO.nextval,3,6);

insert into c_b_group
values(SEQ_CBG_NO.nextval,3,7);

insert into c_b_group
values(SEQ_CBG_NO.nextval,4,1);

insert into c_b_group
values(SEQ_CBG_NO.nextval,4,7);

insert into c_b_group
values(SEQ_CBG_NO.nextval,5,3);

insert into c_b_group
values(SEQ_CBG_NO.nextval,5,7);

 
--펜션
insert into pension
values(SEQ_PENSION_NO.nextval,1,'민규네펜션','13494','경기 광명시 하안로288번길 2','스타벅스옆',4121010300,'경기도 광명시 하안로','광명역에서 20시간 걸립니다 알아서 오세요','걸어서는 못와요 무조건 차타고','광명사거리역 5분','광명동굴','광동','광','이용규칙이에용','바베큐 20000원','주차장 시간당 2만원','','13:00','10:00',20000,10000,0,10);

insert into pension
values(SEQ_PENSION_NO.nextval,2,'지웅펜션','13494','경기 성남시 분당구 판교역로 235','판교역가까워용',4113510900,'경기 성남시 분당구 삼평동','차타고오세요','버스타고와도돼요','판교역 5분','광명동굴','광동','광','이용규칙이에용','바베큐 20000원','주차장 시간당 12만원','','13:00','10:00',20000,10000,0,7);

insert into pension
values(SEQ_PENSION_NO.nextval,3,'밍키펜션','17028','경기 용인시 처인구 포곡읍 에버랜드로 12','에버랜드옆',4146125023,'경기 용인시 처인구 둔전리','광명역에서 20시간 걸립니다 알아서 오세요','걸어서는 못와요 무조건 차타고','에버랜드 5분','광명동굴','광동','광','이용규칙이에용','바베큐 20000원','주차장 시간당 30만원','','13:00','10:00',20000,10000,0,7);

insert into pension
values(SEQ_PENSION_NO.nextval,4,'짱짱펜션','63309','제주특별자치도 제주시 첨단로 242','여긴어딜까',5011013600,'제주특별자치도 제주시 영평동','광명역에서 20시간 걸립니다 알아서 오세요','걸어서는 못와요 무조건 차타고','비행기타고 5분','광명동굴','광동','광','이용규칙이에용','바베큐 20000원','주차장 시간당 25만원','','13:00','10:00',20000,10000,0,6);

insert into pension
values(SEQ_PENSION_NO.nextval,5,'으슨한펜션','06035','서울 강남구 가로수길 5','가로수길~',1168010700,'서울 강남구 신사동','광명역에서 20시간 걸립니다 알아서 오세요','걸어서는 못와요 무조건 차타고','와르르맨션 5분','광명동굴','광동','광','이용규칙이에용','바베큐 20000원','주차장 시간당 99만원','','13:00','10:00',20000,10000,0,10);

insert into sido
values(seq_sido_no.nextval,1,'경기도');
insert into gugun
values(seq_gugun_no.nextval,1,'광명시');

insert into sido
values(seq_sido_no.nextval,2,'경기도');
insert into gugun
values(seq_gugun_no.nextval,1,'성남시');

insert into sido
values(seq_sido_no.nextval,3,'경기도');
insert into gugun
values(seq_gugun_no.nextval,1,'용인시');

insert into sido
values(seq_sido_no.nextval,4,'제주도');
insert into gugun
values(seq_gugun_no.nextval,2,'제주시');

insert into sido
values(seq_sido_no.nextval,5,'서울특별시');
insert into gugun
values(seq_gugun_no.nextval,3,'강남구');

--펜션이미지
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'1.jpg','1.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'2.jpg','2.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'3.jpg','3.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'4.jpg','4.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'5.jpg','5.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'6.jpg','6.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'7.jpg','7.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'8.jpg','8.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'9.jpg','9.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'10.jpg','10.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'11.jpg','11.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'12.jpg','12.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'13.jpg','13.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'14.jpg','14.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'15.jpg','15.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'16.jpg','16.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'17.jpg','17.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'18.jpg','18.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'19.jpg','19.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'20.jpg','20.jpg');

insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'1.jpg','1.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'2.jpg','2.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'3.jpg','3.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'4.jpg','4.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'5.jpg','5.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'6.jpg','6.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'7.jpg','7.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'8.jpg','8.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'9.jpg','9.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'10.jpg','10.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'11.jpg','11.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'12.jpg','12.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'13.jpg','13.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'14.jpg','14.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'15.jpg','15.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'16.jpg','16.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'17.jpg','17.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'18.jpg','18.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'19.jpg','19.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,2,'20.jpg','20.jpg');

insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'1.jpg','1.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'2.jpg','2.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'3.jpg','3.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'4.jpg','4.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'5.jpg','5.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'6.jpg','6.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'7.jpg','7.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'8.jpg','8.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'9.jpg','9.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'10.jpg','10.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'11.jpg','11.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'12.jpg','12.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'13.jpg','13.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'14.jpg','14.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'15.jpg','15.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'16.jpg','16.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'17.jpg','17.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'18.jpg','18.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'19.jpg','19.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,3,'20.jpg','20.jpg');

insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'1.jpg','1.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'2.jpg','2.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'3.jpg','3.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'4.jpg','4.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'5.jpg','5.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'6.jpg','6.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'7.jpg','7.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'8.jpg','8.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'9.jpg','9.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'10.jpg','10.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'11.jpg','11.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'12.jpg','12.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'13.jpg','13.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'14.jpg','14.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'15.jpg','15.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'16.jpg','16.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'17.jpg','17.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'18.jpg','18.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'19.jpg','19.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,5,'20.jpg','20.jpg');

insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'1.jpg','1.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'2.jpg','2.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'3.jpg','3.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'4.jpg','4.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'5.jpg','5.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'6.jpg','6.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'7.jpg','7.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'8.jpg','8.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'9.jpg','9.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'10.jpg','10.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'11.jpg','11.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'12.jpg','12.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'13.jpg','13.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'14.jpg','14.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'15.jpg','15.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'16.jpg','16.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'17.jpg','17.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'18.jpg','18.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'19.jpg','19.jpg');
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,4,'20.jpg','20.jpg');

--편의시설
insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'냉장고','냉장고.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'에어컨','에어컨.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'TV','TV.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'WIFI','WIFI.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'욕실용품','욕실용품.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'세탁기','세탁기.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'드라이기','드라이기.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'욕조','욕조.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'반려견동반','반려견동반.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'객실내 흡연','객실내 흡연.png');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'취사가능','취사가능.png');

--펜션편의시설
insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,1);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,2);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,3);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,4);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,5);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,6);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,7);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,8); 

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,9);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,10);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,1,11);


insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,2,1);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,2,2);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,2,3);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,2,4);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,2,5);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,2,6);


insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,3);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,4);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,5);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,6);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,7);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,8); 

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,9);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,10);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,3,11);


insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,1);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,2);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,3);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,4);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,5);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,6);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,7);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,8); 

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,9);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,10);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,4,11);


insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,1);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,2);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,3);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,4);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,5);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,6);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,7);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,8); 

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,9);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,10);

insert into p_amenities
values(SEQ_P_AMENITIES_NO.nextval,5,11);


--공용시설 서비스
insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'수영장','수영장.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'족구장','족구장.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'카페','카페.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'노래방','노래방.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'편의점','편의점.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'주차장','주차장.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'BBQ','BBQ.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'주방,식당','주방,식당.png');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'흡연구역','흡연구역.png');

--펜션 공용시설
insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,1);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,2);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,3);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,4);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,5);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,6);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,7);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,8);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,9);


insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,2,6);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,2,7);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,2,8);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,2,9);


insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,3,1);
insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,3,2);
insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,3,4);
insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,3,6);
insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,3,7);
insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,3,8);



insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,4,1);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,4,2);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,4,3);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,4,4);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,4,5);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,4,6);


insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,5,1);

----------------------------------------------------------------------
--성수기
insert into peck
values(SEQ_PECK_NO.nextval,1,'2022-08-01','2022-08-31',1);
insert into peck
values(SEQ_PECK_NO.nextval,1,'2022-09-01','2022-09-20',2);

insert into peck
values(SEQ_PECK_NO.nextval,2,'2022-08-01','2022-08-31',1);
insert into peck
values(SEQ_PECK_NO.nextval,2,'2022-09-01','2022-09-20',2);

insert into peck
values(SEQ_PECK_NO.nextval,3,'2022-08-01','2022-08-31',1);
insert into peck
values(SEQ_PECK_NO.nextval,3,'2022-08-01','2022-08-31',1);

insert into peck
values(SEQ_PECK_NO.nextval,4,'2022-09-01','2022-09-20',2);
insert into peck
values(SEQ_PECK_NO.nextval,4,'2022-08-01','2022-08-31',1);

insert into peck
values(SEQ_PECK_NO.nextval,5,'2022-09-01','2022-09-20',2);
insert into peck
values(SEQ_PECK_NO.nextval,5,'2022-09-01','2022-09-20',2);

--객실
insert into rooms
values(SEQ_ROOMS_NO.nextval,1,'민규장방',2,4,'아무것도 없어요..','오면 방탈출가능','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,1,'우리방',2,4,'아무것도 없어요222','오면 방탈출가능22','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,2,'집방',3,4,'아무것도 없어요3333','오면 방탈출가능33','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,2,'범준이방',4,6,'아무것도 없어요4444','오면 머리밀어버림44','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,3,'지웅이방',5,6,'아무것도 없어요555','오면 머리밀어버림55','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,3,'민조장방',2,5,'아무것도 없어요66','오면 머리밀어버림66','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,4,'여기방',3,4,'아무것요11','오면 감옥','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,4,'집방',4,4,'아무것요22','오면 감옥2','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,5,'되라',3,4,'아무것요11','오면 감옥','Y');

insert into rooms
values(SEQ_ROOMS_NO.nextval,5,'제발',4,4,'아무것요22','오면 감옥2','Y');

--객실 이미지
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,1,'1.jpg','1.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,1,'2.jpg','2.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,1,'3.jpg','3.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,1,'4.jpg','4.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,2,'5.jpg','5.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,2,'6.jpg','6.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,2,'7.jpg','7.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,2,'8.jpg','8.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,3,'9.jpg','9.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,3,'10.jpg','10.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,3,'11.jpg','11.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,4,'3.jpg','3.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,4,'9.jpg','9.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,4,'18.jpg','18.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,4,'20.jpg','20.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,4,'1.jpg','1.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,5,'5.jpg','5.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,5,'6.jpg','6.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,5,'7.jpg','7.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,5,'8.jpg','8.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,5,'9.jpg','9.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,5,'10.jpg','10.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,6,'12.jpg','12.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,6,'13.jpg','13.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,7,'16.jpg','16.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,7,'1.jpg','1.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,7,'6.jpg','6.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,7,'5.jpg','5.jpg');
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,7,'12.jpg','12.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,8,'20.jpg','20.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,8,'4.jpg','4.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,9,'1.jpg','1.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,9,'6.jpg','6.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,10,'5.jpg','5.jpg');

insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,10,'12.jpg','12.jpg');


--객실 요금
insert into prices
values(seq_prices_no.nextval,1,3,1,1);

insert into prices
values(seq_prices_no.nextval,1,3,2,2);

insert into prices
values(seq_prices_no.nextval,1,2,1,3);

insert into prices
values(seq_prices_no.nextval,1,2,2,4);

insert into prices
values(seq_prices_no.nextval,1,1,1,5);

insert into prices
values(seq_prices_no.nextval,1,1,2,6);


insert into prices
values(seq_prices_no.nextval,2,3,1,11);

insert into prices
values(seq_prices_no.nextval,2,3,2,22);

insert into prices
values(seq_prices_no.nextval,2,2,1,33);

insert into prices
values(seq_prices_no.nextval,2,2,2,44);

insert into prices
values(seq_prices_no.nextval,2,1,1,55);

insert into prices
values(seq_prices_no.nextval,2,1,2,66);

insert into prices
values(seq_prices_no.nextval,3,3,1,111);

insert into prices
values(seq_prices_no.nextval,3,3,2,222);

insert into prices
values(seq_prices_no.nextval,3,2,1,333);

insert into prices
values(seq_prices_no.nextval,3,2,2,444);

insert into prices
values(seq_prices_no.nextval,3,1,1,555);

insert into prices
values(seq_prices_no.nextval,3,1,2,666);

insert into prices
values(seq_prices_no.nextval,4,3,1,1111);

insert into prices
values(seq_prices_no.nextval,4,3,2,2222);

insert into prices
values(seq_prices_no.nextval,4,2,1,3333);

insert into prices
values(seq_prices_no.nextval,4,2,2,4444);

insert into prices
values(seq_prices_no.nextval,4,1,1,5555);

insert into prices
values(seq_prices_no.nextval,4,1,2,6666);

insert into prices
values(seq_prices_no.nextval,5,3,1,11111);

insert into prices
values(seq_prices_no.nextval,5,3,2,22222);

insert into prices
values(seq_prices_no.nextval,5,2,1,33333);

insert into prices
values(seq_prices_no.nextval,5,2,2,44444);

insert into prices
values(seq_prices_no.nextval,5,1,1,55555);

insert into prices
values(seq_prices_no.nextval,5,1,2,66666);

insert into prices
values(seq_prices_no.nextval,6,3,1,111111);

insert into prices
values(seq_prices_no.nextval,6,3,2,222222);

insert into prices
values(seq_prices_no.nextval,6,2,1,333333);

insert into prices
values(seq_prices_no.nextval,6,2,2,444444);

insert into prices
values(seq_prices_no.nextval,6,1,1,555555);

insert into prices
values(seq_prices_no.nextval,6,1,2,666666);


insert into prices
values(seq_prices_no.nextval,7,3,1,1111111);

insert into prices
values(seq_prices_no.nextval,7,3,2,2222222);

insert into prices
values(seq_prices_no.nextval,7,2,1,3333333);

insert into prices
values(seq_prices_no.nextval,7,2,2,4444444);

insert into prices
values(seq_prices_no.nextval,7,1,1,5555555);

insert into prices
values(seq_prices_no.nextval,7,1,2,6666666);

insert into prices
values(seq_prices_no.nextval,8,3,1,11111111);

insert into prices
values(seq_prices_no.nextval,8,3,2,22222222);

insert into prices
values(seq_prices_no.nextval,8,2,1,33333333);

insert into prices
values(seq_prices_no.nextval,8,2,2,44444444);

insert into prices
values(seq_prices_no.nextval,8,1,1,55555555);

insert into prices
values(seq_prices_no.nextval,8,1,2,66666666);


insert into prices
values(seq_prices_no.nextval,9,3,1,111111111);

insert into prices
values(seq_prices_no.nextval,9,3,2,222222222);

insert into prices
values(seq_prices_no.nextval,9,2,1,333333333);

insert into prices
values(seq_prices_no.nextval,9,2,2,444444444);

insert into prices
values(seq_prices_no.nextval,9,1,1,555555555);

insert into prices
values(seq_prices_no.nextval,9,1,2,666666666);



insert into prices
values(seq_prices_no.nextval,10,3,1,1111111111);

insert into prices
values(seq_prices_no.nextval,10,3,2,2222222222);

insert into prices
values(seq_prices_no.nextval,10,2,1,3333333333);

insert into prices
values(seq_prices_no.nextval,10,2,2,4444444444);

insert into prices
values(seq_prices_no.nextval,10,1,1,5555555555);

insert into prices
values(seq_prices_no.nextval,10,1,2,6666666666);

--요일
insert into week
values(seq_week_no.nextval,1,'월');
insert into week
values(seq_week_no.nextval,1,'화');
insert into week
values(seq_week_no.nextval,1,'수');
insert into week
values(seq_week_no.nextval,1,'목');
insert into week
values(seq_week_no.nextval,1,'금');
insert into week
values(seq_week_no.nextval,2,'토');
insert into week
values(seq_week_no.nextval,2,'일');

insert into week
values(seq_week_no.nextval,3,'월');
insert into week
values(seq_week_no.nextval,3,'화');
insert into week
values(seq_week_no.nextval,3,'수');
insert into week
values(seq_week_no.nextval,3,'목');
insert into week
values(seq_week_no.nextval,3,'금');
insert into week
values(seq_week_no.nextval,4,'토');
insert into week
values(seq_week_no.nextval,4,'일');

insert into week
values(seq_week_no.nextval,5,'월');
insert into week
values(seq_week_no.nextval,5,'화');
insert into week
values(seq_week_no.nextval,5,'수');
insert into week
values(seq_week_no.nextval,5,'목');
insert into week
values(seq_week_no.nextval,5,'금');
insert into week
values(seq_week_no.nextval,6,'토');
insert into week
values(seq_week_no.nextval,6,'일');

insert into week
values(seq_week_no.nextval,7,'월');
insert into week
values(seq_week_no.nextval,7,'화');
insert into week
values(seq_week_no.nextval,7,'수');
insert into week
values(seq_week_no.nextval,7,'목');
insert into week
values(seq_week_no.nextval,7,'금');
insert into week
values(seq_week_no.nextval,8,'토');
insert into week
values(seq_week_no.nextval,8,'일');

insert into week
values(seq_week_no.nextval,9,'월');
insert into week
values(seq_week_no.nextval,9,'화');
insert into week
values(seq_week_no.nextval,9,'수');
insert into week
values(seq_week_no.nextval,9,'목');
insert into week
values(seq_week_no.nextval,9,'금');
insert into week
values(seq_week_no.nextval,10,'토');
insert into week
values(seq_week_no.nextval,10,'일');

insert into week
values(seq_week_no.nextval,11,'월');
insert into week
values(seq_week_no.nextval,11,'화');
insert into week
values(seq_week_no.nextval,11,'수');
insert into week
values(seq_week_no.nextval,11,'목');
insert into week
values(seq_week_no.nextval,11,'금');
insert into week
values(seq_week_no.nextval,12,'토');
insert into week
values(seq_week_no.nextval,12,'일');

insert into week
values(seq_week_no.nextval,13,'월');
insert into week
values(seq_week_no.nextval,13,'화');
insert into week
values(seq_week_no.nextval,13,'수');
insert into week
values(seq_week_no.nextval,13,'목');
insert into week
values(seq_week_no.nextval,13,'금');
insert into week
values(seq_week_no.nextval,14,'토');
insert into week
values(seq_week_no.nextval,14,'일');

insert into week
values(seq_week_no.nextval,15,'월');
insert into week
values(seq_week_no.nextval,15,'화');
insert into week
values(seq_week_no.nextval,15,'수');
insert into week
values(seq_week_no.nextval,15,'목');
insert into week
values(seq_week_no.nextval,15,'금');
insert into week
values(seq_week_no.nextval,16,'토');
insert into week
values(seq_week_no.nextval,16,'일');

insert into week
values(seq_week_no.nextval,17,'월');
insert into week
values(seq_week_no.nextval,17,'화');
insert into week
values(seq_week_no.nextval,17,'수');
insert into week
values(seq_week_no.nextval,17,'목');
insert into week
values(seq_week_no.nextval,17,'금');
insert into week
values(seq_week_no.nextval,18,'토');
insert into week
values(seq_week_no.nextval,18,'일');

insert into week
values(seq_week_no.nextval,19,'월');
insert into week
values(seq_week_no.nextval,19,'화');
insert into week
values(seq_week_no.nextval,19,'수');
insert into week
values(seq_week_no.nextval,19,'목');
insert into week
values(seq_week_no.nextval,19,'금');
insert into week
values(seq_week_no.nextval,20,'토');
insert into week
values(seq_week_no.nextval,20,'일');

insert into week
values(seq_week_no.nextval,21,'월');
insert into week
values(seq_week_no.nextval,21,'화');
insert into week
values(seq_week_no.nextval,21,'수');
insert into week
values(seq_week_no.nextval,21,'목');
insert into week
values(seq_week_no.nextval,21,'금');
insert into week
values(seq_week_no.nextval,22,'토');
insert into week
values(seq_week_no.nextval,22,'일');

insert into week
values(seq_week_no.nextval,23,'월');
insert into week
values(seq_week_no.nextval,23,'화');
insert into week
values(seq_week_no.nextval,23,'수');
insert into week
values(seq_week_no.nextval,23,'목');
insert into week
values(seq_week_no.nextval,23,'금');
insert into week
values(seq_week_no.nextval,24,'토');
insert into week
values(seq_week_no.nextval,24,'일');

insert into week
values(seq_week_no.nextval,25,'월');
insert into week
values(seq_week_no.nextval,25,'화');
insert into week
values(seq_week_no.nextval,25,'수');
insert into week
values(seq_week_no.nextval,25,'목');
insert into week
values(seq_week_no.nextval,25,'금');
insert into week
values(seq_week_no.nextval,26,'토');
insert into week
values(seq_week_no.nextval,26,'일');

insert into week
values(seq_week_no.nextval,27,'월');
insert into week
values(seq_week_no.nextval,27,'화');
insert into week
values(seq_week_no.nextval,27,'수');
insert into week
values(seq_week_no.nextval,27,'목');
insert into week
values(seq_week_no.nextval,27,'금');
insert into week
values(seq_week_no.nextval,28,'토');
insert into week
values(seq_week_no.nextval,28,'일');

insert into week
values(seq_week_no.nextval,29,'월');
insert into week
values(seq_week_no.nextval,29,'화');
insert into week
values(seq_week_no.nextval,29,'수');
insert into week
values(seq_week_no.nextval,29,'목');
insert into week
values(seq_week_no.nextval,29,'금');
insert into week
values(seq_week_no.nextval,30,'토');
insert into week
values(seq_week_no.nextval,30,'일');

insert into week
values(seq_week_no.nextval,31,'월');
insert into week
values(seq_week_no.nextval,31,'화');
insert into week
values(seq_week_no.nextval,31,'수');
insert into week
values(seq_week_no.nextval,31,'목');
insert into week
values(seq_week_no.nextval,31,'금');
insert into week
values(seq_week_no.nextval,32,'토');
insert into week
values(seq_week_no.nextval,32,'일');

insert into week
values(seq_week_no.nextval,33,'월');
insert into week
values(seq_week_no.nextval,33,'화');
insert into week
values(seq_week_no.nextval,33,'수');
insert into week
values(seq_week_no.nextval,33,'목');
insert into week
values(seq_week_no.nextval,33,'금');
insert into week
values(seq_week_no.nextval,34,'토');
insert into week
values(seq_week_no.nextval,34,'일');

insert into week
values(seq_week_no.nextval,35,'월');
insert into week
values(seq_week_no.nextval,35,'화');
insert into week
values(seq_week_no.nextval,35,'수');
insert into week
values(seq_week_no.nextval,35,'목');
insert into week
values(seq_week_no.nextval,35,'금');
insert into week
values(seq_week_no.nextval,36,'토');
insert into week
values(seq_week_no.nextval,36,'일');

insert into week
values(seq_week_no.nextval,37,'월');
insert into week
values(seq_week_no.nextval,37,'화');
insert into week
values(seq_week_no.nextval,37,'수');
insert into week
values(seq_week_no.nextval,37,'목');
insert into week
values(seq_week_no.nextval,37,'금');
insert into week
values(seq_week_no.nextval,38,'토');
insert into week
values(seq_week_no.nextval,38,'일');

insert into week
values(seq_week_no.nextval,39,'월');
insert into week
values(seq_week_no.nextval,39,'화');
insert into week
values(seq_week_no.nextval,39,'수');
insert into week
values(seq_week_no.nextval,39,'목');
insert into week
values(seq_week_no.nextval,39,'금');
insert into week
values(seq_week_no.nextval,40,'토');
insert into week
values(seq_week_no.nextval,40,'일');

insert into week
values(seq_week_no.nextval,41,'월');
insert into week
values(seq_week_no.nextval,41,'화');
insert into week
values(seq_week_no.nextval,41,'수');
insert into week
values(seq_week_no.nextval,41,'목');
insert into week
values(seq_week_no.nextval,41,'금');
insert into week
values(seq_week_no.nextval,42,'토');
insert into week
values(seq_week_no.nextval,42,'일');

insert into week
values(seq_week_no.nextval,43,'월');
insert into week
values(seq_week_no.nextval,43,'화');
insert into week
values(seq_week_no.nextval,43,'수');
insert into week
values(seq_week_no.nextval,43,'목');
insert into week
values(seq_week_no.nextval,43,'금');
insert into week
values(seq_week_no.nextval,44,'토');
insert into week
values(seq_week_no.nextval,44,'일');

insert into week
values(seq_week_no.nextval,45,'월');
insert into week
values(seq_week_no.nextval,45,'화');
insert into week
values(seq_week_no.nextval,45,'수');
insert into week
values(seq_week_no.nextval,45,'목');
insert into week
values(seq_week_no.nextval,46,'금');
insert into week
values(seq_week_no.nextval,46,'토');
insert into week
values(seq_week_no.nextval,46,'일');

insert into week
values(seq_week_no.nextval,47,'월');
insert into week
values(seq_week_no.nextval,47,'화');
insert into week
values(seq_week_no.nextval,47,'수');
insert into week
values(seq_week_no.nextval,47,'목');
insert into week
values(seq_week_no.nextval,48,'금');
insert into week
values(seq_week_no.nextval,48,'토');
insert into week
values(seq_week_no.nextval,48,'일');

insert into week
values(seq_week_no.nextval,49,'월');
insert into week
values(seq_week_no.nextval,49,'화');
insert into week
values(seq_week_no.nextval,49,'수');
insert into week
values(seq_week_no.nextval,49,'목');
insert into week
values(seq_week_no.nextval,50,'금');
insert into week
values(seq_week_no.nextval,50,'토');
insert into week
values(seq_week_no.nextval,50,'일');

insert into week
values(seq_week_no.nextval,51,'월');
insert into week
values(seq_week_no.nextval,51,'화');
insert into week
values(seq_week_no.nextval,51,'수');
insert into week
values(seq_week_no.nextval,51,'목');
insert into week
values(seq_week_no.nextval,52,'금');
insert into week
values(seq_week_no.nextval,52,'토');
insert into week
values(seq_week_no.nextval,52,'일');

insert into week
values(seq_week_no.nextval,53,'월');
insert into week
values(seq_week_no.nextval,53,'화');
insert into week
values(seq_week_no.nextval,53,'수');
insert into week
values(seq_week_no.nextval,53,'목');
insert into week
values(seq_week_no.nextval,54,'금');
insert into week
values(seq_week_no.nextval,54,'토');
insert into week
values(seq_week_no.nextval,54,'일');

insert into week
values(seq_week_no.nextval,55,'월');
insert into week
values(seq_week_no.nextval,55,'화');
insert into week
values(seq_week_no.nextval,55,'수');
insert into week
values(seq_week_no.nextval,55,'목');
insert into week
values(seq_week_no.nextval,56,'금');
insert into week
values(seq_week_no.nextval,56,'토');
insert into week
values(seq_week_no.nextval,56,'일');

insert into week
values(seq_week_no.nextval,57,'월');
insert into week
values(seq_week_no.nextval,57,'화');
insert into week
values(seq_week_no.nextval,57,'수');
insert into week
values(seq_week_no.nextval,57,'목');
insert into week
values(seq_week_no.nextval,58,'금');
insert into week
values(seq_week_no.nextval,58,'토');
insert into week
values(seq_week_no.nextval,58,'일');

insert into week
values(seq_week_no.nextval,59,'월');
insert into week
values(seq_week_no.nextval,59,'화');
insert into week
values(seq_week_no.nextval,59,'수');
insert into week
values(seq_week_no.nextval,59,'목');
insert into week
values(seq_week_no.nextval,60,'금');
insert into week
values(seq_week_no.nextval,60,'토');
insert into week
values(seq_week_no.nextval,60,'일');


--예약
--예약 펜션1
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김민규','01025486545','2022-08-05','2022-08-06',2,2,0,190000,SYSDATE,'CARD','결제완료',3,0,0); --이용완료 1
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김밍키','01088574568','2022-08-26','2022-08-27',2,2,0,210000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 2
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,2,2,'김깨','01023545854','2022-08-26','2022-08-27',2,2,0,210000,SYSDATE,'CARD','결제완료',6,150000,0); -- 양도대기 3
--펜션 2
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,3,1,'김가루','01033548978','2022-08-24','2022-08-25',2,2,0,200000,SYSDATE,'CARD','결제완료',1,100000,0); --양도대기 4
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,3,2,'고기만두','01099856656','2022-08-26','2022-08-28',2,2,0,250000,SYSDATE,'CARD','결제완료',3,0,0); --예약완료 5
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,4,2,'김치만두','010332578598','2022-09-05','2022-09-06',2,2,0,300000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 6
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,4,1,'김민규','01023545854','2022-09-15','2022-09-16',2,2,0,800000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 7

--펜션3
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,5,1,'김민규','01055428786','2022-08-05','2022-08-06',2,2,0,350000,SYSDATE,'CARD','결제완료',3,0,0); --이용완료 8
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,5,1,'김민규','01022578687','2022-08-10','2022-08-12',2,2,0,400000,SYSDATE,'CARD','결제완료',3,0,0); --이용완료 9
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,6,1,'김민규','0103753578','2022-08-25','2022-08-27',2,2,0,450000,SYSDATE,'CARD','결제완료',6,250000,0); --양도대기 10
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,6,1,'김민규','0102537867','2022-09-13','2022-09-15',2,2,0,458000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 11
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,6,1,'김민규','01052738687','2022-09-14','2022-09-15',2,2,0,80000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 12
--펜션4
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,7,1,'김민규','01023012023','2022-08-02','2022-08-06',2,2,0,900000,SYSDATE,'CARD','결제완료',3,0,0); --이용완료 13
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,7,1,'김민규','01012312314','2022-08-23','2022-08-24',2,2,0,1000000,SYSDATE,'CARD','결제완료',2,0,0); --이용중 14
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,8,1,'김민규','0101231234','2022-08-25','2022-08-26',2,2,0,50000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 15
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,8,1,'김민규','01099382737','2022-08-30','2022-08-31',2,2,0,70000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 16
--펜션5
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,9,1,'김민규','01029384757','2022-08-25','2022-08-27',2,2,0,180000,SYSDATE,'CARD','결제완료',6,150000,0); --양도대기 17
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,10,1,'김민규','01055123548','2022-08-29','2022-08-31',2,2,0,10000,SYSDATE,'CARD','결제완료',1,0,0); --예약완료 18


--포인트
insert into points
values(SEQ_POINTS_NO.nextval,1,1900,sysdate);
insert into points
values(SEQ_POINTS_NO.nextval,8,3500,sysdate);
insert into points
values(SEQ_POINTS_NO.nextval,9,4000,sysdate);
insert into points
values(SEQ_POINTS_NO.nextval,13,9000,sysdate);




--리뷰
insert into reviews
values(SEQ_REVIEWS_NO.nextval,1,'잘모르겠어요',1,'','','여기 오지마세요',sysdate);

insert into reviews
values(SEQ_REVIEWS_NO.nextval,8,'너무만족',5,'','','강추',sysdate);

insert into reviews
values(SEQ_REVIEWS_NO.nextval,9,'진짜 실망스럽습니다.',1,'','','최악입니다~~~~~~',sysdate);

insert into reviews
values(SEQ_REVIEWS_NO.nextval,13,'음..',3,'','','그냥 그랬습니다.',sysdate);

--리뷰답글
insert into replys
values(SEQ_REPLYS_NO.nextval,1,'찌웅',sysdate,3); --dddddghkrd g확인
insert into replys
values(SEQ_REPLYS_NO.nextval,2,'짱아',sysdate,3); --dddddghkrd g확인
insert into replys
values(SEQ_REPLYS_NO.nextval,3,'혼난다',sysdate,3); --dddddghkrd g확인
insert into replys
values(SEQ_REPLYS_NO.nextval,4,'짱아가최고',sysdate,4); --dddddghkrd g확인



commit;
