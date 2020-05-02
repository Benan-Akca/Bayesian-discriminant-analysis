# Naive-Bayes classifier from scratch.

Bu çalışmada Irıs veri setinde Bayes temelli sınıflandırma sistemi tasarlandı. Tüm sınıflara ait 50 örneklemlik 4 boyutlu veri setinin 3. ve 4. boyutları alınarak bu iki boyutlu verinin, tüm sınıflar için iki değişkenli Gauss (bivariate Gaussian) dağılımına uyduğu farz edildi.

İşlem basamakları;

1.  Tüm sınıflara ait bu iki boyutlu değişkenin ortalama vektörlerinin ve kovaryans matrislerinin kestirimleri (m1, m2, m3 ve S1, S2, S3) 

2. Bayes karar kuralı be bu kestirilen değerler ile üç sınıfın örneklerini ve Bayes sınıflandırma sınırlarının contour plot’u çizdirildi. 

![dif_cov](https://user-images.githubusercontent.com/56174429/80863084-6668c200-8c82-11ea-85b6-8043893199c5.png)

3. Bayes karar kuralını önce tüm sınıfların ortak bir kovaryans matrise sahip olması durumunda nasıl doğrusal bir sınıflandırıcıya dönüştüğü formül derivasyonu ile çıkartıldı.

Ortak kovaryans matrisini (S) tüm sınıfların kovrayans matrislerinin ortalaması olarak alındı. 

	S = 1/3 (S1 + S2 + S3)

4. Bu durumda hesaplanan karar kuralı ile ayrıştırma sınırlarının lineer olarak geçişi contour plot ile plotlandı. Aşağıdaki gibi bir plot göreceksiniz:
![same_cov](https://user-images.githubusercontent.com/56174429/80863119-a334b900-8c82-11ea-9340-5a6e5886dc27.png)
 
5. Kovaryans matrislerin eşit olması decision boundry formülündeki quadratic kısmı yok etmiş bunun sonucu olarak boundry lineerleşmiştir.



