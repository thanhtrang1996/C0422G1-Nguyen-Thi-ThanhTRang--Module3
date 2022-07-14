drop database if exists xuat_nhap_khau;

create database xuat_nhap_khau;

use xuat_nhap_khau;


CREATE TABLE nha_cung_cap (
    ma_cung_cap INT PRIMARY KEY,
    ten_nha_cung_cap VARCHAR(50),
    dia_chi VARCHAR(50)
);

CREATE TABLE so_dien_thoai (
    so_dien_thoai VARCHAR(20) primary key,
    ma_cung_cap int,
    foreign key (ma_cung_cap) references nha_cung_cap(ma_cung_cap)

);

CREATE TABLE don_dat_hang (
    so_don_hang INT PRIMARY KEY,
    ngay_dat_hang DATETIME,
    ma_cung_cap INT,
    FOREIGN KEY (ma_cung_cap)
        REFERENCES nha_cung_cap (ma_cung_cap)
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATETIME
);

CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY,
    ten_vat_tu VARCHAR(50)
);


CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY,
    ngay_xuat DATETIME
);

CREATE TABLE phieu_xuat_vat_tu (
    so_phieu_xuat INT,
    ma_vat_tu INT,
    don_gia_nhap DOUBLE,
    so_luong_xuat INT,
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE phieu_nhap_vat_tu (
    ma_vat_tu INT,
    so_phieu_nhap INT,
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap)
);

CREATE TABLE don_dat_hang_vat_tu (
    ma_vat_tu INT,
    so_don_hang INT,
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_don_hang)
        REFERENCES don_dat_hang (so_don_hang)
);




