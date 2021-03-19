<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>어른허브</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css">
    
    
</head>
<body>
	<!-- 상단 공동 메뉴 -->
	<header>
		<%@ include file="../template/header.jsp" %>
	</header>
	    <!-- ##### Hero Area Start ##### -->

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> 게시판 적기</a>
                        <span>카테고리 적기</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!--content 시작 -->
    <section class="product-shop spad">
        <div class="container">
            <div class="row">
            
            	<!-- 사이드바 -->
                <div class="col-lg-3 col-md-6 col-sm-8 order-2 order-lg-1 produts-sidebar-filter">
                    
                    <div class="filter-widget">
                        <h4 class="fw-title">게시판 적기 ex.고객 센터</h4>
                        <ul class="filter-catagories" style="font-weight: bold;">
                            <li><a href="#" >카테고리 적기 ex.공지사항</a></li>
                            <li><a href="#" >자주 묻는 질문</a></li>
                            <li><a href="#" >질문 게시판</a></li>
                        </ul>
                    </div>

                   
                </div>
                
                <!-- 내용 -->
                <div class="col-lg-9 order-1 order-lg-2">
                 	<h3>상품인포</h3>
					<c:set var="vo" value="${vo }"></c:set>
					
					<table border="1">
						<tr>
							<th>${vo.shopName }</th>
							<th>${vo.shopCost }</th>
							<th>별점 ${vo.shopStar }</th>
						</tr>
						<tr>
							<td Colspan="3">${vo.shopContent}</td>
						</tr>
					</table>
					
					<br>
					<input type="button" value="리뷰쓰기" onclick="#">
					
					<!-- 리뷰 쓰기 -->
					<div id="reWrite">
						<c:set var="shopNum" value="${num }"></c:set>

						<form action="reInsert.do" id="refrm" method="POST">
							<input type="hidden" name="shopNum" value="${shopNum }">
							<table>
								<tr>
									<td>
										별점: <select name="reStar">
											<option value="1">1점</option>
											<option value="2">2점</option>
											<option value="3">3점</option>
											<option value="4">4점</option>
											<option value="5">5점</option>
										</select>
									</td>
									<tr>
										<td>작성자: <input type="text" name="reWriter"></td>
									</tr>
									<tr>
										<td><textarea name="reContent" rows="7" cols="40"></textarea></td>
									</tr>
							</table>
							<input type="submit">
						</form>
					</div>
					
					<div id="review">
						<table border="1">
							<tr>
								<th>작성자</th>
								<th>리뷰</th>
								<th>작성일</th>
								<th>별점</th>
							</tr>
							<c:forEach var="review" items="${review }">
								<tr>
									<td>${review.reWriter }</td>
									<td>${review.reContent }</td>
									<td><fmt:formatDate value="${review.reDate}" pattern="yyyy-MM-dd"/>
									<td>${review.reStar }</td>
								</tr>	
							</c:forEach>
						</table>
                  </div>
                </div>
                
                
            </div>
        </div>
    </section>
    <!-- content 끝 -->


	<!-- 하단 -->
	<footer>
		<%@ include file="../template/footer.jsp" %>
	</footer>
	
	        <!-- Js Plugins -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.zoom.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.dd.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</body>
</html>