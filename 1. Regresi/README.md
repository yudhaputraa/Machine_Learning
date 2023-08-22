# Linier Regression
Linear regression adalah suatu metode statistik yang digunakan untuk menentukan hubungan linier antara dua variabel. Tujuannya adalah untuk membangun model matematis yang dapat digunakan untuk memprediksi nilai dari satu variabel (disebut variabel dependen atau variabel respons) berdasarkan nilai dari variabel lainnya (disebut variabel independen atau variabel prediktor).

Secara matematis, model linear regression dapat dituliskan sebagai:

y = a + bx

dimana y adalah nilai variabel dependen yang ingin diprediksi, x adalah nilai variabel independen yang digunakan untuk melakukan prediksi, a adalah intercept (y-intercept) yang merupakan nilai y ketika x = 0, dan b adalah slope (gradien) yang merupakan perubahan dalam y ketika x berubah satu satuan.

Untuk membangun model linear regression, langkah-langkah yang umum dilakukan adalah:

1. Mengumpulkan data: data harus terdiri dari nilai-nilai dari kedua variabel yang akan digunakan untuk membangun model.
2. Membuat scatter plot: scatter plot digunakan untuk mengevaluasi apakah terdapat hubungan linier antara kedua variabel.
3. Menghitung koefisien korelasi: koefisien korelasi Pearson digunakan untuk mengukur kekuatan hubungan linier antara kedua variabel.
4. Membangun model: setelah menentukan bahwa hubungan antara kedua variabel adalah linier, langkah selanjutnya adalah membangun model linear regression dengan menggunakan persamaan yang telah dijelaskan di atas.
5. Mengevaluasi model: model linear regression dapat dievaluasi dengan menggunakan berbagai metrik evaluasi, seperti r-square, mean squared error, dan lain-lain. Metrik ini digunakan untuk mengevaluasi seberapa baik model memprediksi nilai variabel dependen berdasarkan nilai variabel independen yang diberikan.

Dalam prakteknya, linear regression dapat digunakan untuk berbagai aplikasi, seperti prediksi harga saham, pengukuran pengaruh faktor-faktor terhadap tingkat kebahagiaan, atau prediksi nilai rumah berdasarkan ukuran dan lokasi.


# Multiple linier regression
Multi-linear regression adalah pengembangan dari konsep linear regression dimana kita mencoba membangun model matematis yang menghubungkan satu variabel dependen dengan dua atau lebih variabel independen. Dalam multi-linear regression, persamaan matematis yang digunakan untuk membangun model adalah sebagai berikut:

y = a + b1x1 + b2x2 + b3x3 + ... + bnxn

Dimana y adalah variabel dependen, x1, x2, ..., xn adalah variabel independen, dan b1, b2, ..., bn adalah koefisien regresi untuk setiap variabel independen. Nilai koefisien regresi ini menunjukkan seberapa besar pengaruh dari masing-masing variabel independen terhadap variabel dependen, jika variabel independen lainnya tetap konstan.

Proses untuk membangun model multi-linear regression hampir sama dengan linear regression, namun membutuhkan beberapa langkah tambahan, antara lain:

1. Memilih variabel independen yang akan dimasukkan dalam model: Langkah pertama adalah memilih variabel independen yang memiliki hubungan linier dengan variabel dependen dan dapat menjelaskan variasi dalam variabel dependen.
2. Memeriksa asumsi model: Sebelum membangun model multi-linear regression, kita harus memeriksa apakah asumsi model seperti normalitas, homoskedastisitas, dan independensi terpenuhi.
3. Menghitung koefisien regresi: Setelah asumsi model terpenuhi, kita dapat menghitung koefisien regresi untuk masing-masing variabel independen. Koefisien regresi menunjukkan seberapa besar perubahan dalam variabel dependen yang terjadi ketika variabel independen diubah satu satuan.
4. Mengevaluasi model: Setelah membangun model multi-linear regression, kita dapat menggunakan metrik evaluasi seperti R-squared, mean squared error, dan lain-lain untuk mengevaluasi seberapa baik model dapat memprediksi nilai variabel dependen.

Model multi-linear regression dapat digunakan untuk berbagai aplikasi, seperti prediksi harga rumah berdasarkan ukuran, jumlah kamar, dan lokasi, atau prediksi keuntungan perusahaan berdasarkan biaya produksi dan harga jual.

# Catatan

- Regresi (regression) adalah proses identifikasi relasi dan pengaruhnya pada nilai-nilai objek. Regresi bertujuan menemukan suatu fungsi yang memodelkan data dengan meminimalkan galat atau selisih antara nilai prediksi dengan nilai sebenarnya.

- Regresi umumnya digunakan untuk prediksi (prediction) dan peramalan (forecasting).

- Prediksi digunakan untuk memperkirakan nilai-nilai data bertipe apa saja dan kapan saja (masa lalu, sekarang, dan masa depan) sedangkan peramalan digunakan untuk memperkirakan nilai-nilai data time series di masa depan.

- Proyeksi adalah peramalan yang dibuat berdasarkan suatu studi yang memadai sehingga memiliki justikasi kuat sedangkan peramalan hanya mengandalkan data-data time series di masa lalu dan saat ini untuk memperkirakan data-data masa depan tanpa studi memadai sehingga tidak memiliki justikasi kuat.

- Istilah klasifikasi digunakan untuk menetapkan objek-objek data ke dalam sejumlah kelas/kategori yang terbatas.

- Subbab ini kita akan menggunakan regresi linier sederhana untuk melakukan prediksi dan peramalan agar lebih jelas perbedaan di antara keduanya.

- Regresi linier adalah regresi yang memiliki variabel bebas X berpangkat paling tinggi satu. Terdapat dua jenis regresi linier, yaitu: regresi linier sederhana (univariate linear) dan regresi linier berganda (multivariate linear).

- Model linier dapat diartikan sebagai penggunaan suatu fungsi lurus atau datar (untuk kasus regresi) atau suatu fungsi penilai (untuk kasus klasifikasi).

- model linier adalah menentukan parameter w dan a (masing-masing skalar tunggal bernilai riil), yang dapat dinyatakan sebagai w, a € R, sedemikian hingga meminimalkan kesalahan (error).