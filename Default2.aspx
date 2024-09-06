<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đá mỹ nghệ chất lượng cao CNCStone | cncstone.vn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
    <!-- Plugin CSS -->
    <link rel="stylesheet" href="/web_css/bootstrap.min.css" />
    <link rel="stylesheet" href="/web_css/ionicons.min.css" />
    <link rel="stylesheet" href="/web_css/font-awesome.min.css" />
    <link href='/web_css/owl.carousel.min.css' rel='stylesheet' type='text/css' />
    <!-- Build Main CSS -->
    <link href="/web_css/base.css" rel="stylesheet" />
    <link href='/web_css/style.css' rel='stylesheet' type='text/css' />
    <link href='/web_css/module.css' rel='stylesheet' type='text/css' />
    <link href='/web_css/responsive.css' rel='stylesheet' type='text/css' />
    <link href="/web_css/styleadd.css" rel="stylesheet" />
    <!-- Header JS -->
    <script src="/web_js/jquery-1.11.min.js"></script>
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-FC5667P1JW"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-FC5667P1JW');
    </script>
</head>
<body>
    <section class="menu-left" id="menu-left">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 ">
                    <section class="awe-section-2">
                        <div class="xs-full">
                            <div class="home-slider owl-carousel" data-lg-items='1' data-md-items='1' data-sm-items='1' data-xs-items="1" data-margin='0' data-dot="true" data-autoplay="true" data-nav="true" data-loop="true">
                                <asp:Repeater ID="rpslide" runat="server">
                                    <ItemTemplate>
                                        <div class="item">
                                            <a href="<%#Eval("link_seo") %>" class="clearfix">
                                                <%-- <img src="<%#Eval("slide_image")%>" style="width: 100%; height: 320px" />--%>
                                                <img src='ThumbnailHandler.ashx?imgPath=<%#Eval("slide_image")%>&width=2400&height=700' alt="CNCStone ">
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            <!-- /.products -->
                        </div>
                    </section>

                </div>
            </div>
        </div>
    </section>
    <section class="awe-section-3 hidden-xs" style="display: none;">
        <div class="section-policy">
            <div class="container">
                <div class="policy-content ">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="policy">
                                <div class="policy-icon">
                                    <img src="/images/policy2.png" alt="TƯ VẤN 24/7" />
                                </div>
                                <div class="policy-text">
                                    <h4>TƯ VẤN 24/7</h4>
                                    <!--<p>Trong bán kính 10km </p>-->
                                </div>
                            </div>
                            <!-- /.policy -->
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="policy">
                                <div class="policy-icon">
                                    <img src="/images/policy4.png" alt="ĐẢM BẢO CHẤT LƯỢNG" />
                                </div>
                                <div class="policy-text">
                                    <h4>ĐẢM BẢO CHẤT LƯỢNG</h4>
                                    <!--<p>Cam kết 100% hoa tươi </p>-->
                                </div>
                            </div>
                            <!-- /.policy -->
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="policy">
                                <div class="policy-icon">
                                    <img src="/images/policy1.png" alt="100% HÀI LÒNG" />
                                </div>
                                <div class="policy-text">
                                    <h4>100% HÀI LÒNG</h4>
                                    <!--<p>Luôn làm hài lòng khách</p>-->
                                </div>
                            </div>
                            <!-- /.policy -->
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="policy">
                                <div class="policy-icon">
                                    <img src="/images/policy3.png" alt="HỖ TRỢ ONLINE 24/24">
                                </div>
                                <div class="policy-text">
                                    <h4>HOTLINE <a href="tel: 0961 933 688" target="_blank">0961 933 688</a></h4>
                                    <!--<p>Gọi (04) 19002265 để được tư vấn</p>-->
                                </div>
                            </div>
                            <!-- /.policy -->
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.policy-wrapper -->
            </div>
        </div>
    </section>
    <section class="awe-section-4" style="<%=divhoasinh%>">
        <div class="section-deal">
            <div class="container">
                <img src="images/san-pham-ban-chay-top-red.jpg" />
                <div id="dvihoasinhnha" runat="server" class="section-content">
                    <div style="background-image: url(images/san-pham-ban-chay-giua-red1.png); background-position: center; background-repeat: no-repeat; background-size: cover;">
                        <div id="sptieubieu" class="products products-view-grid top-right-owl-nav  owl-carousel owl-theme" data-md-items="4" data-sm-items="3" data-xs-items="2" data-margin="-15" data-nav="true">
                            <asp:Repeater ID="rphotdeal" runat="server">
                                <ItemTemplate>
                                    <div class="produc-back">
                                        <div class="product-box" style="height: 26.5rem; width: 90%; margin-left: 15px;">
                                            <div class="product-thumbnail">
                                                <div class="more-sale text1line">
                                                </div>
                                                <%--<img src="images/khung.png" />--%>
                                                <a href="../../<%#Eval("link_seo") %>" title="<%#Eval("product_title") %>" style="height: auto; position: absolute; top: 0; width: 100%;">
                                                    <img src='ThumbnailHandler.ashx?imgPath=<%#Eval("product_image")%>&width=450&height=450' alt="<%#Eval("product_title") %>" style="width: 98%; height: auto;">
                                                </a>
                                            </div>
                                        </div>
                                        <%--<h3 class="product-name product-name__name"><a href="../../<%#Eval("link_seo") %>" title="<%#Eval("product_title") %>"><%#Eval("product_title") %></a></h3>--%>
                                        <%-- <a class="btn btn-cart" href="../../<%#Eval("link_seo") %>">Liên hệ</a>--%>
                                        <div class="product-info a-left" style="display: none;">
                                            <div class="price-box clearfix">
                                                <div class="special-price f-left">
                                                    <span class="price product-price">Liên hệ<%--<%#Eval("product_price","{0:#,0}" ) %>--%></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <img src="images/san-pham-ban-chay-cuoi-red.png" />
                    <!-- /.products -->
                </div>
                <section class="awe-section-3 hidden-xs">
                    <div class="section-policy">
                        <div class="policy-content" style="margin-top: 10px; background: #f5f6f7; height: 247px;">
                            <div class="row">
                                <div class="col-12" style="text-align: center; color: darkred; font-size: 26px; font-weight: bold; padding: 1% 0 0 0;">
                                    LÝ DO BẠN CHỌN CÔNG TY CỔ PHẦN XNK CNC STONE
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <div class="policy">
                                        <div class="policy-text" style="margin-left: 26px; width: 79%; text-align: center; text-align: center;">
                                            <p>
                                                <img src="images/giao-hang.png" style="width: 40%;" />
                                            </p>
                                            <p style="color: darkred; font-size: 14px; font-weight: bold; margin-top: 10px; margin-bottom: 5px;">GIAO HÀNG NHANH CHÓNG</p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px;">Vận chuyển - thi công - lắp đặt</p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px;">Linh hoạt với phương thức giao hàng tận nơi</p>
                                            <!--<p>Trong bán kính 10km </p>-->
                                        </div>
                                    </div>
                                    <!-- /.policy -->
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <div class="policy">
                                        <div class="policy-text" style="margin-left: 26px; width: 79%; text-align: center; text-align: center;">
                                            <p>
                                                <img src="images/chat-luong.png" style="width: 40%;" />
                                            </p>
                                            <p style="color: darkred; font-size: 14px; font-weight: bold; margin-top: 10px; margin-bottom: 5px;">ĐẢM BẢO CHẤT LƯỢNG</p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px;">Chất lượng đúng theo yêu cầu</p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px;">CNC Stone sản xuất trực tiếp, giá thành rẻ nhất, mẫu mã đẹp</p>
                                            <!--<p>Trong bán kính 10km </p>-->
                                        </div>
                                    </div>
                                    <!-- /.policy -->
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <div class="policy">
                                        <div class="policy-text" style="margin-left: 26px; width: 79%; text-align: center; text-align: center;">
                                            <p>
                                                <img src="images/ho-tro.png" style="width: 40%;" />
                                            </p>
                                            <p style="color: darkred; font-size: 14px; font-weight: bold; margin-top: 10px; margin-bottom: 5px;">HỔ TRỢ KHÁCH HÀNG</p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px;">
                                                Bộ phận tư vấn hổ trợ
                                                <br />
                                                khách hàng 24/7
                                            </p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px;">Hotline: <span style="color: red; font-weight: 700;">0961.933.688</span></p>
                                            <!--<p>Trong bán kính 10km </p>-->
                                        </div>
                                    </div>
                                    <!-- /.policy -->
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <div class="policy">
                                        <div class="policy-text" style="margin-left: 26px; width: 79%; text-align: center; text-align: center;">
                                            <p>
                                                <img src="images/niem-tin.png" style="width: 40%;" />
                                            </p>
                                            <p style="color: darkred; font-size: 14px; font-weight: bold; margin-top: 10px; margin-bottom: 5px;">NIỀM TIN KHÁCH HÀNG</p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px;">CNC Stone chuyên sản xuất sản phẩm từ đá tự nhiên</p>
                                            <p style="color: black; font-size: 14px; margin-bottom: 5px; line-height: 20px; width: 107%;">Cam kết tạo ra sản phẩm tốt nhất</p>
                                            <!--<p>Trong bán kính 10km </p>-->
                                        </div>
                                    </div>
                                    <!-- /.policy -->
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.policy-wrapper -->
                    </div>
                    <img src="images/banner-mau1.png" />
                </section>
            </div>
        </div>

    </section>
    <section class="awe-section-62" style="<%=divbanhsinh%>">

        <div class="section-sale">
            <div class="section-title a-center" style="height: 74px;">
                <h2 class="title">SẢN PHẨM NỔI BẬT</h2>
            </div>
            <div class="container">
                <div class="">
                    <asp:Repeater ID="rpParent" runat="server" OnItemDataBound="rpParent_ItemDataBound">
                        <ItemTemplate>
                            <div class="sale-product">
                                <div class="title-block" style="border-bottom: 2px dashed #ff000061; display: flex; margin-bottom: 1%; justify-content: space-between;">
                                    <a href="../../<%#Eval("link_seo") %>" style="font-size: 13px; padding: 0;">
                                        <h2 style="font-size: 19px; padding: 0; width: 100%;">
                                            <%#Eval("productcate_title") %>
                                        </h2>
                                        <a href="../../<%#Eval("link_seo") %>" style="margin-top: 10px;">Xem tất cả</a>
                                    </a>
                                </div>
                                <div id="divbanhsn" runat="server" class="products-view products-view-grid">
                                    <div class="products owl-carousel owl-theme" data-lg-items='5' data-md-items="4" data-sm-items="3" data-xs-items="2" data-margin="0" data-nav="false">
                                        <asp:Repeater ID="rpSanPham" runat="server">
                                            <ItemTemplate>
                                                <div class="product-box">
                                                    <div class="product-thumbnail">
                                                        <a href="../../<%#Eval("link_seo") %>" title="<%#Eval("product_title") %>">
                                                            <img src='ThumbnailHandler.ashx?imgPath=<%#Eval("product_image")%>&width=450&height=450' alt="<%#Eval("product_title") %>">
                                                        </a>
                                                    </div>
                                                    <h3 class="product-name product-name__name"><a href="../../<%#Eval("link_seo") %>" title="<%#Eval("product_title") %>"><%#Eval("product_title") %></a></h3>
                                                    <a class="btn btn-cart" href="../../<%#Eval("link_seo") %>">Liên hệ</a>
                                                    <div class="product-info a-left" style="display: none;">
                                                        <div class="price-box clearfix">

                                                            <div class="special-price f-left">
                                                                <span class="price product-price">Liên hệ<%--<%#Eval("product_price","{0:#,0}") %>₫--%></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>
            </div>
        </div>
    </section>


    <section class="awe-section-8">
        <section class="section-news-testimonial">
            <div class="container">
                <div class="blogs-content">
                    <%--<div class="video-pd container-fluid" style="padding: 0;">
                        <div class="news-sale">
                            <div class="hd-news-1 ">
                                <i class="fa fa-tags "></i>VIDEO
                            </div>
                            <div class="product-video" style="height: 52rem">
                                <div class="video-cnc col-lg-7 col-md-7 col-sm-12 col-xs-12" style="padding: 1% 1% 1% 0; height: 44rem;">
                                    <iframe style="width: 100%; height: -webkit-fill-available;" src="https://www.youtube.com/embed/Np4kVV0H7-c " title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
                                                clipboard-write; encrypted-media; gyroscope; picture-in-picture "
                                        allowfullscreen></iframe>
                                    <a class="title-video col-lg-12 col-md-12" style="font-weight: 400; line-height: 2.4rem; margin-bottom: 0; font-size: 22px; padding: 0;">Tìm hiểu về 7 thủ ấn quan trọng nhất của Phật Giáo | CNC Stone về tượng phật #1</a>
                                    <div class="post-time"><i class="fa fa-clock-o"></i>27 thg 4,2020</div>
                                </div>
                                <div class="video-news-sale pull-right col-lg-5 col-md-5 col-sm-12 col-xs-12" style="overflow-y: scroll; padding: 1% 0 0 0; height: 51rem;">
                                    <div class="news-block-main clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
                                        <div class="img-block col-lg-6 col-md-6 coi-sm-6">
                                            <img src="images/video-02.jpg" />
                                        </div>
                                        <div class="title-block col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                            <a href='#' style="font-weight: 600; font-size: 100%;" title="Thiết bị nhà bếp Malloca ">ĐIÊU KHẮC TƯỢNG PHẬT TẠI NON NƯỚC ĐÀ NẴNG | CƠ SỞ ĐIÊU KHẮC ĐÁ MỸ NGHỆ CNCSTONE</a>
                                            <div class="post-time"><i class="fa fa-clock-o"></i>27 thg 4,2020</div>
                                        </div>
                                    </div>

                                    <div class="news-block-main clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
                                        <div class="img-block col-lg-6 col-md-6 coi-sm-6">
                                            <img src="images/video-02.jpg" />
                                        </div>
                                        <div class="title-block col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                            <a href='#' style="font-weight: 600; font-size: 100%;" title="Thiết bị nhà bếp Malloca ">ĐIÊU KHẮC TƯỢNG PHẬT TẠI NON NƯỚC ĐÀ NẴNG | CƠ SỞ ĐIÊU KHẮC ĐÁ MỸ NGHỆ CNCSTONE</a>
                                            <div class="post-time"><i class="fa fa-clock-o"></i>27 thg 4,2020</div>
                                        </div>
                                    </div>

                                    <div class="news-block-main clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
                                        <div class="img-block col-lg-6 col-md-6 coi-sm-6">
                                            <img src="images/video-02.jpg" />
                                        </div>
                                        <div class="title-block col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                            <a href='#' style="font-weight: 600; font-size: 100%;" title="Thiết bị nhà bếp Malloca ">ĐIÊU KHẮC TƯỢNG PHẬT TẠI NON NƯỚC ĐÀ NẴNG | CƠ SỞ ĐIÊU KHẮC ĐÁ MỸ NGHỆ CNCSTONE</a>
                                            <div class="post-time"><i class="fa fa-clock-o"></i>27 thg 4,2020</div>
                                        </div>
                                    </div>

                                    <div class="news-block-main clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
                                        <div class="img-block col-lg-6 col-md-6 coi-sm-6">
                                            <img src="images/video-02.jpg" />
                                        </div>
                                        <div class="title-block col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                            <a href='#' style="font-weight: 600; font-size: 100%;" title="Thiết bị nhà bếp Malloca ">ĐIÊU KHẮC TƯỢNG PHẬT TẠI NON NƯỚC ĐÀ NẴNG | CƠ SỞ ĐIÊU KHẮC ĐÁ MỸ NGHỆ CNCSTONE</a>
                                            <div class="post-time"><i class="fa fa-clock-o"></i>27 thg 4,2020</div>
                                        </div>
                                    </div>
                                    <div class="news-block-main clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
                                        <div class="img-block col-lg-6 col-md-6 coi-sm-6">
                                            <img src="images/video-02.jpg" />
                                        </div>
                                        <div class="title-block col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                            <a href='#' style="font-weight: 600; font-size: 100%;" title="Thiết bị nhà bếp Malloca ">ĐIÊU KHẮC TƯỢNG PHẬT TẠI NON NƯỚC ĐÀ NẴNG | CƠ SỞ ĐIÊU KHẮC ĐÁ MỸ NGHỆ CNCSTONE</a>
                                            <div class="post-time"><i class="fa fa-clock-o"></i>27 thg 4,2020</div>
                                        </div>
                                    </div>
                                    <div class="news-block-main clearfix col-lg-12 col-md-12 col-sm-12 col-xs-12  ">
                                        <div class="img-block col-lg-6 col-md-6 coi-sm-6">
                                            <img src="images/video-02.jpg" />
                                        </div>
                                        <div class="title-block col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                            <a href='#' style="font-weight: 600; font-size: 100%;" title="Thiết bị nhà bếp Malloca ">ĐIÊU KHẮC TƯỢNG PHẬT TẠI NON NƯỚC ĐÀ NẴNG | CƠ SỞ ĐIÊU KHẮC ĐÁ MỸ NGHỆ CNCSTONE</a>
                                            <div class="post-time"><i class="fa fa-clock-o"></i>27 thg 4,2020</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="heading">
                                <h2 class="hd-news-1">
                                    <i class="fa fa-tags "></i>TIN TỨC
                                </h2>
                            </div>
                            <div class="list-blogs-link">
                                <div class="row">
                                    <asp:Repeater ID="rpTinTuc" runat="server">
                                        <ItemTemplate>
                                            <div class="col-sm-12 col-md-6">
                                                <article class="blog-item form-group">
                                                    <div class="blog-item-thumbnail">
                                                        <a href="/chi-tiet-tin-tuc/<%#cls_ToAscii.ToAscii(Eval("news_title").ToString()) %>-<%#Eval("news_id") %>">
                                                            <picture>
                                                                <source srcset="<%#Eval("news_image") %>" media="(max-width: 480px)"><img src="<%#Eval("news_image") %>" alt="<%#Eval("news_title") %>"></picture>
                                                        </a>
                                                    </div>
                                                    <div class="blog-item-info">
                                                        <h2 class="blog-item-name"><a href="/chi-tiet-tin-tuc/<%#cls_ToAscii.ToAscii(Eval("news_title").ToString()) %>-<%#Eval("news_id") %>"><%#Eval("news_title") %></a></h2>
                                                        <div class="post-time"><i class="fa fa-clock-o"></i><%#Eval("news_createdate", "{0:dd/MM/yyyy}") %></div>
                                                        <p class="blog-item-summary"><%#Eval("news_summary") %></p>
                                                    </div>
                                                </article>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </section>
    <section class="section-products">
        <h2 class="section-products__heading">Các sản phẩm nổi bật của CNC</h2>
        <div class="container">
            <div class="row">
                <div class="col-lg-2dot4 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="products__title">Mộ Đá</h4>
                    <ul class="products__list">
                        <li class="products__item"><a class="products__link" href="../../mo-da/mo-da-granite-137">Mộ Đá Granite</a></li>
                        <li class="products__item"><a class="products__link" href="../../mo-da/mo-da-hoa-cuong-138">Mộ Đá Hoa Cương</a></li>
                        <li class="products__item"><a class="products__link" href="../../mo-da/mo-da-kim-sa-241">Mộ Đá Kim Sa</a></li>
                        <li class="products__item"><a class="products__link" href="../../mo-da/mo-da-cong-giao-242">Mộ Đá Thiên Chúa Giáo</a></li>
                        <li class="products__item"><a class="products__link" href="../../mo-da/mo-doi-141">Mộ Đôi</a></li>
                        <li class="products__item"><a class="products__link" href="../../lang-mo-da/lang-mo-da-114">Lăng Mộ</a></li>

                    </ul>
                </div>
                <div class="col-lg-2dot4 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="products__title">Tượng Phật</h4>
                    <ul class="products__list">
                        <li class="products__item"><a class="products__link" href="../../tuong-da-tuong-phat-da/tuong-phat-a-di-da-210">Tượng Phật A Di Đà</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-da-tuong-phat-da/tuong-phat-ba-quan-am-214">Tượng Phật Quan Âm Bồ Tát</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-da-tuong-phat-da/tuong-phat-thich-ca-213">Tượng Phật Thích Ca Mâu Ni</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-da-tuong-phat-da/tuong-phat-di-lac-211">Tượng Phật Di Lặc</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-phat-da/tuong-phat-thien-thu-thien-nhan-240">Tượng Phật Thiên Thủ Thiên Nhãn</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-phat-da/tuong-pho-hien-bo-tat-238">Tượng Phật Phổ Hiền Bồ Tát</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-phat-da/tuong-van-phu-bo-tat-239">Tượng Phật Văn Thù Bồ Tát</a></li>
                    </ul>
                </div>
                <div class="col-lg-2dot4 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="products__title">Con Giống Đá</h4>
                    <ul class="products__list">
                        <li class="products__item"><a class="products__link" href="../../con-giong-da/rong-va-dai-ban-da-182">Rồng đá</a></li>
                        <li class="products__item"><a class="products__link" href="../../con-giong-da/nghe-da-va-ty-huu-da-178">Nghê Đá và Tỳ Hưu Đá</a></li>
                        <li class="products__item"><a class="products__link" href="../../con-giong-da/su-tu-da-180">Sư Tử Đá</a></li>
                        <li class="products__item"><a class="products__link" href="../../con-giong-da/ngua-da-179">Ngựa đá</a></li>
                        <li class="products__item"><a class="products__link" href="../../con-giong-da/voi-da-181">Voi Đá</a></li>
                        <li class="products__item"><a class="products__link" href="../../con-giong-da/tuong-12-con-giap-183">12 con giáp</a></li>
                    </ul>
                </div>
                <div class="col-lg-2dot4 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="products__title">Tiêu Biểu</h4>
                    <ul class="products__list">
                        <li class="products__item"><a class="products__link" href="../../cong-trinh-kien-truc/dai-phun-nuoc-148">Đài Phun Nước</a></li>
                        <li class="products__item"><a class="products__link" href="../../mo-da-115">Mộ đá</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-phat-da-224">Tượng Phật</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-thien-chua-giao-tuong-da-225">Tượng Công Giáo</a></li>
                        <li class="products__item"><a class="products__link" href="../../con-giong-da-123">Con giống đá</a></li>
                        <li class="products__item"><a class="products__link" href="../../cong-trinh-kien-truc-116">Công Trình Kiến Trúc Đá</a></li>
                        <%--<li class="products__item"><a class="products__link" href="#">Đồ Nội Thất Đá</a></li>--%>
                    </ul>
                </div>
                <div class="col-lg-2dot4 col-md-4 col-sm-4 col-xs-12">
                    <h4 class="products__title">Tượng Thiên Chúa Giáo</h4>
                    <ul class="products__list">
                        <li class="products__item"><a class="products__link" href="../../tuong-da-tuong-phat-da/tuong-chua-202">Tượng Chúa</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-da-tuong-phat-da/tuong-duc-cha-206">Tượng Đức Cha</a></li>
                        <li class="products__item"><a class="products__link" href="../../tuong-da-tuong-phat-da/tuong-duc-me-207">Tượng Đức Mẹ</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </section>
    <script>
        $(document).ready(function () {
            $('ul.menu-dmuc > li > i').on('click', function (event) {
                event.preventDefault();
                $(this).next('.dropdown-menu').toggle(300);
                //$(this).prev().children('.dropdown-menu').toggle(300);
                //$(this).parent().find('ul').first().toggle(300);

                //$(this).parent().siblings().find('ul').hide(200);

                //Hide menu when clicked outside
                $(this).parent().find('ul').mouseleave(function () {
                    var thisUI = $(this);
                    $('html').click(function () {
                        thisUI.hide();
                        $('html').unbind('click');
                    });
                });
            });
        });
    </script>
</body>
</html>
