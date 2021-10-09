<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: quans
  Date: 10/6/21
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>
        Theme Sunmax dành cho website bán nội thất văn phòng
    </title>

    <!-- ================= Page description ================== -->
    <meta name="description"
          content="Sunmax sẽ là một trong những sự lựa chọn hoàn hảo cho các website thương mại kinh doanh các mặt hàng. Giao diện đơn giản nhưng vô cùng tinh tế.">
    <!-- ================= Meta ================== -->
    <meta name="keywords" content="Sunmax , Sunmax theme, theme noi that dep, responsive, Awesome team"/>
    <link rel="canonical" href="https://sunmax.bizwebvietnam.net"/>
    <meta name='revisit-after' content='1 days'/>
    <meta name="robots" content="noodp,index,follow"/>
    <!-- ================= Favicon ================== -->

    <link rel="icon" href="image/favicon.png" type="image/x-icon"/>

    <!-- ================= Google Fonts ================== -->


    <link href="user/css/font-Roboto.css?family=Roboto:400,700" rel="stylesheet" type="text/css"/>


    <link href="user/css/font-YesevaOne.css?family=Yeseva+One&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese"
          rel="stylesheet">
    <!-- Facebook Open Graph meta tags -->


    <meta property="og:type" content="website">
    <meta property="og:title" content="Theme Sunmax dành cho website bán nội thất văn phòng">
    <meta property="og:image" content="image/logo.png">
    <meta property="og:image:secure_url" content="image/logo.png">

    <meta property="og:description"
          content="Sunmax sẽ là một trong những sự lựa chọn hoàn hảo cho các website thương mại kinh doanh các mặt hàng. Giao diện đơn giản nhưng vô cùng tinh tế.">
    <meta property="og:url" content="https://sunmax.bizwebvietnam.net">
    <meta property="og:site_name" content="Sunmax">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="user/css/themify-icons.css">
    <link rel="stylesheet" href="user/css/all.css">
    <link rel="stylesheet" href="user/css/bootstrap.min.css">
    <link rel="stylesheet" href="user/css/font-awesome.min.css">
    <link href="user/css/owl.carousel.min.css" rel="stylesheet" type="text/css"/>

    <!-- Build Main CSS -->
    <link href="user/css/base.scss.css" rel="stylesheet" type="text/css"/>
    <link href="user/css/style.scss.css" rel="stylesheet" type="text/css"/>
    <link href="user/css/module.scss.css" rel="stylesheet" type="text/css"/>
    <link href="user/css/responsive.scss.css" rel="stylesheet" type="text/css"/>

    <!-- Header JS -->
    <script src="user/js/jquery-2.2.3.min.js" type="text/javascript"></script>
    <!-- Bizweb javascript customer -->


    <link href="user/css/iwish.css"/>
    <script>var ProductReviewsAppUtil = ProductReviewsAppUtil || {};</script>
</head>
<body>
<div class="hidden-md hidden-lg opacity_menu"></div>
<div class="opacity_filter"></div>
<!-- Main content -->
<!-- Menu mobile -->
<div id="mySidenav" class="sidenav menu_mobile hidden-md hidden-lg">
    <div class="top_menu_mobile">
		<span class="close_menu">
		</span>
    </div>
    <div class="content_memu_mb">
        <div class="link_list_mobile">

            <ul class="ct-mobile hidden">


            </ul>
            <ul class="ct-mobile">
                <li class="level0 level-top parent level_ico">
                    <a href="/phong-khach">Phòng khách</a>
                    <i class="ti-plus hide_close"></i>
                    <ul class="level0 sub-menu" style="display:none;">
                        <c:forEach items="${categoryList}" var="category">
                            <c:if test="${category.location == 1}">
                                <li class="level1">
                                    <a href="/user?action=category&categoryId=${category.id}"><span>${category.name}</span></a>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </li>
                <li class="level0 level-top parent level_ico">
                    <a href="/phong">bếp</a>
                </li>

                <li class="level0 level-top parent level_ico">
                    <a href="/phong-lam-viec">Phòng làm việc</a>

                </li>

                <li class="level0 level-top parent level_ico">
                    <a href="/chan-ga-dem">Chăn ga đệm</a>

                </li>

                <li class="level0 level-top parent level_ico">
                    <a href="/ngoai-that">Ngoại thất</a>

                </li>

                <li class="level0 level-top parent level_ico">
                    <a href="/do-trang-tri">Đồ trang trí</a>

                </li>

            </ul>
        </div>
    </div>

