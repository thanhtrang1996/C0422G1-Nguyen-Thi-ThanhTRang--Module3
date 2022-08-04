<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/4/2022
  Time: 9:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Furama Resort</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../style/bootstrap/normalize.css">
    <link rel="stylesheet" href="../style/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="../style/datatables/css/dataTables.bootstrap4.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"/>
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0"/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <img src="https://danangjob.vn/Upload/Member/201710214444.png" width="759.6" height="340">
        </div>
        <div class="col-lg-6">
            <img src="https://chieutour.com.vn/upload/images/tour-du-lich-tu-tay-ninh-di-da-nang-bang-may-bay.jpg"
                 width="759.6" height="340">
        </div>
    </div>
    <div class="container-fluid d-block ">
        <div class="row ">
            <nav class="navbar navbar-expand-lg navbar-light bg-light ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Home</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="navbar-brand active " aria-current="page" href="#">Employee</a>
                            </li>
                            <li class="nav-item">
                                <a class="navbar-brand" href="#">Customer</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="navbar-brand dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false">
                                    Service
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="/furama">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="navbar-brand disabled" href="#" tabindex="-1"
                                   aria-disabled="true">Contract</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-success" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div class="row col-lg-12">
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3"
                        aria-label="Slide 4"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4"
                        aria-label="Slide 5"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="https://dulichvietnam.com.vn/vnt_upload/news/05_2020/4b72bd6a00b6fc4290e0f930b5d0733f_1.jpg"
                         class="d-block w-100 " height="600" alt="Not found">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="text-light">Beautiful and clean beach</h1>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="https://img.blogdulich.vn/2014/10/Furama-Resort-2-1280x720.jpg" class="d-block w-100"
                         height="600" alt="Not found">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="text-light">Wonderful view</h1>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="3000">
                    <img src="https://dambritourist.vn/kham-pha-thanh-pho-bien-da-nang-voi-furama-resort-danang/imager_146043.jpg"
                         class="d-block w-100 " height="600" alt="Not Found">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="text-light">Furama sort</h1>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="4000">
                    <img src="https://ticovilla.com/wp-content/uploads/2021/08/resort-da-nang-13.jpg"
                         class="d-block w-100 " height="600" alt="Not Found">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="text-light">Cozy and beautiful space</h1>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="5000">
                    <img src="http://datphongresort.com/wp-content/uploads/2020/10/he-thong-nha-hang-furama.jpg"
                         class="d-block w-100 " height="600" alt="Not Found">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 class="text-light">Delicious and beautiful food</h1>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="row p-5">
        <div class="col-lg-4 ">
            <h3 class="text-warning p-5">KHU NGHỈ DƯỠNG ĐẲNG CẤP THẾ GIỚI, FURAMA ĐÀ NẴNG, NỔI TIẾNG LÀ KHU NGHỈ DƯỠNG
                ẨM
                THỰC TẠI VIỆT NAM.</h3>
        </div>
        <div class="col-lg-4">
            <iframe width="400" height="300" src="https://www.youtube.com/embed/IjlT_4mvd-c" title="The Furama Resort
       DaNang - Couples Corporate" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
        </div>
        <div class="col-lg-4"><span class="text-primary">Hướng ra bãi biển Đà Nẵng trải dài cát trắng, Furama Resort Đà Nẵng là cửa ngõ đến với 3 di sản văn hoá thế giới:
          Hội An (20 phút), Mỹ Sơn (90 phút) và Huế (2 tiếng. 196 phòng hạng sang cùng với 70 căn biệt thự từ hai đến bốn phòng ngủ có hồ bơi riêng
          đều được trang trí trang nhã, theo phong cách thiết kế truyền thống của Việt Nam và kiến trúc thuộc địa của Pháp, biến Furama thành khu
          nghỉ dưỡng danh giá nhất tại Việt Nam – vinh dự được đón tiếp nhiều người nổi tiếng, giới hoàng gia, chính khách, ngôi sao điện ảnh và các
          nhà lãnh đạo kinh doanh quốc tế.</span></div>
    </div>
    <div class="row">
        <div class="col-lg-12"><h2 class="text-warning text-center">CÁC LOẠI PHÒNG</h2></div>
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4 text-primary"> <span>Khu nghỉ dưỡng có 196 phòng được thiết
            kế theo phong cách truyền thống Việt Nam kết hợp với phong cách Pháp, 2 tòa nhà
            4 tầng có hướng nhìn ra biển, nhìn ra hồ bơi trong xanh và những khu vườn nhiệt
            đới xanh tươi mát. Ngoài ra, khu nghỉ dưỡng Furama còn cung cấp các liệu pháp spa,
            phòng xông hơi ướt, phòng xông hơi khô, dịch vụ mát-xa cạnh hồ bơi, các dịch vụ
            thể thao dưới nước và các lớp tập yoga và Thái Cực Quyền trên bãi biển.</span></div>
            <div class="col-lg-4"></div>
        </div>
    </div>
    <div class="row">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
                        aria-label="Slide 4"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="4"
                        aria-label="Slide 5"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="http://reviewvilla.vn/wp-content/uploads/2022/03/Khach-san-Ha-Noi-1.jpg"
                         class="d-block w-100" height="300" alt="Not found">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-primary text-shadow">PHÒNG STUDIO HƯỚNG VƯỜN</h3>
                        <b class="text-primary text-shadow">Diện Tích Phòng 41.4 m<sup>
                            <smail>2</smail>
                        </sup></b>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://hotelmart.vn/uploads/2019/09/25/1271_i5d8b3014da5a5.jpg" class="d-block w-100"
                         height="300" alt="Not found">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-primary text-shadow">PHÒNG SUITE HƯỚNG BIỂN</h3>
                        <b class="text-primary text-shadow">Diện Tích Phòng 45.4 m<sup>
                            <smail>2</smail>
                        </sup></b>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://kientrucroman.com.vn/wp-content/uploads/phong-ngu-hoang-gia-dep-logo.jpg"
                         class="d-block w-100" height="300" alt="Not found">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-danger">PHÒNG VIP HƯỚNG VƯỜN</h3>
                        <b class="text-danger">Diện Tích Phòng 55.4 m<sup>
                            <smail>2</smail>
                        </sup></b>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://static.tuoitre.vn/tto/i/s626/2014/04/24/NY0OS9eR.jpg" class="d-block w-100"
                         height="300" alt="Not found">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-danger">PHÒNG VIP HƯỚNG BIỂN</h3>
                        <b class="text-danger">Diện Tích Phòng 50.4 m<sup>
                            <smail>2</smail>
                        </sup></b>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://media.discordapp.net/attachments/1003230073119318028/1004766517864435894/imager_13_141153_700.jpeg"
                         class="d-block w-100" height="300" alt="Not found">
                    <div class="carousel-caption d-none d-md-block">
                        <h3 class="text-light">PHÒNG LOVE HƯỚNG VƯỜN</h3>
                        <b class="text-light">Diện Tích Phòng 40.4 m<sup>
                            <smail>2</smail>
                        </sup></b>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <div class="row p-5 " style=" background-color: #a8c4e3">
            <div class="col-lg-4">
                <div class="row"><h2 class="text-danger">Hướng Dẫn Di Chuyển</h2></div>
                <div class="row"> <span>Khu nghỉ dưỡng Furama là cơ sở hàng đầu để khám phá một
                trong những điểm đến hấp dẫn nhất Châu Á. Chỉ cách Đà Nẵng một quãng lái xe
                ngắn là bốn Di sản Văn hóa Thế giới được UNESCO công nhận:</span></div>
                <div class="row"><h4 class="text-primary">Địa Điểm</h4></div>
                <div class="row"><b>1. Cố đô Huế 2 tiếng</b>
                    <hr>
                </div>
                <div class="row"><b> 2. Phố cổ Hội An 30 phút</b>
                    <hr>
                </div>
                <div class="row"><b> 3. Thánh địa Mỹ Sơn 90 phút</b>
                    <hr>
                </div>
                <div class="row"><b>4. Động Phong Nha 3 tiếng</b></div>
            </div>
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-lg-6 text-danger fw-bold">
                        <div class="row  col-lg-12 d-flex justify-content-center">* Giá Công Bố</div><br>
                         <div class="row col-lg-12 d-flex justify-content-center" >* Lifestyle Blog</div><br>
                         <div class="row col-lg-12 d-flex justify-content-center">* Tuyển Dụng</div><br>
                         <div class="row col-lg-12 d-flex justify-content-center">* Liên Hệ</div><br>
                    </div>
                    <div class="col-lg-6">
                        <div class="row text-primary" ><b class="material-symbols-outlined">location_on</b><b>--%>
                            103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam
                            7.0 km từ Sân bay Quốc tế Đà Nẵng</b></div>
                        <div class="row text-primary"><span class="material-symbols-outlined">phone_in_talk</span>
                            <b> 84-236-3847 333/888</b>
                            <span class="material-symbols-outlined">mail</span><b> reservation@furamavietnam.com</b></div>

                    </div>
                </div>
            </div>
                <div class="row p-5">
                    <div class="col-lg-3"><img src="https://www.furama.com/factsheet/images/logo.jpg" height="100" width="150"></div>
                    <div class="col-lg-3"><img src="https://cdn.homedy.com/store/img/2017/04/04/logo-condotel-furama-da-nang-636269027915589636.jpg"height="100" width="150" ></div>
                    <div class="col-lg-3"><img src="http://lanatour.vn/wp-content/uploads/2017/08/Furama-Resort.jpg"height="100" width="150" ></div>
                    <div class="col-lg-3"><b>© 2018 Furama Resort Danang.</b> </div>
            </div>
    </div>

</div>
<script src="../style/jquery/jquery-3.5.1.min.js"></script>
<script src="../style/datatables/js/jquery.dataTables.min.js"></script>
<script src="../style/datatables/js/dataTables.bootstrap4.min.js"></script>
<script src="../style/bootstrap/bootstrap.bundle.min.js"></script>

</body>
</html>
