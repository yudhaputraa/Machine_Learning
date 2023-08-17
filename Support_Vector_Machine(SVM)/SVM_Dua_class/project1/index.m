% Data dan label grup yang Anda berikan
load data.dat
load group.dat

% Melatih model SVM
svmStruct = fitcsvm(data, group, 'KernelFunction', 'linear', 'Standardize', true);

% Prediksi kelas
predictions = predict(svmStruct, data);

% Menampilkan plot data dan hasil prediksi
figure;
gscatter(data(:, 1), data(:, 2), group, 'rb', 'x+');
hold on;

% Mendapatkan bobot garis pemisah (hyperplane)
w = svmStruct.Beta;
b = svmStruct.Bias;

% Menghitung koordinat garis pemisah
x = linspace(min(data(:, 1)), max(data(:, 1)), 100);
y = (-w(1) * x - b) / w(2);

% Menampilkan garis pemisah (hyperplane)
plot(x, y, 'k--', 'LineWidth', 2);

title('SVM Classification');
xlabel('Feature 1');
ylabel('Feature 2');
legend('Class 0', 'Class 1', 'Decision Boundary');
axis tight; % Menyesuaikan sumbu agar tidak ada ruang kosong
hold off;
