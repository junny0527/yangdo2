<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="header" class="clearfix recommend_header">
    <div id="section" class="clearfix">
      <h1><a href="">양도어때</a></h1>
      <ul class="clearfix"> 
         <li><a href="">내주변</a></li>
         <li><a href="">예약내역</a></li>
         <li><a href="">더보기</a></li>
         <li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
      </ul>
      <button id="btn_search"type="button" class="btn btn_srch srch_open" style="right: 396px;">
				<img id="search-icon" src="${pageContext.request.contextPath}/assets/image/includes/ico_srch_2.png">
	  </button>
    </div>
   
   <%-- <div id="section">
   	  <h1><a href="">양도어때</a></h1>
      <ul class="clearfix"> 
         <li><a href="">검색</a></li>
         <li><a href="">내주변</a></li>
         <li><a href="">예약내역</a></li>
         <li><a href="">더보기</a></li>
         <li><a href=""><img src="${pageContext.request.contextPath}/assets/image/includes/icon.png"></a></li>
      </ul>
	</div> --%>
</div>