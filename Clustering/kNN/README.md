K-Nearest Neighbors (KNN) adalah salah satu algoritma klasifikasi dan regresi yang digunakan dalam machine learning. Algoritma ini digunakan untuk memprediksi kelas atau nilai berdasarkan kedekatan (jarak) dengan tetangga terdekat dalam dataset. KNN adalah salah satu metode yang termasuk dalam kategori "lazy learner" atau "instance-based learner" karena ia tidak secara eksplisit melatih model pada data pelatihan. Sebaliknya, KNN menyimpan seluruh dataset pelatihan dalam memori dan menghitung jarak antara titik data yang akan diprediksi dengan semua titik data pelatihan.

Berikut adalah konsep utama dalam algoritma K-Nearest Neighbors:

1. K: K adalah parameter penting dalam KNN. Ini adalah jumlah tetangga terdekat yang akan digunakan untuk membuat prediksi. Misalnya, jika K = 3, maka algoritma akan mencari 3 tetangga terdekat untuk memutuskan kelas atau nilai yang akan diprediksi.

2. Perhitungan Jarak: KNN menggunakan metrik jarak (seperti Euclidean distance, Manhattan distance, atau metrik lain) untuk mengukur seberapa dekat atau jauh titik data yang akan diprediksi dengan titik data pelatihan. KNN mencari K titik data pelatihan dengan jarak terdekat.

3. Voting (Klasifikasi) atau Rata-rata (Regresi): Dalam tahap ini, KNN melakukan voting mayoritas jika digunakan untuk klasifikasi. Ini berarti algoritma menghitung kelas mayoritas dari K tetangga terdekat dan menganggapnya sebagai prediksi kelas. Jika digunakan untuk regresi, algoritma menghitung rata-rata nilai target dari K tetangga terdekat dan menganggapnya sebagai prediksi nilai.

KNN adalah algoritma yang sederhana dan mudah dipahami, tetapi performanya dapat sangat dipengaruhi oleh pemilihan parameter K dan metrik jarak yang sesuai. Pemilihan nilai K yang tepat dapat mempengaruhi apakah algoritma cenderung overfitting (K kecil) atau underfitting (K besar). Selain itu, pemilihan metrik jarak yang sesuai juga penting tergantung pada jenis data yang sedang dihadapi.

KNN sering digunakan dalam kasus-kasus di mana data tidak memiliki struktur yang terlalu kompleks dan ketika tidak memungkinkan atau relevan untuk melatih model yang lebih kompleks. Ini juga sering digunakan sebagai baseline untuk membandingkan dengan algoritma klasifikasi atau regresi lain yang lebih canggih.