<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Thư viên để kết nối đúng trong java bằng JSTL-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cloud Shop</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/elegant-icons.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/nice-select.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/jquery-ui.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/slicknav.min.css"/>" type="text/css">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>" type="text/css">
</head>

<body>
 <!-- header -->
 <%@ include file="/views/header.jsp" %>
 <!-- end header -->

	<!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Cloud Shop</h2>
                        <div class="breadcrumb__option">
                            <a href="trang-chu">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                                  
                        <div class="sidebar__item">
                            <div class="latest-product__text">
                                <h4>Sản phẩm mới</h4>
                                <div class="latest-product__slider owl-carousel">
                                
                                    <div class="latest-prdouct__slider__item">
                                        <c:forEach items="${top3SanPhamMoiNhat}" var="sp">
											<a href="thong-tin-san-pham?maSP=${sp.getMaSP()}" class="latest-product__item">
				                                <div class="latest-product__item__pic">
				                                    <img src="${pageContext.request.contextPath}/img/ImageSP/${sp.getHinhAnh()}" alt="">
				                                </div>
				                                <div class="latest-product__item__text">
				                                    <h6>${sp.getTenSP()}</h6>
				                                    <span>${sp.getGiaSP()}</span>
				                                </div>
				                            </a>
		                            	</c:forEach> 
                                    </div>
                                    
                                    <div class="latest-prdouct__slider__item">
                                        <c:forEach items="${top3SanPhamMoiNhat2}" var="sp">
											<a href="thong-tin-san-pham?maSP=${sp.getMaSP()}" class="latest-product__item">
				                                <div class="latest-product__item__pic">
				                                    <img src="${pageContext.request.contextPath}/img/ImageSP/${sp.getHinhAnh()}" alt="">
				                                </div>
				                                <div class="latest-product__item__text">
				                                    <h6>${sp.getTenSP()}</h6>
				                                    <span>${sp.getGiaSP()}</span>
				                                </div>
				                            </a>
		                            	</c:forEach> 
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__item">
                            <div class="hero__categories">
		                        <div class="hero__categories__all">
		                            <i class="fa fa-bars"></i>
		                            <span>Danh sách hàng</span>
		                        </div>
		                        <ul>
		                            <c:forEach items="${allLoaiSanPham}" var="sp">
			                                <li class="${tichXanhMucChon==sp.getMaLoai()? "active":""}"><a href="cua-hang?phanLoai=${sp.getMaLoai()}">${sp.getTenLoai()}</a></li>
			                        </c:forEach>
		                        </ul>
                   			</div>
                        </div>
                         
                    </div>
                </div>
                 
                <div class="col-lg-9 col-md-7">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>Giảm giá</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">     
	                            <c:forEach items="${allSanPhamGiamGia}" var="sp">                       
	                                <div class="col-lg-4">
	                                    <div class="product__discount__item">
	                                        <div class="product__discount__item__pic set-bg"
	                                            data-setbg="${pageContext.request.contextPath}/img/ImageSP/${sp.getHinhAnh()}">
	                                            <div class="product__discount__percent">-${sp.getGiamGia()} %</div>
	                                            <ul class="product__item__pic__hover">
	                                                <!-- <li><a href="#"><i class="fa fa-heart"></i></a></li>-->
	                                                <li><a href="thong-tin-san-pham?maSP=${sp.getMaSP()}"><i class="fa fa-info"></i></a></li> 
	                                                <li><a href="<c:url value="/them-vao-gio?maSP=${sp.getMaSP()}&soLuong=1"></c:url>"><i class="fa fa-shopping-cart"></i></a></li>
	                                            </ul>
	                                        </div>
	                                        <div class="product__discount__item__text">
	                                            <span>${sp.getPhanLoai()}</span>
	                                            <h5><a href="thong-tin-san-pham?maSP=${sp.getMaSP()}">${sp.getTenSP()}</a></h5>
	                                            <div class="product__item__price">${sp.getGiaDaGiam()}<span>${sp.getGiaSP()}</span></div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="filter__item">
                        <div class="row">
                           <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Giá: Thấp đến Cao</option>
                                        <option value="0">Giá: Cao đến Thấp</option>
                                        <option value="0">Tên: A đến Z</option>
                                        <option value="0">Tên: Z đến A</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>Trang ${tag}</span> </h6>
                                </div> 
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                    	<c:forEach items="${sanPhamTheoLoai}" var="sp">
	                        <div class="col-lg-4 col-md-6 col-sm-6">
	                            <div class="product__item">
	                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath}/img/ImageSP/${sp.getHinhAnh()}">
	                                    <ul class="product__item__pic__hover">
	                                        <!-- <li><a href="#"><i class="fa fa-heart"></i></a></li> -->
	                                        <li><a href="thong-tin-san-pham?maSP=${sp.getMaSP()}"><i class="fa fa-info"></i></a></li>
	                                        <li><a href="<c:url value="/them-vao-gio?maSP=${sp.getMaSP()}&soLuong=1"></c:url>"><i class="fa fa-shopping-cart"></i></a></li>
	                                    </ul>
	                                </div>
	                                <div class="product__item__text">
	                                    <h6><a href="thong-tin-san-pham?maSP=${sp.getMaSP()}">${sp.getTenSP()}</a></h6>
	                                    <h5>${sp.getGiaSP()} VND</h5>
	                                </div>
	                            </div>
	                        </div>
                       </c:forEach>
                    </div>
                    <div class="product__pagination">
	                   <%-- <c:if test="phanLoai=all">  --%>
		                    <c:if test="${tag>1}">
		                    	<a href="cua-hang?soTrang=${tag-1}&&phanLoai=all"><i class="fa fa-long-arrow-left"></i></a>
		                    </c:if>
		                    	<c:forEach begin="1" end="${trangCuoi}" var="sp">
		                    		<a class="${tag == sp ? "active" : "" }" href="cua-hang?soTrang=${sp}&&phanLoai=all">${sp}</a>
		                    	</c:forEach>
		                    <c:if test="${tag<trangCuoi}">   
		                        <a href="cua-hang?soTrang=${tag+1}&&phanLoai=all"><i class="fa fa-long-arrow-right"></i></a>
		                    </c:if>
		                <%-- </c:if> --%>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
<!-- footer -->  
  <%@ include file="/views/footer.jsp" %>
<!-- end footer -->  

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>
</html>	