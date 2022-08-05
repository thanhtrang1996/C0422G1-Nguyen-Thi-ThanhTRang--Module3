<%--
  Created by IntelliJ IDEA.
  User: Gia Nguyen Store
  Date: 8/5/2022
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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
<div class="row">
    <div class="col-lg-2">
        <img class="w-100 h-200"
             src="https://cdn.nhanlucnganhluat.vn/uploads/images/051D288B/logo/2018-12/Logo-FURAMA-RESORT.jpg">
    </div>
    <div class="col-lg-6"></div>
    <div class="col-lg-4">
        <div class="row"><b>Nguyễn Thanh Thanh Trang</b></div>
        <div class="row"><b>C0422G1</b></div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
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
                        <li><a class="dropdown-item" href="/furama?action=create"> Action Create</a></li>
                        <li><a class="dropdown-item" href="/furama?action=update">Action Update</a></li>
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
</body>
</html>
