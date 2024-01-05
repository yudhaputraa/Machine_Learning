# Algoritma C4.5

## Penjelasan
C4.5 adalah salah satu algoritma populer dalam pembangunan pohon keputusan (decision tree) dalam data mining dan machine learning. Algoritma ini dikembangkan oleh Ross Quinlan pada tahun 1993 dan merupakan salah satu pendekatan yang digunakan untuk menghasilkan model pohon keputusan dari data yang diberikan.

Berikut adalah beberapa komponen utama dari algoritma C4.5:

1. Pemilihan Atribut (Attribute Selection): C4.5 memilih atribut (fitur) terbaik yang akan digunakan untuk membagi data pada setiap simpul dalam pohon. Atribut yang dipilih adalah yang memiliki kemampuan terbaik untuk memisahkan data menjadi kelas-kelas yang berbeda.

2. Pengukuran Ketidakmurnian (Impurity Measure): Untuk memilih atribut terbaik, C4.5 menggunakan pengukuran ketidakmurnian, seperti entropi atau Gini index. Tujuannya adalah untuk memilih atribut yang meminimalkan ketidakmurnian dalam setiap simpul, sehingga menghasilkan pemisahan kelas yang lebih baik.

3. Pembagian Data (Splitting Data): Setelah atribut terbaik dipilih, data dibagi menjadi subset berdasarkan nilai-nilai atribut tersebut. Pohon keputusan tumbuh secara rekursif dengan setiap simpul baru mewakili subset data yang lebih kecil.

4. Pruning (Pemangkasan): C4.5 juga melibatkan langkah pemangkasan untuk menghindari overfitting. Pemangkasan adalah proses menghapus simpul-simpul yang tidak memberikan kontribusi signifikan terhadap peningkatan akurasi model pada data pengujian yang independen.

5. Kriteria Berhenti (Stopping Criteria): Algoritma ini berhenti membangun pohon ketika salah satu dari beberapa kriteria berhenti terpenuhi, seperti mencapai tingkat ketidakmurnian yang dapat diterima atau mencapai kedalaman maksimum yang diizinkan.

Hasil akhir dari algoritma C4.5 adalah pohon keputusan yang dapat digunakan untuk klasifikasi dan prediksi. Pohon ini dapat digunakan untuk membuat keputusan berdasarkan atribut-atribut yang dimasukkan sebagai input. C4.5 telah menjadi salah satu algoritma yang sangat berguna dalam analisis data dan pembuatan model di berbagai aplikasi, termasuk dalam tugas klasifikasi dan pengambilan keputusan.