Entropy adalah salah satu metrik yang digunakan dalam pembangunan pohon keputusan (decision tree) untuk mengukur ketidakmurnian (impurity) atau kebingungan dari data pada simpul tertentu. Tujuannya adalah untuk membantu algoritma decision tree seperti C4.5 atau ID3 dalam memilih atribut terbaik untuk membagi data menjadi subset yang lebih homogen atau bersih.

Konsep entropy berasal dari teori informasi dan digunakan dalam konteks pohon keputusan sebagai berikut:

1.Ketidakmurnian Awal (Initial Impurity): Pada awalnya, sebelum pemilihan atribut apa pun, simpul akar (root node) memiliki seluruh dataset yang berisi berbagai kelas atau nilai target yang mungkin. Entropy awal mengukur sejauh mana data ini bercampur dalam hal kelas-kelas atau nilai-nilai targetnya.

2.Pembagian Atribut (Attribute Split): Ketika algoritma decision tree memilih atribut untuk membagi dataset, itu mencoba untuk memilih atribut yang paling efektif dalam mengurangi ketidakmurnian data. Entropy digunakan untuk mengukur ketidakmurnian data setelah pembagian berdasarkan atribut tersebut. Entropy yang lebih rendah menunjukkan bahwa pembagian atribut menghasilkan subset data yang lebih homogen dalam hal kelas atau nilai target.

3.Pengurangan Entropy (Entropy Reduction): Pengurangan entropy adalah perbedaan antara entropy awal dan entropy setelah pembagian atribut. Semakin besar pengurangan entropy, semakin baik atribut tersebut dalam memisahkan data. Algoritma decision tree akan memilih atribut yang menghasilkan pengurangan entropy terbesar.

Formula yang digunakan untuk menghitung entropy adalah sebagai berikut:

Entropy(S) = -p1 * log2(p1) - p2 * log2(p2) - ... - pk * log2(pk)

di mana:

S adalah simpul yang sedang dievaluasi.
p1, p2, ..., pk adalah proporsi dari berbagai kelas dalam simpul S.
log2 adalah logaritma basis 2.
Entropy memiliki rentang nilai antara 0 dan 1. Jika entropy adalah 0, ini berarti simpul itu sempurna bersih, dengan semua instance yang termasuk dalam satu kelas. Sebaliknya, jika entropy adalah 1, ini berarti simpul tersebut sangat tidak bersih, dengan setiap kelas memiliki proporsi yang sama.

Dengan menggunakan entropy sebagai metrik dalam pembangunan pohon keputusan, algoritma dapat secara otomatis memilih atribut yang paling informatif untuk memisahkan data dan membangun pohon yang lebih baik untuk klasifikasi atau prediksi.