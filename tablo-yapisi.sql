-- 1. Tablo: Kullanıcı Bilgileri
CREATE TABLE Kullanicilar (
    kullanici_id INT PRIMARY KEY AUTO_INCREMENT,
    ad_soyad VARCHAR(100) NOT NULL,
    eposta VARCHAR(100) UNIQUE NOT NULL,
    kayit_tarihi DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tablo: Ürünler
CREATE TABLE Urunler (
    urun_id INT PRIMARY KEY AUTO_INCREMENT,
    urun_adi VARCHAR(100) NOT NULL,
    fiyat DECIMAL(10, 2) NOT NULL,
    stok_adedi INT DEFAULT 0
);

-- 3. Tablo: Siparişler (Kullanıcılar ve Ürünler arasında bağlantı kurar)
CREATE TABLE Siparisler (
    siparis_id INT PRIMARY KEY AUTO_INCREMENT,
    kullanici_id INT,
    urun_id INT,
    siparis_tarihi DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (kullanici_id) REFERENCES Kullanicilar(kullanici_id),
    FOREIGN KEY (urun_id) REFERENCES Urunler(urun_id)
);

-- Örnek Veri Ekleme (Test etmek için)
INSERT INTO Kullanicilar (ad_soyad, eposta) VALUES ('Ahmet Yılmaz', 'ahmet@mail.com');
INSERT INTO Urunler (urun_adi, fiyat, stok_adedi) VALUES ('Gaming Mouse', 450.00, 15);
