1. Agregasi dengan Fungsi String
Soal:
Gabungkan semua nama karyawan dalam satu departemen.

SELECT 
    UPPER(SUBSTRING(NamaKaryawan, 3, 3)) + '-ACTIVE' AS Hasil
FROM Karyawan
WHERE LEN(NamaKaryawan) > 5;


2. Konversi Format Tanggal
Soal:
Tampilkan TanggalTransaksi dalam format DD-MMM-YYYY HH:MM:SS AM/PM dan hitung jumlah hari hingga tanggal saat ini.


SELECT 
    FORMAT(TanggalTransaksi, 'dd-MMM-yyyy hh:mm:ss tt') AS TanggalTransaksiFormat,
    DATEDIFF(DAY, TanggalTransaksi, GETDATE()) AS HariSejakTransaksi
FROM Transaksi
WHERE DATEDIFF(DAY, TanggalTransaksi, GETDATE()) > 90;


3. Kalkulasi dengan Fungsi Waktu
Soal:
Hitung total jam kerja setiap karyawan dalam format XX jam YY menit.

SELECT 
    NamaKaryawan,
    CONCAT(
        DATEDIFF(MINUTE, JamMasuk, JamKeluar) / 60, ' jam ', 
        DATEDIFF(MINUTE, JamMasuk, JamKeluar) % 60, ' menit'
    ) AS DurasiKerja
FROM Presensi
WHERE DATEDIFF(MINUTE, JamMasuk, JamKeluar) > 480;



