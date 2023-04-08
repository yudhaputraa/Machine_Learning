# Naive Bayes
Naive Bayes adalah salah satu algoritma klasifikasi probabilistik yang sangat populer dalam machine learning. Algoritma ini didasarkan pada Teorema Bayes, yaitu sebuah formula matematis yang digunakan untuk menghitung probabilitas suatu kejadian berdasarkan probabilitas kejadian-kejadian terkait lainnya.

Pada dasarnya, Naive Bayes mencoba untuk memprediksi kelas atau label sebuah data berdasarkan informasi yang terkandung dalam fitur-fitur yang ada pada data tersebut. Algoritma ini menghitung probabilitas setiap kelas berdasarkan fitur-fitur yang ada pada data, dan kemudian memilih kelas yang memiliki probabilitas paling tinggi sebagai kelas prediksi.

Naive Bayes menggunakan asumsi "naive" (sederhana) bahwa semua fitur atau atribut dalam data adalah independen satu sama lain. Artinya, probabilitas suatu fitur atau atribut tidak dipengaruhi oleh nilai atau keberadaan fitur atau atribut lainnya dalam data. Meskipun asumsi ini seringkali tidak sepenuhnya terpenuhi dalam data yang sebenarnya, Naive Bayes masih sering memberikan hasil yang baik dalam berbagai masalah klasifikasi.

Terdapat tiga jenis model Naive Bayes yang sering digunakan, yaitu:
1. Naive Bayes Bernoulli: model ini digunakan untuk data biner, di mana setiap fitur hanya memiliki nilai 0 atau 1.
2. Naive Bayes Multinomial: model ini digunakan untuk data multiclass, di mana setiap fitur memiliki nilai diskrit.
3. Naive Bayes Gaussian: model ini digunakan untuk data kontinu, di mana setiap fitur memiliki nilai dalam rentang tertentu.

Proses pembuatan model Naive Bayes melibatkan tiga tahap:
1. Estimasi probabilitas: menghitung probabilitas setiap kelas dan probabilitas setiap fitur dalam setiap kelas berdasarkan data pelatihan.
2. Perhitungan likelihood: menghitung likelihood atau probabilitas setiap fitur dalam setiap kelas berdasarkan data pelatihan.
3. Perhitungan posterior: menghitung probabilitas posterior atau probabilitas setiap kelas berdasarkan data pelatihan dan likelihood.

Setelah model Naive Bayes selesai dibangun, kita dapat menggunakannya untuk memprediksi kelas atau label dari data baru dengan menghitung probabilitas setiap kelas berdasarkan fitur-fitur pada data tersebut.

Naive Bayes adalah algoritma klasifikasi yang cepat dan mudah diimplementasikan, dan sering memberikan hasil yang baik dalam berbagai masalah klasifikasi, terutama jika data cukup besar. Namun, Naive Bayes kurang cocok untuk data yang memiliki hubungan kompleks antara fitur atau atributnya.