</div>
<!-- End -->
<header class="header">
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <ul class="list-inline topbar_left hidden-sm hidden-xs">
                        <li>
                            <a class="welcome_text">${settings.title}</a>
                        </li>
                    </ul>
                </div>

                <div class="col-md-6 col-sm-6 d-list col-xs-12 a-right topbar_right">
                    <div class="list-inline a-center f-right">
                        <ul>
                            <c:choose>
                                <c:when test="${customer==null}">
                                    <li>
                                        <a href="/user?action=register" title="Đăng ký" class="account_a">
                                            <span>Đăng ký</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/user?action=login" title="Đăng nhập" class="account_a">
                                            <span>Đăng nhập</span>
                                        </a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <a class="account_a">
                                            <span>${customer.email}</span>

                                        </a>
                                    </li>
                                    <li>
                                        <a href="/user?action=logout" title="Đăng nhập" class="account_a">
                                            <span>Đăng xuất</span>
                                        </a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <div class="mid-header">
        <div class="container">
            <div class="row">
                <div class="content_header">
                    <div class="header-main">
                        <div class="menu-bar-h nav-mobile-button hidden-md hidden-lg">
                            <a href="#nav-mobile"><img src="user/image/i_menubar.png" alt="menu bar"/></a>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="logo">


                                <a href="/user" class="logo-wrapper ">
                                    <img src="user/image/${settings.logo}" alt="logo ">
                                </a>

                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header-left">


                                <div class="header_search header_searchs hidden-xs hidden-sm">
                                    <form class="input-group search-bar" action="/search" method="get" role="search">
                                        <div class="collection-selector">
                                            <div class="search_text">Tất cả</div>
                                            <div id="search_info" class="list_search" style="display: none;">

                                                <div class="search_item" data-coll-id="1451282">Thảm trang trí</div>

                                                <div class="search_item" data-coll-id="1451278">Bàn làm việc</div>

                                                <div class="search_item" data-coll-id="1451277">Bàn trà</div>

                                                <div class="search_item" data-coll-id="1451276">Ghế sofa</div>

                                                <div class="search_item" data-coll-id="1400574">Sản phẩm mới</div>

                                                <div class="search_item" data-coll-id="1393573">Đồ trang trí</div>

                                                <div class="search_item" data-coll-id="1393572">Ngoại thất</div>

                                                <div class="search_item" data-coll-id="1393571">Chăn ga đệm</div>

                                                <div class="search_item" data-coll-id="1393570">Phòng làm việc</div>

                                                <div class="search_item" data-coll-id="1393569">Phòng bếp</div>

                                                <div class="search_item" data-coll-id="1393568">Phòng ngủ</div>

                                                <div class="search_item" data-coll-id="1393567">Phòng khách</div>

                                                <div class="search_item" data-coll-id="1392927">Sản phẩm nổi bật</div>

                                                <div class="liner_search"></div>
                                                <div class="search_item active" data-coll-id="0">Tất cả</div>
                                            </div>
                                        </div>
                                        <input type="search" name="query" value="" placeholder="Bạn muốn tìm gì... "
                                               class="input-group-field st-default-search-input search-text"
                                               autocomplete="off">
                                        <span class="input-group-btn">
			<button class="btn icon-fallback-text">
				<span class="fa fa-search"></span>
			</button>
		</span>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-3">
                            <div class="header-right">
                                <div class="header-acount hidden-lg-down">
                                    <div class="wishlist_header hidden-xs hidden-sm">

                                        <div class="img_hotline"><img alt="Wishlist" src="user/image/icon_phone.png"/>
                                        </div>

                                        <span class="text_hotline">Hotline:</span> <a class="hai01"
                                                                                      href="tel:${settings.hotline}">${settings.hotline}</a>


                                    </div>
                                    <div class="top-cart-contain f-right hidden-xs hidden-sm visible-md visible-lg">
                                        <div class="mini-cart text-xs-center">
                                            <div class="heading-cart">
                                                <a class="bg_cart" href="/user?action=cart" title="Giỏ hàng">
                                                    <img alt="Giỏ hàng" src="user/image/icon_hovercart.png"/>
                                                    <span class="text-giohang hidden-xs">Giỏ hàng</span>
                                                    (<span class="count_item count_item_pr">${size}</span>)

                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="top-cart-contain f-right hidden-lg hidden-md visible-xs visible-sm">
                                        <div class="mini-cart text-xs-center">
                                            <div class="heading-cart-mobi">
                                                <a class="bg_cart" href="/cart" title="Giỏ hàng">
                                                    <img alt="Giỏ hàng" src="user/image/icon_cart_mobi.png"/>
                                                    <span class="count_item count_item_pr"></span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header_search_ col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-lg hidden-md">
                        <div class="search_full">
                            <form action="/search" method="get" class="input-group search-bar" role="search">
                                <input type="hidden" name="type" value="product">

                                <input type="search" name="query" value="" placeholder="Tìm kiếm sản phẩm..."
                                       class="input-group-field">
                                <span class="input-group-btn">
									<button type="submit" class="btn icon-fallback-text">
										<span class="fa fa-search"></span>
									</button>
								</span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-header-nav hidden-xs hidden-sm">
        <div class="container relative">
            <div class="row row-noGutter-2">
                <nav class="header-nav">
                    <ul class="item_big">


                        <li class="nav-item ">
                            <a class="a-img" href=""><span>Phòng khách</span><i
                                    class="fa fa-caret-down"></i></a>
                            <ul class="item_small hidden-sm hidden-xs">
                                <c:forEach items="${categoryList}" var="category">
                                    <c:if test="${category.location == 1}">
                                        <li>
                                            <a href="/user?action=category&categoryId=${category.id}"
                                               title="">${category.name}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>
                        </li>


                        <li class="nav-item ">
                            <a class="a-img" href=""><span>Phòng Ngủ</span><i
                                    class="fa fa-caret-down"></i></a>
                            <ul class="item_small hidden-sm hidden-xs">
                                <c:forEach items="${categoryList}" var="category">
                                    <c:if test="${category.location == 3}">
                                        <li>
                                            <a href="/user?action=category&categoryId=${category.id}"
                                               title="">${category.name}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>
                        </li>


                        <li class="nav-item ">
                            <a class="a-img" href=""><span>Phòng Ăn</span><i
                                    class="fa fa-caret-down"></i></a>
                            <ul class="item_small hidden-sm hidden-xs">
                                <c:forEach items="${categoryList}" var="category">
                                    <c:if test="${category.location == 2}">
                                        <li>
                                            <a href="/user?action=category&categoryId=${category.id}"
                                               title="">${category.name}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>
                        </li>

                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>


