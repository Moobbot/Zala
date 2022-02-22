<?php
include('./reuse/header.php');
include('./reuse/load_and_up.php');
?>

<?php include('./reuse/header_body.php'); ?>

<main>
    <div class="main-area">
        <!--* slider Area Start-->
        <section class="slider-area hero-image-1 hero-overly">
            <div class="slider-active">
                <!-- Single Slider -->
                <div class="single-slider slider-height-1 d-flex align-items-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-7 col-lg-9 col-md-10 col-sm-9">
                                <div class="hero-text">
                                    <h1>
                                        ZALA - NỀN TẢNG KẾT NỐI GIẶT LÀ
                                    </h1>
                                    <p>
                                        Hãy để chúng tôi trở thành một phần trong cuộc sống của bạn
                                    </p>
                                    <a href="#service" class="btn hero-btn">Khám phá ngay!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- slider Area End-->
        <!--* Utilities Area Start -->
        <?php include('./utilities.php') ?>
        <!--* Utilities Area end -->
        <!--* Offer-services Start  -->
        <section class="offer-services pb-5 mb-5" id="service">
            <div class="container">
                <div class="row justify-content-center g-0">
                    <div class="col section-tittle text-center mb-5">
                        <span class="element">Dịch vụ</span>
                        <h2>Dịch vụ chúng tôi cung cấp</h2>
                    </div>
                    <div class="row g-0 justify-content-center">
                        <div class="col-lg-6 col-md-9 g-0">
                            <div class="single-offers">
                                <img src="assets/img/gallery/offers1.png" alt="" class="w-100">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-9 g-0">
                            <div class="single-offers">
                                <img src="assets/img/gallery/offers2.png" alt="" class="w-100">
                                <div class="offers-caption text-center">
                                    <div class="cat-icon">
                                        <img src="assets/img/icon/offers-icon1.png" alt="">
                                    </div>
                                    <div class="cat-cap">
                                        <h5>Gói Basic 1</h5>
                                        <p class="mx-md-0 mx-3">Độc thân "quyến rũ", lo gì chuyện "giặt giũ". Quần áo mặc xong treo đó, để ZALA lo.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-9 g-0">
                            <div class="single-offers">
                                <img src="assets/img/gallery/offers2.png" alt="" class="w-100">
                                <div class="offers-caption text-center">
                                    <div class="cat-icon">
                                        <img src="assets/img/icon/offers-icon1.png" alt="">
                                    </div>
                                    <div class="cat-cap">
                                        <h5>Gói Basic 2</h5>
                                        <p class="mx-md-0 mx-3">Phụ nữ ơi, hãy dành thời gian để yêu thương bản thân mình. Cả ngày mệt mỏi, về nhà bừa bộn, quần áo chất đống nhìn muốn buông xuôi. Hãy để ZALA giúp các mẹ 1 tay chăm sóc gia đình.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-9 g-0">
                            <div class="single-offers">
                                <img src="assets/img/gallery/offers1.png" alt="" class="w-100">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-9 g-0">
                            <div class="single-offers">
                                <img src="assets/img/gallery/offers4.png" alt="" class="w-100">
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-9 g-0">
                            <div class="single-offers">
                                <img src="assets/img/gallery/offers2.png" alt="" class="w-100">
                                <div class="offers-caption text-center">
                                    <div class="cat-icon">
                                        <img src="assets/img/icon/offers-icon1.png" alt="">
                                    </div>
                                    <div class="cat-cap">
                                        <h5>Gói Premium</h5>
                                        <p class="mx-md-0 mx-3">Spa kỹ hơn cho các "cục cưng". Nhà không có gì ngoài quần áo "hịn" nhưng lại không biết cách chăm sóc, ZALA kiếm chuyên gia cho.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Offer-services End  -->
        <!--* Want To work -->
        <section class="wantToWork-area">
            <div class="container">
                <div class="wants-wrapper" data-background="assets/img/gallery/section_bg01.png">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-xl-8 col-lg-9 col-md-7">
                            <div class="wantToWork-caption">
                                <h2>Gọi cho chúng tôi để biết thêm chi tiết</h2>
                                <p>Chúng tôi giao hàng đến những nơi phức tạp nhất trong thành phố</p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-5">
                            <a class="btn wantToWork-btn"><img src="assets/img/icon/call2.png" alt=""> (+84) 975729750
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Want To work End -->
        <!--* Testimonials_start -->
        <!-- <section></section> -->
        <!-- Testimonials_end -->
        <!--* Company achievement Start -->
        <!-- <section></section> -->
        <!-- Company achievement End -->
        <!--* About Area  -->
        <section class="map-area">
            <div class="map-wapper">
                <img src="assets/img/gallery/ZALA.png" alt="" class="w-100">
            </div>
        </section>
        <!-- About Area End -->
    </div>
</main>
<!-- Footer Start-->
<?php include('./reuse/footer_body.php'); ?>

<!-- Footer End-->

<?php include('./reuse/footer.php'); ?>