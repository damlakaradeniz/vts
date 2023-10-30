-- "okulkutuphanesi" adında bir veritabanı oluşturun
CREATE DATABASE okulkutuphanesi1;
GO

-- Oluşturulan veritabanını kullanın
USE okulkutuphanesi1;
GO

-- "uyeler" tablosunu oluşturun
CREATE TABLE uyeler (
    uye_no INT PRIMARY KEY,
    uye_ad NVARCHAR(50),
    uye_soyad NVARCHAR(50),
    telefon VARCHAR(15),
    cinsiyet NVARCHAR (10), 
    eposta VARCHAR (50),
    adres_no INT
);


GO

-- "adresler" tablosunu oluşturun
CREATE TABLE adresler (
    adres_no INT PRIMARY KEY,
    ulke NVARCHAR (50),
    sehir VARCHAR(50),
    cadde VARCHAR(50),
    mahalle VARCHAR(100),
    posta_kodu INT ,
    bina_no INT 
);
GO

-- "emanet" tablosunu oluşturun
CREATE TABLE emanet (
    emanet_no INT PRIMARY KEY,
    uye_no INT,
    ISBN INT,
    emanet_tarihi DATE,
    teslim_tarihi DATE
);
GO

-- "kategoriler" tablosunu oluşturun
CREATE TABLE kategoriler (
    kategori_no INT PRIMARY KEY,
    kategori_adi VARCHAR(50)
);
GO

-- "kitaplar" tablosunu oluşturun
CREATE TABLE kitaplar (
    ISBN INT PRIMARY KEY,
    kitap_adi VARCHAR(100),
    yazar_no INT,
    kategori_no INT,
    sayfa_sayisi INT,
    yayin_tarihi DATE, 
    kutuphane_no INT
);
GO

-- "kutuphaneler" tablosunu oluşturun
CREATE TABLE kutuphaneler (
    kutuphane_no INT PRIMARY KEY,
    kutuphane_ismi VARCHAR(100),
    aciklama NCHAR (10),
    adres_no INT
);
GO

-- "yazarlar" tablosunu oluşturun
CREATE TABLE yazarlar (
    yazar_no INT PRIMARY KEY,
    yazar_ad VARCHAR(100),
    yazar_soyad VARCHAR(100)
);
GO

-- "kitapbulunur" tablosunu oluşturun
CREATE TABLE kitapbulunur (
    kitap_miktari INT
    
);
GO

-- "kitapkategori" tablosunu oluşturun
CREATE TABLE kitapkategori (
    kutuphane_ismi NVARCHAR (50),
    kategori_no INT
);
GO

-- "kitapyazar" tablosunu oluşturun
CREATE TABLE kitapyazar (
    kutuphane_ismi NVARCHAR,
    kitap_adi NVARCHAR
    
    
);

GO

-- "uyeler" tablosuna veri ekleme
INSERT INTO uyeler (uye_no, uye_ad, uye_soyad, telefon, cinsiyet, eposta, adres_no)
VALUES 
    (1, 'Ahmet', 'Yılmaz', '05314738943', 'Erkek', 'ahmet@example.com', 1),
    (2, 'Ayşe', 'Kara', '05555678890', 'Kadın', 'ayse@example.com', 2),
    (3, 'Mehmet', 'Beyaz', '05459876345', 'Erkek', 'mehmet@example.com', 3),
    (4, 'Zeynep', 'Demir', '05411111243', 'Kadın', 'zeynep@example.com', 4),
    (5, 'Ali', 'Çelik', '05323222980', 'Erkek', 'ali@example.com', 5);

-- "adresler" tablosuna 5 satır veri ekleme
INSERT INTO adresler (adres_no, ulke, sehir, cadde, mahalle, posta_kodu, bina_no)
VALUES 
    (1, 'Türkiye', 'İstanbul', '5', 'A', 12345, 6),
    (2, 'Türkiye', 'Ankara', '7', 'B', 67890, 7),
    (3, 'Türkiye', 'İzmir', '9', 'C', 54321, 8),
    (4, 'Türkiye', 'Bursa', '10', 'D', 98765, 9),
    (5, 'Türkiye', 'Antalya', '15', 'E', 13579, 10);

-- "emanet" tablosuna 5 satır veri ekleme
INSERT INTO emanet (emanet_no, uye_no, ISBN, emanet_tarihi, teslim_tarihi)
VALUES 
    (101, 1, 123, '2023-10-23', '2023-10-30'),
    (201, 2, 234, '2023-10-22', '2023-10-29'),
    (301, 3, 345, '2023-10-21', '2023-10-28'),
    (401, 4, 456, '2023-10-20', '2023-10-27'),
    (501, 5, 567, '2023-10-19', '2023-10-26');

-- "kategoriler" tablosuna 5 satır veri ekleme
INSERT INTO kategoriler (kategori_no, kategori_adi)
VALUES 
    (1, 'Roman'),
    (2, 'Bilim Kurgu'),
    (3, 'Korku'),
    (4, 'Tarih'),
    (5, 'Bilgisayar Bilimleri');

-- "kitaplar" tablosuna 5 satır veri ekleme
INSERT INTO kitaplar (ISBN, kitap_adi, yazar_no, kategori_no, sayfa_sayisi, yayin_tarihi, kutuphane_no)
VALUES 
    (123, 'AB', 1, 1, 200, '2023-01-15', 1),
    (234, 'GH', 2, 2, 250, '2023-02-20', 1),
    (345, 'CD', 3, 1, 180, '2023-03-25', 1),
    (456, 'DK', 4, 3, 220, '2023-04-10', 1),
    (567, 'LK', 5, 2, 300, '2023-05-05', 1);

INSERT INTO kutuphaneler (kutuphane_no, kutuphane_ismi, aciklama, adres_no)
VALUES 
    (1, 'Kütüphane 1', 'K', 1);

-- "yazarlar" tablosuna 5 satır veri ekleme
INSERT INTO yazarlar (yazar_no, yazar_ad, yazar_soyad)
VALUES 
    (1, 'A', 'Y'),
    (2, 'A', 'Ç'),
    (3, 'M', 'B'),
    (4, 'Z', 'D'),
    (5, 'A', 'Ç');


-- "kitapbulunur" tablosuna 1 satır veri ekleme
INSERT INTO kitapbulunur (kitap_miktari)
VALUES 
    (5);

-- "kitapkategori" tablosuna 5 satır veri ekleme
INSERT INTO kitapkategori (kutuphane_ismi, kategori_no)
VALUES 
    ('Kütüphane 1', 1),
    ('Kütüphane 1', 2),
    ('Kütüphane 1', 3),
    ('Kütüphane 1', 4),
    ('Kütüphane 1', 5);

INSERT INTO kitapyazar (kutuphane_ismi, kitap_adi)
VALUES 
    ('K', 'A'),
    ('K', 'G'),
    ('K', 'C'),
    ('K', 'D'),
    ('K', 'L');




SELECT * FROM uyeler
SELECT * FROM adresler
SELECT * FROM emanet
SELECT * FROM kategoriler
SELECT* FROM kitaplar
SELECT * FROM kutuphaneler
SELECT* FROM yazarlar
SELECT * FROM kitapbulunur
SELECT * FROM kitapkategori
SELECT * FROM kitapyazar

