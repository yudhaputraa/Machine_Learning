## Penjelasan
Information gain adalah salah satu metrik yang digunakan dalam algoritma Decision Tree untuk memilih atribut terbaik yang akan digunakan sebagai node pemisah saat membangun pohon keputusan. Konsep ini berdasarkan pada teori informasi dan digunakan untuk mengukur seberapa baik suatu atribut memisahkan data ke dalam kelas-kelas yang berbeda.

Informasi gain mengukur penurunan ketidakpastian atau entropi dalam data ketika kita membagi data berdasarkan suatu atribut. Semakin besar penurunan entropi, semakin baik atribut tersebut dalam memisahkan data dan semakin tinggi informasi gainnya.

Secara singkat, informasi gain menjawab pertanyaan berikut: "Seberapa baik atribut ini dalam memisahkan data menjadi kelas-kelas yang berbeda?" Untuk mengukur informasi gain, kita menghitung entropi sebelum dan setelah pembagian data berdasarkan atribut tersebut, dan kemudian menghitung perbedaannya.

Atribut dengan informasi gain tertinggi akan dipilih sebagai atribut yang akan digunakan untuk membagi data pada setiap langkah saat membangun pohon keputusan, karena atribut tersebut memberikan penurunan entropi yang paling besar, yang pada gilirannya membantu dalam pengambilan keputusan yang lebih baik.