<section class="bread-crumb">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">
                    <li class="home">
                        <a itemprop="url" href="/"><span itemprop="title">Trang chủ</span></a>
                        <span><i class="fa">/</i></span>
                    </li>


                    <li><strong><span itemprop="title"> Phòng khách</span></strong></li>


                </ul>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <section class="main_container collection margin-bottom-30 col-md-9 col-lg-9 col-lg-push-3 col-md-push-3">
            <div class="text-sm-left">

                <div class="tt hidden-xs">

                    <h1 class="title-head margin-top-0">${productList.get(1).categoryName}</h1>

                </div>
            </div>
            <div class="category-products products">
                <div class="sortPagiBar">
                    <div class="srt">
                        <div class="wr_sort col-sm-12">
                            <div class="text-sm-right">
                                <div id="sort-by" class="sorby_xxx">
                                    <label class="left hidden-xs">Sắp xếp: </label>
                                    <ul>
                                        <li><span>Thứ tự</span>
                                            <ul>
                                                <li><a href="javascript:;" onclick="sortby('default')">Mặc định</a></li>
                                                <li><a href="javascript:;" onclick="sortby('alpha-asc')">A &rarr; Z</a>
                                                </li>
                                                <li><a href="javascript:;" onclick="sortby('alpha-desc')">Z &rarr; A</a>
                                                </li>
                                                <li><a href="javascript:;" onclick="sortby('price-asc')">Giá tăng
                                                    dần</a></li>
                                                <li><a href="javascript:;" onclick="sortby('price-desc')">Giá giảm
                                                    dần</a></li>
                                                <li><a href="javascript:;" onclick="sortby('created-desc')">Hàng mới
                                                    nhất</a></li>
                                                <li><a href="javascript:;" onclick="sortby('created-asc')">Hàng cũ
                                                    nhất</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <section class="products-view products-view-grid collection_reponsive">
                    <%--                    c:forEach items="{productList}" var="product"--%>

                    <div class="row">
                        <c:forEach items="${productList}" var="product">
                            <div class="col-xs-6 col-sm-4 col-md-4 col-lg-4">
                                <div class="product-col">
                                    <div class="product-box">
                                        <div class="product-thumbnail">

                                            <div class="sale-flash new">Mới</div>
                                            <a class="image_link display_flex"
                                               href="/user?action=detail&id=${product.id}"
                                               title="${product.name}">
                                                <img src="${product.image}" data-lazyload="${product.image}"
                                                     alt="Sofa bộ Italia - Canova">
                                            </a>

                                            <div class="summary_grid hidden-xs hidden-sm hidden-md"
                                                 onclick="window.location.href='/user?action=detail&id=${product.id}';">
                                                <div class="rte description">

                                                    <p>${product.subDescription}</p>

                                                </div>
                                            </div>
                                            <div class="product-action-grid clearfix">
                                                <form action="/cart/add" method="post" class="variants form-nut-grid"
                                                      data-id="product-actions-9387021" enctype="multipart/form-data">
                                                    <div>

                                                        <input class="hidden" type="hidden" name="variantId"
                                                               value="14992946"/>

                                                        <a title="Xem nhanh" href="/user?action=detail&id=${product.id}"
                                                           data-handle="/user?action=detail&id=${product.id}"
                                                           class="button_wh_40 btn_view right-to ">
                                                            Xem nhanh
                                                        </a>

                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="product-info effect a-left">

                                            <div class="info_hhh">
                                                <h3 class="product-name product-name-hover">
                                                    <a href="/user?action=detail&id=${product.id}"
                                                       title="${product.name}">
                                                            ${product.name}
                                                    </a>
                                                </h3>
                                                <div class="price-box clearfix">
                                                    <span class="price product-price"><fmt:formatNumber type="number"
                                                                                                        maxFractionDigits="0"
                                                                                                        value="${product.priceSell}"/></span>
                                                    <span class="price product-price-old"><fmt:formatNumber
                                                            type="number" maxFractionDigits="0"
                                                            value="${product.price}"/></span>
                                                    <span class="sale-off">- <fmt:formatNumber type="number"
                                                                                               maxFractionDigits="0"
                                                                                               value="${(1-(product.priceSell / product.price))*100}"/>%</span>
                                                </div>
                                                <div class="reviews-product-grid">
                                                    <div class="bizweb-product-reviews-badge" data-id="9387021"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="text-right">
                        <nav class="clearfix">
                            <ul class="pagination clearfix">
                                <li class="page-i   tem disabled"><a class="page-link" href="#">«</a></li>
                                <li class="active page-item disabled"><a class="page-link" href="javascript:;">1</a>
                                </li>
                                <li class="page-item"><a class="page-link" onclick="doSearch(2)"
                                                         href="javascript:;">2</a></li>
                                <li class="page-item hidden-xs"><a class="page-link" onclick="doSearch(2)"
                                                                   href="javascript:;"><i class="fa fa-angle-right"
                                                                                          aria-hidden="true"></i></a>
                                </li>
                            </ul>
                        </nav>
                        <script>
                            var cuPage = 1
                        </script>
                    </div>
                </section>
            </div>
        </section>

        <div class="col-lg-3 col-md-3 margin-bottom-50 col-lg-pull-9 col-md-pull-9">
            <aside class="dqdt-sidebar sidebar left-content">
                <script src="user/js/search_filter.js" type="text/javascript"></script>

                <aside class="aside-item sidebar-category collection-category">
                    <div class="aside-title">
                        <h2 class="title-head margin-top-0"><span>Danh mục sản phẩm</span></h2>
                    </div>
                    <div class="aside-content">
                        <nav class="nav-category navbar-toggleable-md">
                            <ul class="nav navbar-pills">
                                <li class="nav-item lv1">
                                    <a href="/phong-khach" class="nav-link">Phòng khách <span
                                            class="count_x"></span></a>
                                    <i class="fa fa-angle-right"></i>
                                    <ul class="dropdown-menu">
                                        <c:forEach items="${categoryList}" var="category">
                                            <c:if test="${category.location == 1}">
                                                <li class="nav-item lv2">
                                                    <a class="nav-link"
                                                       href="/user?action=category&categoryId=${category.id}">
                                                            ${category.name}
                                                    </a>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>
                                <li class="nav-item lv1">
                                    <a href="/phong-khach" class="nav-link">Phòng ngủ <span
                                            class="count_x"></span></a>
                                    <i class="fa fa-angle-right"></i>
                                    <ul class="dropdown-menu">
                                        <c:forEach items="${categoryList}" var="category">
                                            <c:if test="${category.location == 3 }">
                                                <li class="nav-item lv2">
                                                    <a class="nav-link"
                                                       href="/user?action=category&categoryId=${category.id}">
                                                            ${category.name}
                                                    </a>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>

                                <li class="nav-item lv1">
                                    <a href="/phong-khach" class="nav-link">Phòng bếp <span
                                            class="count_x"></span></a>
                                    <i class="fa fa-angle-right"></i>
                                    <ul class="dropdown-menu">
                                        <c:forEach items="${categoryList}" var="category">
                                            <c:if test="${category.location == 2}">
                                                <li class="nav-item lv2">
                                                    <a class="nav-link"
                                                       href="/user?action=category&categoryId=${category.id}">${category.name}</a>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </li>

                            </ul>
                        </nav>
                    </div>
                </aside>


                <script src="user/js/search_filter.js" type="text/javascript"></script>
                <div class="aside-filter">
                    <div class="filter-container">
                        <div class="filter-container__selected-filter" style="display: none;">
                            <div class="filter-container__selected-filter-header clearfix">
                                <span class="filter-container__selected-filter-header-title"><i
                                        class="fa fa-arrow-left hidden-sm-up"></i> Bạn chọn</span>
                                <a href="javascript:void(0)" onclick="clearAllFiltered()"
                                   class="filter-container__clear-all">Bỏ hết <i class="fa fa-angle-right"></i></a>
                            </div>
                            <div class="filter-container__selected-filter-list">
                                <ul></ul>
                            </div>
                        </div>
                    </div>


                    <aside class="aside-item filter-price">
                        <div class="aside-title">
                            <h2 class="title-head title_price margin-top-0"><span>Giá sản phẩm</span></h2>
                        </div>
                        <div class="aside-content filter-group">
                            <ul>


                                <li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-duoi-100-000d">
							<input type="checkbox" id="filter-duoi-100-000d" onchange="toggleFilter(this);"
                                   data-group="Khoảng giá" data-field="price_min" data-text="Dưới 100.000đ"
                                   value="(<100000)" data-operator="OR">
							<i class="fa"></i>
							Giá dưới 100.000đ
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-100-000d-200-000d">
							<input type="checkbox" id="filter-100-000d-200-000d" onchange="toggleFilter(this)"
                                   data-group="Khoảng giá" data-field="price_min" data-text="100.000đ - 200.000đ"
                                   value="(>=100000 AND <200000)" data-operator="OR">
							<i class="fa"></i>
							100.000đ - 200.000đ
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-200-000d-300-000d">
							<input type="checkbox" id="filter-200-000d-300-000d" onchange="toggleFilter(this)"
                                   data-group="Khoảng giá" data-field="price_min" data-text="200.000đ - 300.000đ"
                                   value="(>=200000 AND <300000)" data-operator="OR">
							<i class="fa"></i>
							200.000đ - 300.000đ
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-300-000d-500-000d">
							<input type="checkbox" id="filter-300-000d-500-000d" onchange="toggleFilter(this)"
                                   data-group="Khoảng giá" data-field="price_min" data-text="300.000đ - 500.000đ"
                                   value="(>=300000 AND <500000)" data-operator="OR">
							<i class="fa"></i>
							300.000đ - 500.000đ
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-500-000d-1-000-000d">
							<input type="checkbox" id="filter-500-000d-1-000-000d" onchange="toggleFilter(this)"
                                   data-group="Khoảng giá" data-field="price_min" data-text="500.000đ - 1.000.000đ"
                                   value="(>500000 AND <1000000)" data-operator="OR">
							<i class="fa"></i>
							500.000đ - 1.000.000đ
						</label>
					</span>
                                </li>
                                <li class="filter-item filter-item--check-box filter-item--green">
					<span>
						<label for="filter-tren1-000-000d">
							<input type="checkbox" id="filter-tren1-000-000d" onchange="toggleFilter(this)"
                                   data-group="Khoảng giá" data-field="price_min" data-text="Trên 1.000.000đ"
                                   value="(>1000000)" data-operator="OR">
							<i class="fa"></i>
							Giá trên 1.000.000đ
						</label>
					</span>
                                </li>


                            </ul>
                        </div>
                    </aside>


                    <aside class="aside-item filter-vendor">
                        <div class="aside-title">
                            <h2 class="title-head title_price margin-top-0"><span>Thương hiệu</span></h2>
                        </div>
                        <div class="aside-content filter-group aside_vendor">
                            <ul>


                                <li class="filter-item filter-item--check-box filter-item--green ">
					<span>
						<label class="label_relative" for="filter-canifa">
							<input type="checkbox" id="filter-canifa" onchange="toggleFilter(this)" data-group="Hãng"
                                   data-field="vendor" data-text="Canifa" value="(Canifa)" data-operator="OR">
							<i class="fa"></i>
							<span class="filter_tt">Canifa</span>
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green ">
					<span>
						<label class="label_relative" for="filter-canova">
							<input type="checkbox" id="filter-canova" onchange="toggleFilter(this)" data-group="Hãng"
                                   data-field="vendor" data-text="Canova" value="(Canova)" data-operator="OR">
							<i class="fa"></i>
							<span class="filter_tt">Canova</span>
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green ">
					<span>
						<label class="label_relative" for="filter-hatatu">
							<input type="checkbox" id="filter-hatatu" onchange="toggleFilter(this)" data-group="Hãng"
                                   data-field="vendor" data-text="Hatatu" value="(Hatatu)" data-operator="OR">
							<i class="fa"></i>
							<span class="filter_tt">Hatatu</span>
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green ">
					<span>
						<label class="label_relative" for="filter-hugo">
							<input type="checkbox" id="filter-hugo" onchange="toggleFilter(this)" data-group="Hãng"
                                   data-field="vendor" data-text="Hugo" value="(Hugo)" data-operator="OR">
							<i class="fa"></i>
							<span class="filter_tt">Hugo</span>
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green ">
					<span>
						<label class="label_relative" for="filter-kimana">
							<input type="checkbox" id="filter-kimana" onchange="toggleFilter(this)" data-group="Hãng"
                                   data-field="vendor" data-text="Kimana" value="(Kimana)" data-operator="OR">
							<i class="fa"></i>
							<span class="filter_tt">Kimana</span>
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green ">
					<span>
						<label class="label_relative" for="filter-mleh">
							<input type="checkbox" id="filter-mleh" onchange="toggleFilter(this)" data-group="Hãng"
                                   data-field="vendor" data-text="MLEH" value="(MLEH)" data-operator="OR">
							<i class="fa"></i>
							<span class="filter_tt">MLEH</span>
						</label>
					</span>
                                </li>


                                <li class="filter-item filter-item--check-box filter-item--green ">
					<span>
						<label class="label_relative" for="filter-victory">
							<input type="checkbox" id="filter-victory" onchange="toggleFilter(this)" data-group="Hãng"
                                   data-field="vendor" data-text="Victory" value="(Victory)" data-operator="OR">
							<i class="fa"></i>
							<span class="filter_tt">Victory</span>
						</label>
					</span>
                                </li>


                            </ul>
                        </div>
                    </aside>


                </div>


                <div class="banner-right margin-top-20">
                    <a href="#" title="Banner sidebar">
                        <img src="/user/image/banner_sidebar.png" class="img-responsive" alt="Banner sidebar">
                    </a>
                </div>


            </aside>

        </div>

        <div id="open-filters" class="open-filters hidden-lg hidden-md">
            <i class="fa fa-align-right"></i>
            <span>Lọc</span>
        </div>
    </div>
