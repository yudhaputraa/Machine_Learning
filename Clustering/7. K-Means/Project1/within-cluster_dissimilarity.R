# Ide dari Elbow adalah menemukan within-cluster dissimilarity sebagai sebuah fungsi dari jumblah cluster (k). Untuk mewujudkannya, diperlukan observasi secara visual, yaitu dgn mengamati plot grafik.

# Membuat bilangan random
set.seed(123)

# Menentukan plot untuk k=2 hingga k=15
k.max <- 15

# Menyiapka dataset iris.
data <- iris[,-5]
iris.scaled <- scale(data)

# Menentukan fungsi yg akan di-plot
wss <- sapply(1:k.max, function(k) { kmeans(data, k, nstart = 10)$tot.withinss })

# Memplot fungsi
plot(1:k.max, wss,
     type = "b", pch = 19, frame = FALSE,
     xlab = "Number of clusters K",
     ylab = "Total within-clusters sum of squares"
)

# Melakukan pengamatan, kemudian menampilkan garis pd titik k yg dicari, Dalam hal ini adalah k=3, karena nilai 3 berada pd lengkungan plot grafik.
abline(v = 3, lty = 2)
