Dalam konteks decision tree, "gain ratio" adalah salah satu metrik yang digunakan untuk menentukan mana atribut yang paling baik untuk digunakan sebagai node pemisahan (split node) selama proses pembuatan decision tree. Gain ratio adalah metrik yang membantu dalam mengevaluasi tingkat informasi atau relevansi atribut terhadap klasifikasi data.

Gain ratio didefinisikan sebagai rasio antara "information gain" (keuntungan informasi) dan "split information" (informasi pemisahan). Information gain mengukur seberapa banyak informasi yang diperoleh dengan memilih atribut tertentu sebagai split node, sementara split information mengukur seberapa baik atribut tersebut membagi data menjadi subset yang homogen.


Di mana:

Information Gain mengukur penurunan entropi atau impuritas dataset setelah atribut dibagi.
Split Information mengukur seberapa homogen data yang dihasilkan oleh pemisahan atribut. Ini biasanya dihitung menggunakan entropi atau Gini impurity.
Tujuan dari gain ratio adalah untuk menghindari pemilihan atribut yang memiliki banyak nilai atau kategori, yang mungkin menghasilkan banyak subset yang tidak homogen. Gain ratio akan memberikan preferensi kepada atribut yang menghasilkan pemisahan data yang lebih baik secara informasional.

Dalam konteks decision tree, atribut dengan gain ratio tertinggi cenderung dipilih sebagai split node pada setiap level pohon, karena atribut tersebut dianggap memberikan kontribusi yang paling signifikan dalam mengklasifikasikan data dengan benar.

Penting untuk diingat bahwa ada beberapa metrik lain yang dapat digunakan dalam pembuatan decision tree, seperti information gain, gini impurity, dan chi-square, tergantung pada algoritma pembuatan decision tree yang digunakan (misalnya, ID3, C4.5, CART). Gain ratio adalah salah satu pilihan yang biasanya digunakan dalam algoritma seperti C4.5.