</div>

<script>
    var colName = "Phòng khách";

    var colId = 1393567;

    var selectedViewData = "data";
</script>


<link href="user/css/bpr-products-module.css" rel="stylesheet" type="text/css"/>
<div class="bizweb-product-reviews-module"></div>

<footer class="footer">
    <div class="site-footer">
        <div class="top-footer mid-footer">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                        <div class="widget-ft">
                            <h4 class="title-menu">
                                <a role="button">
                                    Hệ thống siêu thị nội thất
                                </a>
                            </h4>
                            <div>
                                <div class="list-menu">
                                    <div class="widget-ft wg-logo">


                                        <div class="item">
                                            <h4 class="title-menu4 icon_none_first">
                                                <a>Sunmax Nguyễn Chí Thanh</a>
                                            </h4>
                                            <ul class="contact contact_x">
                                                <li>
													<span class="txt_content_child">
														<span>Địa chỉ:</span>
														143 Nguyễn Chí Thanh, Ba Đình, Hà Nội, Hà Nội
													</span>
                                                </li>

                                                <li class="sdt">
                                                    <span> Hotline:</span>
                                                    <a href="tel:01659329688">01659329688</a>
                                                </li>

                                            </ul>
                                        </div>


                                        <div class="item">
                                            <h4 class="title-menu4 icon_none_first">
                                                <a>Sunmax Đội Cấn</a>
                                            </h4>
                                            <ul class="contact contact_x">
                                                <li>
													<span class="txt_content_child">
														<span>Địa chỉ:</span>
														280 Đội Cấn, Ba Đình, Hà Nội, Hà Nội
													</span>
                                                </li>

                                                <li class="sdt">
                                                    <span> Hotline:</span>
                                                    <a href="tel:0968686868">0968686868</a>
                                                </li>

                                            </ul>
                                        </div>


                                        <div class="item">
                                            <h4 class="title-menu4 icon_none_first">
                                                <a>Sunmax Thái Hà</a>
                                            </h4>
                                            <ul class="contact contact_x">
                                                <li>
													<span class="txt_content_child">
														<span>Địa chỉ:</span>
														90 Thái Hà, Đống Đa, Hà Nội, Hà Nội
													</span>
                                                </li>

                                                <li class="sdt">
                                                    <span> Hotline:</span>
                                                    <a href="tel:0123456789">0123456789</a>
                                                </li>

                                            </ul>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-2 col-lg-2">
                        <div class="widget-ft">
                            <h4 class="title-menu">
                                <a role="button" class="collapsed" data-toggle="collapse" aria-expanded="false"
                                   data-target="#collapseListMenu02" aria-controls="collapseListMenu02">
                                    Chính sách <i class="fa fa-plus" aria-hidden="true"></i>
                                </a>
                            </h4>
                            <div class="collapse" id="collapseListMenu02">
                                <ul class="list-menu list-menu22">

                                    <li class="li_menu"><a href="/phong-khach">Phòng khách</a></li>

                                    <li class="li_menu"><a href="/phong-bep">Phòng bếp</a></li>

                                    <li class="li_menu"><a href="/phong-lam-viec">Phòng làm việc</a></li>

                                    <li class="li_menu"><a href="/chan-ga-dem">Chăn ga đệm</a></li>

                                    <li class="li_menu"><a href="/ngoai-that">Ngoại thất</a></li>

                                    <li class="li_menu"><a href="/do-trang-tri">Đồ trang trí</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="widget-ft">
                            <h4 class="title-menu">
                                <a role="button">
                                    Chấp nhận thanh toán
                                </a>
                            </h4>
                            <div class="footer-widget">
                                <div class="payment">
                                    <img src="/user/image/payment.png" alt="Payment"/>
                                </div>
                            </div>
                            <h4 class="title-menu tittle_time">
                                <a role="button">
                                    Hotline tư vấn trực tiếp
                                </a>
                            </h4>
                            <div class="time_work">
                                <ul class="list-menu">
                                    <li class="li_menu li_menu_xxx">
                                        <a class="rc yeloww" href="tel:01659329688">01659329688</a>

                                        <span class="hour_">( Phục vụ 24/24, cả thứ 7 & CN )</span>

                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                        <div class="widget-ft last-child">
                            <h4 class="title-menu title-db">
                                <a role="button">
                                    Facebook fanpage
                                </a>
                            </h4>
                            <div>

                                <div class="facebook">
                                    <div id="fb-root"></div>
                                    <script>(function (d, s, id) {
                                        var js, fjs = d.getElementsByTagName(s)[0];
                                        if (d.getElementById(id)) return;
                                        js = d.createElement(s);
                                        js.id = id;
                                        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=631942543575730";
                                        fjs.parentNode.insertBefore(js, fjs);
                                    }(document, 'script', 'facebook-jssdk'));
                                    </script>
                                    <div class="fb-page" data-href="${settings.pageFacebook}"
                                         data-tabs="timeline" data-height="150" data-small-header="true"
                                         data-adapt-container-width="true" data-hide-cover="false"
                                         data-show-facepile="true">
                                        <div class="fb-xfbml-parse-ignore">
                                            <blockquote cite="${settings.pageFacebook}">
                                                <a href="${settings.pageFacebook}">Facebook</a>
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright clearfix">
            <div class="container">
                <div class="inner clearfix">
                    <div class="row tablet">
                        <div id="copyright" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 a-center fot_copyright">
                            <span class="wsp"><span class="mobile">© Bản quyền thuộc về <b>Jupitter Team</b></span><span
                                    class="hidden-xs"> | </span><span class="mobile">Cung cấp bởi <a
                                    href="https://www.sapo.vn/?utm_campaign=cpn:site_khach_hang-plm:footer&utm_source=site_khach_hang&utm_medium=referral&utm_content=fm:text_link-km:-sz:&utm_term=&campaign=site_khach_hang/"
                                    rel="nofollow" title="Sapo" target="_blank">Sapo</a></span></span>

                        </div>
                    </div>
                </div>

                <a href="#" id="back-to-top" class="backtop" title="Lên đầu trang"><i class="fa fa-angle-up"
                                                                                      aria-hidden="true"></i></a>


            </div>
        </div>
    </div>
