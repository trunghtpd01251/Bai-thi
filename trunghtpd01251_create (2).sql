-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:59:30.653




-- tables
-- Table: TPhongBan
CREATE TABLE TPhongBan (
    MaPhong int  NOT NULL,
    TenPhong varchar(45)  NOT NULL,
    CONSTRAINT TPhongBan_pk PRIMARY KEY  (MaPhong)
)
;





-- Table: Tnhanvien
CREATE TABLE Tnhanvien (
    Manv int  NOT NULL,
    TenNv varchar(50)  NOT NULL,
    Ngaysinh datetime  NOT NULL,
    GioiTinh char(50)  NOT NULL,
    Email varchar(50)  NOT NULL,
    MucLuong varchar(50)  NOT NULL,
    MaPhong int  NOT NULL,
    CONSTRAINT Tnhanvien_pk PRIMARY KEY  (Manv)
)
;









-- foreign keys
-- Reference:  Tnhanvien_TPhongBan (table: Tnhanvien)

ALTER TABLE Tnhanvien ADD CONSTRAINT Tnhanvien_TPhongBan 
    FOREIGN KEY (MaPhong)
    REFERENCES TPhongBan (MaPhong)
;





-- End of file.

