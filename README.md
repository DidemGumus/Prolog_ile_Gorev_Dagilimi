# Yapay Zeka ve Uzman Sistemler - Prolog Görev Planlama  
Bir çalışma grubunun zaman ve görev planlamasını yapmak için **Prolog** dili kullanılarak geliştirilmiştir.  

## 📌 Proje Açıklaması  

Bu proje, farklı becerilere sahip takım üyeleri için belirli görevleri atayan ve görev bağımlılıklarını dikkate alarak en uygun zaman planını çıkaran bir **Prolog programı**dır.  

## 🏆 Hedefler  

- Takım üyelerinin becerilerine ve uygunluk saatlerine göre görevlerin atanması  
- Görev bağımlılıklarının kontrol edilmesi  
- Üç farklı projenin en kısa sürede tamamlanması için zaman çizelgesi oluşturulması  

## 📌 Takım Üyeleri ve Görevler  

### 🔹 Takım Üyeleri  
| İsim   | Beceriler              | Çalışma Saatleri |
|--------|------------------------|------------------|
| Murat  | Kodlama, Tasarım       | 09:00 - 17:00   |
| Hande  | Test, Tasarım          | 10:00 - 18:00   |
| Fatih  | Kodlama, Test          | 08:00 - 16:00   |
| Melek  | Tasarım, Test          | 11:00 - 19:00   |

### 🔹 Görevler ve Süreleri  
| Görev       | Gereken Beceriler   | Süre (Saat) |
|------------|--------------------|-------------|
| Kodlama    | Kodlama            | 4           |
| Tasarım    | Tasarım            | 3           |
| Test       | Test               | 5           |
| Entegrasyon | Kodlama, Tasarım   | 6           |
| Debug      | Kodlama, Test       | 5           |

### 🔹 Görev Bağımlılıkları  
- **Kodlama** tamamlanmadan **Entegrasyon** başlayamaz.  
- **Tasarım** tamamlanmadan **Test** başlayamaz.  
- **Test** tamamlanmadan **Debug** başlayamaz.  

## 🛠 Kullanılan Teknolojiler  
- **Prolog**  
- **SWI-Prolog**  

## 🚀 Projeyi Çalıştırma  

1. **SWI-Prolog'u** yükleyin:  
   [SWI-Prolog İndirme Linki](https://www.swi-prolog.org/)  
2. Proje dosyasını klonlayın:  
   ```bash
   git clone https://github.com/kullaniciadi/prolog-gorev-planlama.git
   cd prolog-gorev-planlama  
3.SWI-Prolog ile dosyayı çalıştırın:
[‘Swish_opdracht_informatica.pl’].
4.Örnek bir çalıştırma için:
tum_projeler(Plan, GunSayisi).
