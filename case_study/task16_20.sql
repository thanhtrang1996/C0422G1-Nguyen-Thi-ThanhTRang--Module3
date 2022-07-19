use furama_resort;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.

/*set sql_safe_updates =0;
select nhan_vien.ma_nhan_vien,nhan_vien.ho_ten
from nhan_vien
join hop_dong on nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien

where nhan_vien.ma_nhan_vien not in (select *from (select  nhan_vien.ma_nhan_vien 
from nhan_vien 
join hop_dong on nhan_vien.ma_nhan_vien = hop_dong.ma_nhan_vien
where year(hop_dong.ngay_lam_hop_dong) between 2019 and 2021
group by hop_dong.ma_nhan_vien
) temp_table )
group by hop_dong.ma_nhan_vien;

set sql_safe_updates =1;*/


SET SQL_SAFE_UPDATES = 0;
with ma_nhan_vien_can_xoa as (
select ma_nhan_vien from nhan_vien
where ma_nhan_vien
not in (select nhan_vien.ma_nhan_vien from nhan_vien
		join hop_dong on hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien
		where hop_dong.ngay_lam_hop_dong between '2019-01-01' and '2021-12-31'
		group by nhan_vien.ma_nhan_vien)
)
update nhan_vien
set `status` = 1
where ma_nhan_vien in (select ma_nhan_vien from ma_nhan_vien_can_xoa);
SET SQL_SAFE_UPDATES = 1;

select nhan_vien.ma_nhan_vien,nhan_vien.ho_ten
from nhan_vien
where `status` = 1;



/*17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng
 Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.*/
 
UPDATE khach_hang 
SET 
    khach_hang.ma_loai_khach = (SELECT 
            ma_loai_khach
        FROM
            loai_khach
        WHERE
            ten_loai_khach = 'Diamond')
WHERE
    khach_hang.ma_khach_hang IN (SELECT 
            *
        FROM
            (SELECT 
                khach_hang.ma_khach_hang
            FROM
                khach_hang
            JOIN loai_khach ON loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
            JOIN hop_dong ON hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
            JOIN dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
            JOIN hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
            JOIN dich_vu_di_kem ON hop_dong_chi_tiet.ma_dich_vu_di_kem = dich_vu_di_kem.ma_dich_vu_di_kem
            WHERE
                (YEAR(hop_dong.ngay_lam_hop_dong) = 2021
                    AND loai_khach.ten_loai_khach = 'Platinium')
                    AND (khach_hang.`status` = 0)
            HAVING SUM((hop_dong_chi_tiet.so_luong * dich_vu_di_kem.gia) + chi_phi_thue) >= 10000000) temp_table);
            
  /*  
18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).*/
    SET SQL_SAFE_UPDATES = 0;
with ma_khach_hang_can_xoa as (
select ma_khach_hang from khach_hang
where ma_khach_hang
not in (select khach_hang.ma_khach_hang from khach_hang
		join hop_dong on hop_dong.ma_khach_hang = khach_hang.ma_khach_hang
		where year(hop_dong.ngay_lam_hop_dong) 
		group by  khach_hang.ma_khach_hang )
)
update nhan_vien
set `status` = 1
where ma_nhan_vien in (select ma_nhan_vien from ma_nhan_vien_can_xoa);
SET SQL_SAFE_UPDATES = 1;

select nhan_vien.ma_nhan_vien,nhan_vien.ho_ten
from nhan_vien
where `status` = 1;

    
            
            
 /*  19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.*/
 
 
 /*20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), 
 ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.*/
 
SELECT 
    nhan_vien.ma_nhan_vien AS id,
    nhan_vien.ho_ten,
    nhan_vien.ngay_sinh,
    nhan_vien.so_dien_thoai,
    nhan_vien.email,
    nhan_vien.dia_chi
FROM
    nhan_vien 
UNION ALL SELECT 
    khach_hang.ma_khach_hang,
    khach_hang.ho_ten,
    khach_hang.ngay_sinh,
    khach_hang.so_dien_thoai,
    khach_hang.email,
    khach_hang.dia_chi
FROM
    khach_hang;

         

            