</footer>
<script src='user/js/api_js.js?sensor=false' type='text/javascript'></script>
<script src="user/js/jquery.gmap.min.js" type="text/javascript"></script>
<!-- Bizweb javascript -->
<script src="user/js/option-selectors.js" type="text/javascript"></script>
<script src="user/js/api.jquery.js?4" type="text/javascript"></script>
<!-- Plugin JS -->
<script src="user/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="user/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<!-- Add to cart -->


<div class="addcart-popup product-popup awe-popup">
    <div class="overlay no-background"></div>
    <div class="content">
        <div class="row row-noGutter">
            <div class="col-xl-6 col-xs-12">
                <div class="btn btn-full btn-primary a-left popup-title"><i class="fa fa-check"></i>Thêm vào giỏ hàng
                    thành công
                </div>
                <a href="javascript:void(0)" class="close-window close-popup"><i class="fa fa-close"></i></a>
                <div class="info clearfix">
                    <div class="product-image margin-top-5">
                        <img alt="popup" src="image/logo.png" style="max-width:150px; height:auto"/>
                    </div>
                    <div class="product-info">
                        <p class="product-name"></p>
                        <p class="quantity color-main"><span>Số lượng: </span></p>
                        <p class="total-money color-main"><span>Tổng tiền: </span></p>

                    </div>
                    <div class="actions">
                        <button class="btn  btn-primary  margin-top-5 btn-continue">Tiếp tục mua hàng</button>
                        <button class="btn btn-gray margin-top-5" onclick="window.location='/cart'">Kiểm tra giỏ hàng
                        </button>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>
