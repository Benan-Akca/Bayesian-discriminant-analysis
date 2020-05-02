# Naive-Bayes classifier from scratch.

Bu çalışmada Irıs veri setinde Bayes temelli iki sınıflandırma sistemi tasarlandı. Tüm sınıflara ait 50 örneklemlik 4 boyutlu veri setinin 3. ve 4. boyutlarını aldı ve bu iki boyutlu verinin, tüm sınıflar için iki değişkenli Gauss (bivariate Gaussian) dağılımına uyduğunu farz edildi.

İşlem basamakları;

1.  Tüm sınıflara ait bu iki boyutlu değişkenin ortalama vektörlerinin ve kovaryans matrislerinin kestirimleri (m1, m2, m3 ve S1, S2, S3) 

2. Bayes karar kuralı be bu kestirilen değerler ile üç sınıfın örneklerini ve Bayes sınıflandırma sınırlarının contour plot’unu çizdirildi 

3. Bayes karar kuralını önce tüm sınıfların ortak bir kovaryans matrise sahip olması durumunda nasıl doğrusal bir sınıflandırıcıya dönüştüğü formül derivasyonu ile çıkartıldı.

Ortak kovaryans matrisini (S) tüm sınıfların kovrayans matrislerinin ortalaması olarak alındı. 

	S = 1/3 (S1 + S2 + S3)

4. Bu durumda hesaplanan karar kuralı ile ayrıştırma sınırlarının lineer olarak geçişi contour plot ile plotlandı. Aşağıdaki gibi bir plot göreceksiniz:

 
5. Öznitelik 3 ve 4 için verilen soruda verilen bu plotlar matematiksel olarak size ne söylemektedirler yorumlayın.



