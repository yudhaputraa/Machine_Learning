# Decision Tree
Decision tree atau pohon keputusan adalah salah satu metode dalam machine learning dan data mining yang memungkinkan kita untuk membuat model prediksi atau klasifikasi berdasarkan serangkaian aturan atau keputusan yang dibuat secara hierarkis.

Model decision tree dibangun dari serangkaian keputusan (decision) atau aturan (rule) yang diambil berdasarkan fitur-fitur atau atribut-atribut dari data yang diberikan. Decision tree membangun struktur pohon dengan setiap simpul pada pohon mewakili sebuah keputusan atau aturan yang diambil. Setiap percabangan pada pohon merupakan pemilihan fitur yang paling informatif untuk membagi data menjadi dua atau lebih subset yang lebih homogen.

Proses pembuatan decision tree dimulai dengan memilih fitur yang paling informatif untuk memisahkan data ke dalam subset yang lebih homogen. Pemilihan fitur ini dilakukan dengan menggunakan metode pengukuran kepentingan fitur seperti Information Gain, Gain Ratio, Gini Index, atau Chi-square. Setelah fitur yang paling informatif ditemukan, data dipisahkan menjadi subset berdasarkan nilai fitur tersebut.

Proses ini berlanjut pada setiap subset sampai tidak ada lagi fitur yang dapat membedakan data pada simpul yang sama. Pada akhirnya, decision tree menghasilkan model prediksi atau klasifikasi yang dapat digunakan untuk memprediksi nilai target dari data baru yang masuk. Model decision tree yang dihasilkan mudah diinterpretasikan dan dapat memberikan wawasan yang berguna tentang hubungan antara fitur atau atribut dalam data.

Ada beberapa jenis decision tree, seperti decision tree biner, decision tree multiclass, decision tree regresi, dan decision tree multiregresi. Setiap jenis decision tree memiliki kelebihan dan kekurangan yang berbeda, tergantung pada tipe data dan masalah yang ingin diselesaikan.

Kelebihan dari decision tree adalah mudah diinterpretasikan, dapat mengatasi data yang tidak seimbang, dan tidak terpengaruh oleh data yang tidak relevan. Namun, kelemahan dari decision tree adalah cenderung overfitting jika tidak diatur dengan baik, rentan terhadap perubahan data, dan tidak efektif untuk data yang memiliki banyak fitur atau atribut.

Untuk mengatasi kelemahan decision tree, ada beberapa teknik yang dapat digunakan, di antaranya:

1. Pre-pruning: teknik ini melibatkan penghentian pembuatan decision tree sebelum mencapai kondisi terminasi jika beberapa kondisi telah terpenuhi, seperti batas maksimal kedalaman pohon atau batas minimum jumlah instance pada simpul.
2. Post-pruning: teknik ini melibatkan pembuangan simpul yang tidak perlu dari decision tree setelah pembuatan model selesai. Hal ini dilakukan dengan menggabungkan simpul yang tidak signifikan menjadi simpul yang lebih besar atau menghapus simpul yang tidak penting.
3. Ensemble learning: teknik ini melibatkan penggabungan beberapa decision tree untuk meningkatkan performa model. Ada beberapa jenis ensemble learning, seperti Random Forest, Gradient Boosting, dan AdaBoost.
4. Penggunaan metode pengukuran kepentingan fitur yang berbeda: metode pengukuran kepentingan fitur yang berbeda dapat memberikan hasil yang lebih baik untuk tipe data dan masalah yang berbeda.
5. Praproses data: praproses data seperti menghilangkan fitur yang tidak penting, mengisi missing value, dan menormalkan data dapat meningkatkan performa model decision tree.

Dalam implementasi decision tree, ada beberapa library dan framework machine learning yang dapat digunakan, seperti Scikit-learn, Weka, dan TensorFlow.

Secara keseluruhan, decision tree adalah metode machine learning yang berguna untuk membangun model prediksi atau klasifikasi berdasarkan serangkaian aturan atau keputusan yang dibuat secara hierarkis. Dalam penggunaannya, decision tree dapat memberikan wawasan yang berguna tentang hubungan antara fitur atau atribut dalam data dan dapat diimplementasikan dengan berbagai teknik untuk meningkatkan performa dan mengatasi kelemahan yang ada.