<div class="error-popup awe-popup">
    <div class="overlay no-background"></div>
    <div class="popup-inner content">
        <div class="error-message"></div>
    </div>
</div>
<
<div id="popup-cart" class="modal fade" role="dialog">
    <div id="popup-cart-desktop" class="clearfix">
        <div class="title-popup-cart">
            <img src="image/icon-check.png" alt="Sunmax"/> <span class="your_product">Bạn đã thêm <span
                class="cart_name_style">[ <span
                class="cart-popup-name"></span>]</span> vào giỏ hàng thành công ! </span>
        </div>
        <div class="wrap_popup">
            <div class="title-quantity-popup">
                <span class="cart_status" onclick="window.location.href='/cart';">Giỏ hàng của bạn có <span
                        class="cart-popup-count"></span> sản phẩm </span> <i class="fa fa-caret-right"
                                                                             aria-hidden="true"></i>
            </div>
            <div class="content-popup-cart">
                <div class="thead-popup">
                    <div style="width: 53%;" class="text-left">Sản phẩm</div>
                    <div style="width: 15%;" class="text-center">Đơn giá</div>
                    <div style="width: 15%;" class="text-center">Số lượng</div>
                    <div style="width: 17%;" class="text-center">Thành tiền</div>
                </div>
                <div class="tbody-popup scrollbar-dynamic">
                </div>
                <div class="tfoot-popup">
                    <div class="tfoot-popup-1 a-right clearfix">
                        <span class="total-p popup-total">Tổng tiền thanh toán: <span class="total-price"></span></span>
                    </div>
                    <div class="tfoot-popup-2 clearfix">
                        <a class="button checkout_ btn-proceed-checkout" title="Thực hiện thanh toán"
                           href="/checkout"><span>Thực hiện thanh toán</span></a>
                        <a class="button buy_ btn-continus-h" title="Tiếp tục mua hàng"
                           onclick="$('#popup-cart').modal('hide');"><span><span>Tiếp tục mua hàng</span></span></a>

                    </div>
                </div>
            </div>
            <a title="Close" class="quickview-close close-window" href="javascript:;"
               onclick="$('#popup-cart').modal('hide');"><i class="fa  fa-close"></i></a>
        </div>
    </div>

