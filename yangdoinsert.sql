--유저 회원가입
insert into users
values(seq_users_no.nextval,'aa','11','01012341234','양도받자','aa@gmail.com','user');

insert into users
values(seq_users_no.nextval,'cc','11','01012341254','양도받자','cc@gmail.com','user');

--호스트 회원가입
insert into users
values(seq_users_no.nextval,'bb','123','01023452345','호스트','bb@gmail.com','host');

--호스트가 업체등록
insert into company
values(SEQ_COMPANY_NO.nextval,2,'0212341234','01023452345','국민','김민규','04680104232123','week',2,'민규컴퍼니','김민규','12312312312','04123','서울대입구역에그옐로우','14층','www.naver.com','asd@gmail.com');

--업태등록
insert into business_type
values(SEQ_BUSINESS_TYPE_NO.nextval,'숙박');

--업체 업태
insert into c_b_type
values(SEQ_CBT_NO.nextval,2,1);

--업종
insert into business_group
values(SEQ_BUSINESS_GROUP_NO.nextval,'펜션');

--업체업종
insert into c_b_group
values(SEQ_CBG_NO.nextval,2,1);

--펜션
insert into pension
values(SEQ_PENSION_NO.nextval,2,'민규네펜션','12345','경기도 광명시 하안로 1번길 1-1','스타벅스옆',123456,'경기도 광명시 하안로','광명역에서 20시간 걸립니다 알아서 오세요','걸어서는 못와요 무조건 차타고','광명사거리역 5분','광명동굴','광동','광','이용규칙이에용','바베큐 20000원','주차장 시간당 200만원','','13:00','10:00',20000,10000,0,10);

--펜션이미지
insert into pension_image
values(SEQ_PENSION_IMG_NO.nextval,1,'이미지경로',1);

--편의시설
insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'수영장');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'족구장');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'카페');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'노래방');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'편의점');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'주차장');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'BBQ');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'주방/식당');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'흡연부스');

insert into s_amenities
values(SEQ_S_AMENITIES_NO.nextval,'수영장');


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

--공용시설 서비스
insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'냉장고');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'에어컨');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'TV');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'와이파이');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'욕실용품');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'세탁기');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'드라이기');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'욕조');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'반려견동반');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'객실내흡연');

insert into s_public
values(SEQ_S_PUBLIC_NO.nextval,'취사가능');

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
values(SEQ_P_PUBLIC_NO.nextval,1,10);

insert into p_public
values(SEQ_P_PUBLIC_NO.nextval,1,11);

--준성수기
insert into sub_peck
values(SEQ_SUB_PECK_NO.nextval,'2022-07-17','2022-08-08');
--펜션 준성수기
insert into p_sub_peck
values(SEQ_P_SUB_PECK_NO.nextval,1,1);
--성수기
insert into peck
values(SEQ_PECK_NO.nextval,'2022-08-09','2022-08-31');

--펜션성수기
insert into p_peck
values(SEQ_PECK_NO.nextval,1,1);

--객실
insert into rooms
values(SEQ_ROOMS_NO.nextval,1,'민조장방',2,4,'아무것도 없어요','오면 방탈출가능','Y');

--객실 이미지
insert into room_image
values(SEQ_ROOM_IMAGE_NO.nextval,1,'이건 몰라');

--객실 요금(비수기)
insert into prices
values(SEQ_PRICES_NO.nextval,1,'비',150000,'Y','Y','Y','Y','Y','N','N');
insert into prices
values(SEQ_PRICES_NO.nextval,1,'비',150000,'N','N','N','N','N','Y','Y');

insert into prices
values(SEQ_PRICES_NO.nextval,1,'준',250000,'Y','Y','Y','Y','Y','N','N');
insert into prices
values(SEQ_PRICES_NO.nextval,1,'준',250000,'N','N','N','N','N','Y','Y');

insert into prices
values(SEQ_PRICES_NO.nextval,1,'성',350000,'Y','Y','Y','Y','Y','N','N');
insert into prices
values(SEQ_PRICES_NO.nextval,1,'성',350000,'N','N','N','N','N','Y','Y');

--예약
--예약완료
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김씨','01085231568','22.08.04 목 15:00','22.08.05 금 11:00',2,2,0,'170,000',SYSDATE,'CARD','결제완료','예약완료','','');

--이용중
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김씨','01085231568','22.08.04 목 15:00','22.08.05 금 11:00',2,2,0,'170,000',SYSDATE,'CARD','결제완료','이용중','','');

--이용완료
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김씨','01085231568','22.08.04 목 15:00','22.08.05 금 11:00',2,2,0,'170,000',SYSDATE,'CARD','결제완료','이용완료','','');

--일반취소
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김씨','01085231568','22.08.04 목 15:00','22.08.05 금 11:00',2,2,0,'170,000',SYSDATE,'CARD','결제완료','일반취소','','');

--양도에의한취소
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김씨','01085231568','22.08.04 목 15:00','22.08.05 금 11:00',2,2,0,'170,000',SYSDATE,'CARD','결제완료','양도에의한취소','','');

--양도대기
insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,1,'김씨','01085231568','22.08.04 목 15:00','22.08.05 금 11:00',2,2,0,'170,000',SYSDATE,'CARD','결제완료','양도대기','140,000','1');

--양도후 예약완료

insert into reservations
values(SEQ_RESERVATIONS_NO.nextval,1,3,'이씨','01012341568','22.08.04 목 15:00','22.08.05 금 11:00',2,1,0,'140,000',SYSDATE,'CARD','결제완료','예약완료','140,000','1');

--포인트
insert into points
values(SEQ_POINTS_NO.nextval,1,'1,700',sysdate);

--리뷰
insert into reviews
values(SEQ_REVIEWS_NO.nextval,1,'잘모르겠어요',1,'','','여기 오지마세요',sysdate);

--리뷰답글
insert into replys
values(SEQ_REPLYS_NO.nextval,1,'어쩌라고요',sysdate,2);
