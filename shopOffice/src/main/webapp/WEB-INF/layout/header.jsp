<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.shop.table.vo.ManageInfoVO" %>
<%
		ManageInfoVO uservo = (ManageInfoVO)session.getAttribute("MallUser");
		System.out.println("=====================");
		if(uservo!=null){
		System.out.println(uservo.getManageId());
		}
 %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

   <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1 class="text-light"><a href="index.html">MY SHOP</a></h1>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="active" href="/dash/main">홈</a></li>
          <li><a href="/inquiry/list">고객센터</a></li>
          <li><a href="/goods/main">상품</a></li>
          <li><a href="/goods/list">상품조회</a></li>
          <li><a href="/manage/list">관리자조회</a></li>
          <li><a href="/order/list">주문조회</a></li>
          <li><a href="/supplier/main">거래처조회</a></li>
          <li><a href="/supplier/order">거래처발주</a></li>
          <%
          if(uservo== null || uservo.getManageId()==null){
          %>
          <li><a href="/login">로그인</a></li>
          <%}else{ %>
          <li><a href="#" onclick="logout();">로그아웃</a></li>
          <%} %>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
  
  <form id='logoutform'>
  </form>
  
  <script>
  	function logout(){
  		call_server(logoutform, "/logout", chkLogOut);
  	}
  	
  	function chkLogOut(){
  		location.href='/';
  	}
  </script>