</div>
<div id="myModal" class="modal fade" role="dialog">
</div>
<script src="user/js/cs.script.js" type="text/javascript"></script>
<script src="user/js/double_tab_togo.js" type="text/javascript"></script>
<script src="user/js/appear.js" type="text/javascript"></script>
<!-- Quick view -->


<div id="quick-view-product" class="quickview-product" style="display:none;">
    <div class="quickview-overlay fancybox-overlay fancybox-overlay-fixed"></div>
    <div class="quick-view-product"></div>
    <div id="quickview-modal" style="display:none;">
        <div class="block-quickview primary_block row">

            <div class="product-left-column col-xs-12 col-sm-5 col-md-5 col-lg-5">
                <div class="clearfix image-block">
					<span class="view_full_size">
						<a class="img-product" title="" href="#">
							<img id="product-featured-image-quickview"
                                 class="img-responsive product-featured-image-quickview" src="image/logo.png"
                                 alt="quickview"/>
						</a>
					</span>
                    <div class="loading-imgquickview" style="display:none;"></div>
                </div>
                <div class="more-view-wrapper clearfix">
                    <div class="thumbs_quickview" id="thumbs_list_quickview">
                        <ul class="product-photo-thumbs quickview-more-views-owlslider" id="thumblist_quickview"></ul>
                    </div>
                </div>
            </div>
            <div class="product-center-column product-info product-item col-xs-5 col-sm-7 col-md-7 col-lg-7">
                <div class="head-qv">
                    <h3 class="qwp-name">abc</h3>
                    <div class="vend-qv">
                        <div class="left_vend">
                            <span class="vendor_"></span>
                            <span class="line">|</span>
                            Tình trạng: <span class="soluong"></span>
                        </div>

                    </div>
                </div>
                <div class="quickview-info">

                    <div class="reviews_qv">
                        <div class="bizweb-product-reviews-badge" data-id=""></div>
                    </div>

                    <span class="prices">
						<span class="price"></span>
						<del class="old-price"></del>
					</span>
                </div>
                <div class="product-description">
                    <div class="rte text2line">

                    </div>

                </div>

                <form action="/cart/add" method="post" enctype="multipart/form-data"
                      class="quick_option variants form-ajaxtocart">
					<span class="price-product-detail hidden" style="opacity: 0;">
						<span class=""></span>
					</span>
                    <select name='variantId' class="hidden" style="display:none"></select>
                    <div class="clearfix"></div>
                    <div class="quantity_wanted_p">
                        <div class="input_qty_qv">
                            <a class="btn_num num_1 button button_qty"
                               onClick="var result = document.getElementById('quantity-detail'); var qtyqv = result.value; if( !isNaN( qtyqv ) &amp;&amp; qtyqv &gt; 1 ) result.value--;return false;">-</a>
                            <input type="text" id="quantity-detail" name="quantity" value="1"
                                   onkeypress='validate(event)' onkeyup="valid(this,'numbers')"
                                   onblur="valid(this,'numbers')" class="form-control prd_quantity">
                            <a class="btn_num num_2 button button_qty"
                               onClick="var result = document.getElementById('quantity-detail'); var qtyqv = result.value; if( !isNaN( qtyqv )) result.value++;return false;">+</a>
                        </div>

                        <div class="button_actions">
                            <button type="submit"
                                    class="btn btn-lg fix_add_to_cart  btn-cart button_cart_buy_enable add_to_cart btn_buy add_to_cart_detail ajax_addtocart"
                                    title="Cho vào giỏ hàng">
                                <span class="btn-content">Thêm vào giỏ hàng</span>
                            </button>
                        </div>
                    </div>
                    <div class="total-price" style="display:none">
                        <label>Tổng cộng: </label>
                        <span></span>
                    </div>

                </form>


            </div>

        </div>
        <a title="Close" class="quickview-close close-window" href="javascript:;"><i class="fa   fa-times"></i></a>
    </div>
</div>

//
<script src="user/js/quickview.js" type="text/javascript"></script>


//
<div class='jas-sale-pop flex pf middle-xs'></div>


