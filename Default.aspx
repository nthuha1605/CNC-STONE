<%@ Page Title="" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/WebsiteMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
    <title>Đá mỹ nghệ chất lượng cao CNCStone | cncstone.vn</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="keywords" content="<%=seo_keyword %>" />
    <meta name="description" content="<%=seo_des %>" />
    <link rel="canonical" href="<%=seo_link %>" />
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="<%=seo_title %>" />
    <meta property="og:description" content="<%=seo_des %>" />
    <meta property="og:url" content="<%=seo_link %>" />
    <meta property="og:site_name" content="cncstone" />
    <link rel="alternate" href="<%=seo_link %>" hreflang="vi-vn" />
    <meta name="ROBOTS" content="index, follow" />
    <!-- /SEO google plus -->
    <meta itemprop="name" content="<%=seo_title %>" />
    <meta itemprop="description" content="<%=seo_des %>" />
    <meta itemprop="image" content="<%=seo_image %>" />
    <!-- /SEO google plus -->
    <link href="css/fix-page.css" rel="stylesheet" />
    <link href="css/hover.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
    <section class="menu-left" id="menu-left">
        <div class="container-fluid">
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
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibelowtop" runat="Server">
    <section class="awe-section-3 hidden-xs" style="display: none;">
        <div class="section-policy">
            <div class="container-fluid">
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
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <div class="banner">
        <div class="block-floating">
            <div class="section-title a-center" style="height: 74px;">
                <h2 class="title">NHỮNG SẢN PHẨM ƯU TIÊN TRONG NĂM 2024</h2>
            </div>
            <div class="row">
                <div class="col-md-3 col-sm-3 col-xs-6 grow">
                    <a href="../cong-trinh-kien-truc/dai-phun-nuoc-148">
                        <img src="images/fist-dpn.png" />
                    </a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6 grow">
                    <a href="../tuong-thien-chua-giao-tuong-da-225">
                        <img src="images/fist-ttc.png" />
                    </a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6 grow">
                    <a href="../bang-hieu-da/bang-hieu-da-245">
                        <img src="images/fist-bhd.png" />
                    </a>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6 grow">
                    <a href="../do-tho-bang-da/den-da-den-long-da-den-tho-da-199">
                        <img src="images/fist-dd.png" />
                    </a>
                </div>
            </div>
        </div>
        <%--<img src="images/san-pham-uu-tien.png" />--%>
        <img style="margin-top: 1%" src="images/banner-mau1.png" />
    </div>
    <section class="awe-section-62" style="<%=divbanhsinh%>">

        <div class="section-sale">
            <div class="section-title a-center" style="height: 74px;">
                <h2 class="title">SẢN PHẨM NỔI BẬT</h2>
            </div>
            <div class="container-fluid">
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
                                    <div class="products owl-carousel owl-theme" data-lg-items='5' data-md-items="4" data-sm-items="4" data-xs-items="3" data-margin="0" data-nav="false">
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
    <section class="awe-section-4" style="<%=divhoasinh%>">
        <div class="section-deal">
            <div class="container-fluid">
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
    </section>

    <section class="awe-section-8">
        <section class="section-news-testimonial">
            <div class="container-fluid">
                <div class="blogs-content">
                    <%--<div class="video-pd container-fluid-fluid" style="padding: 0;">
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
                </div>
            </div>
        </section>
    </section>
    <section class="section-products">
    </section>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
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
</asp:Content>