//
<script type="text/javascript">
    $(document).ready(function ($) {
        if ($(window).width() >= 768) {
            SalesPop();
        }
    });

    function fisherYates(myArray) {
        var i = myArray.length, j, temp;
        if (i === 0) return false;
        while (--i) {
            j = Math.floor(Math.random() * (i + 1));
            temp = myArray[i];
            myArray[i] = myArray[j];
            myArray[j] = temp;
        }
    }

    var collection = new Array();


    collection[0] = "<a href='/ban-giam-doc-hoa-phat-ntp1890t1' class='jas-sale-pop-img mr__20'>"
        + "<img src='user/Product_image/r8abaa3a825074cd8855f02e71efc8.jpg' alt='Bàn giám đốc hòa phát NTP1890T1'/>"
        + "</a>"
        + "<div class='jas-sale-pop-content'>"
        //+                                    "<h4 class='fs__12 fwm mg__0'>Sản phẩm</h4>"
        + "<h3 class='mg__0 mt__5 mb__5 fs__18'>"
        + "<a href='/ban-giam-doc-hoa-phat-ntp1890t1' title='Bàn giám đốc hòa phát NTP1890T1'>Bàn giám đốc hòa phát NTP1890T1</a>"
        + "</h3>"
        + "<span class='fs__12 jas-sale-pop-timeago'></span>"
        + "</div>"
        + "<span class='pe-7s-close pa fs__20'></span>";


    collection[1] = "<a href='/ba-n-la-m-vie-c-van-pho-ng-ho-a-pha-t-sv204hl' class='jas-sale-pop-img mr__20'>"
        + "<img src='user/Product_image/8e72d1df4f29e47c29efe8d482d473.jpg' alt='Bàn làm việc hòa phát SV204HL'/>"
        + "</a>"
        + "<div class='jas-sale-pop-content'>"
        //+                                    "<h4 class='fs__12 fwm mg__0'>Sản phẩm</h4>"
        + "<h3 class='mg__0 mt__5 mb__5 fs__18'>"
        + "<a href='/ba-n-la-m-vie-c-van-pho-ng-ho-a-pha-t-sv204hl' title='Bàn làm việc hòa phát SV204HL'>Bàn làm việc hòa phát SV204HL</a>"
        + "</h3>"
        + "<span class='fs__12 jas-sale-pop-timeago'></span>"
        + "</div>"
        + "<span class='pe-7s-close pa fs__20'></span>";


    collection[2] = "<a href='/bo-vo-chan-ra-goi-cotton-nhung-cao-cap' class='jas-sale-pop-img mr__20'>"
        + "<img src='user/Product_image/6e4b0d120477740078be37a750e7ba.jpg' alt='Bộ vỏ chăn ra gối cotton nhung'/>"
        + "</a>"
        + "<div class='jas-sale-pop-content'>"
        //+                                    "<h4 class='fs__12 fwm mg__0'>Sản phẩm</h4>"
        + "<h3 class='mg__0 mt__5 mb__5 fs__18'>"
        + "<a href='/bo-vo-chan-ra-goi-cotton-nhung-cao-cap' title='Bộ vỏ chăn ra gối cotton nhung'>Bộ vỏ chăn ra gối cotton nhung</a>"
        + "</h3>"
        + "<span class='fs__12 jas-sale-pop-timeago'></span>"
        + "</div>"
        + "<span class='pe-7s-close pa fs__20'></span>";


    collection[3] = "<a href='/bo-vo-chan-ga-goi-cotton-ai-cap-hoa-xanh' class='jas-sale-pop-img mr__20'>"
        + "<img src='user/Product_image/59a01658825c7468aa6a84dac7dc80.jpg' alt='Bộ vỏ chăn ga gối cotton Ai Cập'/>"
        + "</a>"
        + "<div class='jas-sale-pop-content'>"
        //+                                    "<h4 class='fs__12 fwm mg__0'>Sản phẩm</h4>"
        + "<h3 class='mg__0 mt__5 mb__5 fs__18'>"
        + "<a href='/bo-vo-chan-ga-goi-cotton-ai-cap-hoa-xanh' title='Bộ vỏ chăn ga gối cotton Ai Cập'>Bộ vỏ chăn ga gối cotton Ai Cập</a>"
        + "</h3>"
        + "<span class='fs__12 jas-sale-pop-timeago'></span>"
        + "</div>"
        + "<span class='pe-7s-close pa fs__20'></span>";


    collection[4] = "<a href='/bo-chan-ga-goi-cotton-ai-cap-ma-cat17' class='jas-sale-pop-img mr__20'>"
        + "<img src='user/Product_image/12684e083a683e4fc1afd8c1688b16.jpg' alt='Bộ chăn ga gối cotton Ai Cập'/>"
        + "</a>"
        + "<div class='jas-sale-pop-content'>"
        //+                                    "<h4 class='fs__12 fwm mg__0'>Sản phẩm</h4>"
        + "<h3 class='mg__0 mt__5 mb__5 fs__18'>"
        + "<a href='/bo-chan-ga-goi-cotton-ai-cap-ma-cat17' title='Bộ chăn ga gối cotton Ai Cập'>Bộ chăn ga gối cotton Ai Cập</a>"
        + "</h3>"
        + "<span class='fs__12 jas-sale-pop-timeago'></span>"
        + "</div>"
        + "<span class='pe-7s-close pa fs__20'></span>";


    fisherYates(collection);

    function SalesPop() {
        if ($('.jas-sale-pop').length < 0)
            return;
        setInterval(function () {
            $('.jas-sale-pop').fadeIn(function () {
                $(this).removeClass('slideUp');
            }).delay(10000).fadeIn(function () {
                var randomTime = ['1 phút', '2 phút', '3 phút', '4 phút', '5 phút', '6 phút', '7 phút', '8 phút', '9 phút', '10 phút', '11 phút', '12 phút', '13 phút', '14 phút', '15 phút', '16 phút', '17 phút', '18 phút', '19 phút', '20 phút', '21 phút', '22 phút', '23 phút', '24 phút', '25 phút', '26 phút', '27 phút', '28 phút', '29 phút', '30 phút', '31 phút', '32 phút', '33 phút', '34 phút', '35 phút', '36 phút', '37 phút', '38 phút', '39 phút', '40 phút', '41 phút', '42 phút', '43 phút', '44 phút', '45 phút', '46 phút', '47 phút', '48 phút', '49 phút', '50 phút', '51 phút', '52 phút', '53 phút', '54 phút', '55 phút', '56 phút', '57 phút', '58 phút', '59 phút',],
                    randomTimeAgo = Math.floor(Math.random() * randomTime.length),
                    randomProduct = Math.floor(Math.random() * collection.length),
                    randomShowP = collection[randomProduct],
                    TimeAgo = randomTime[randomTimeAgo];
                $(".jas-sale-pop").html(randomShowP);
                $('.jas-sale-pop-timeago').text('Một khách hàng vừa đặt mua cách đây ' + TimeAgo);
                $(this).addClass('slideUp');
                $('.pe-7s-close').on('click', function () {
                    $('.jas-sale-pop').remove();
                });
            }).delay(6000);
        }, 6000);
    }
</script>


<!-- Main JS -->
<script src="user/js/main.js" type="text/javascript"></script>


<!-- Product detail JS,CSS -->


</body>
</html>
