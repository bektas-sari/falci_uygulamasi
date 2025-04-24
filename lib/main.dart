import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MotivasyonApp());
}

class MotivasyonApp extends StatelessWidget {
  const MotivasyonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motivasyon Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      home: const MotivasyonEkrani(),
    );
  }
}

class MotivasyonEkrani extends StatefulWidget {
  const MotivasyonEkrani({super.key});

  @override
  State<MotivasyonEkrani> createState() => _MotivasyonEkraniState();
}

class _MotivasyonEkraniState extends State<MotivasyonEkrani> {
  final List<String> yanitlar = [
    'Bugün enerjin yüksek!',
    'Sürprizlerle dolu bir gün seni bekliyor.',
    'Bir arkadaşın seni mutlu edecek.',
    'Daha fazla gülümse, güzel şeyler olacak.',
    'Küçük bir yürüyüş sana iyi gelebilir.',
    'Yeni fırsatlar seni bekliyor.',
    'İç sesini dinle, sana doğru yolu gösterecek.',
    'Bugün cesaretinle fark yaratabilirsin.',
    'Kendine inandığında her şey mümkün.',
    'Bir tebessüm dünyanı değiştirebilir.',
    'Hayat küçük mutluluklarla güzel.',
    'Bugün kendin için bir şey yap.',
    'Pozitif düşün, pozitif yaşa.',
    'Her yeni gün, yeni bir başlangıçtır.',
    'Kendine karşı nazik ol.',
    'Güzel şeyler sabredenlere gelir.',
    'Kendine güven, harikasın!',
    'Bugün kalbinin sesini dinle.',
    'Bir mucizeye hazır ol.',
    'Yaptığın küçük iyilikler büyür.',
    'Bugün senin günün!',
    'Kahkaha en iyi ilaçtır.',
    'Biraz müzik ruhuna iyi gelir.',
    'Hayal kurmaktan vazgeçme.',
    'İyilik bulaşıcıdır, yay!',
    'Her şey zamanla yoluna girer.',
    'Denge her şeydir.',
    'Yeni bir şey öğrenmek için harika bir gün.',
    'Yorgunsan, dinlenmek haktır.',
    'Bugün doğa sana iyi gelebilir.',
    'Kendini ödüllendir.',
    'Zorluklar seni daha güçlü yapar.',
    'Mutluluk içeriden gelir.',
    'Güneş yine senin için doğdu.',
    'Düşüncelerinle geleceğini şekillendirirsin.',
    'Bugün birini mutlu et!',
    'Gülümsemek bulaşıcıdır, yaymaya başla.',
    'İç huzur her şeyden önemli.',
    'Kendinle gurur duymalısın.',
    'Başarı, küçük adımlarla gelir.',
    'Karanlıkta bile bir ışık vardır.',
    'Kendini sevmek, en büyük devrimdir.',
    'Bugün başlamak için en iyi gün.',
    'İçindeki çocuk hâlâ orada, onu mutlu et.',
    'Yaşam, farkındalıkla güzelleşir.',
    'Kendine bir mola ver.',
    'Her gün bir armağandır.',
    'Bugün için teşekkür et.',
    'Hatalar, öğrenmenin bir parçası.',
    'Ufacık bir umut, büyük bir değişim yaratabilir.',
    'Şu an, tam da olman gereken yerdesin.',
    'İyiliğin gücünü küçümseme.',
    'Bugün seni bekleyen bir güzellik var.',
    'Her sabah yeniden doğmak gibidir.',
    'Ruhuna iyi geleni yap.',
    'Hayat, cesaret edene güzeldir.',
    'Yeni bir sayfa açmak için geç değil.',
    'Kendini ifade etmekten korkma.',
    'En karanlık an, şafaktan hemen öncedir.',
    'Sen yeterince iyisin.',
    'Gelecek, bugün yaptıklarınla şekillenir.',
    'Hayat sürprizlerle doludur.',
    'Bir dilek tut, evren seni dinliyor.',
    'Kalbinin götürdüğü yere git.',
    'Bugün küçük şeylerin kıymetini bil.',
    'Derin bir nefes al, her şey yolunda.',
    'Gülümsemek sana çok yakışıyor.',
    'Bugün iç huzurunu bulabilirsin.',
    'Yavaşla, hayatın tadını çıkar.',
    'Zamanla her şey yerine oturur.',
    'Kendinle baş başa kalmak iyidir.',
    'Yeni başlangıçlar seni bekliyor.',
    'Şefkat önce kendine olmalı.',
    'Hayat bir yolculuk, keyfini çıkar.',
    'Küçük zaferler de kutlanmalı.',
    'Şimdi mutlu olmak için bir sebep bul.',
    'Hayat senin bakış açınla şekillenir.',
    'Ruhun dans etsin bugün.',
    'İçindeki ışığı fark et.',
    'Mutluluk bir seçimdir.',
    'Bugün birini dinle, fark yaratabilirsin.',
    'Hayallerin peşinden gitmekten vazgeçme.',
    'Kendine sarılmayı unutma.',
    'İçinde bir mucize taşıyorsun.',
    'Gün ne getirirse getirsin, sen hazırsın.',
    'Umut, her zaman bir yerlerde saklıdır.',
    'Küçük şeyler büyük etkiler yaratır.',
    'Bugün bir iyilik yap, geri dönecektir.',
    'Ne hissediyorsan, geçerlidir.',
    'Güzel bir gün geçirmen dileğiyle.',
    'Yaşamı kutlamayı unutma.',
    'Senin varlığın çok değerli.',
    'Kendin için en iyisini iste.',
    'Sevgiyle kal.',
    'Bugün bir şeyleri serbest bırak.',
    'Her şey olması gerektiği gibi.',
    'Kendini keşfetmekten korkma.',
    'Sen özelsin.',
    'Yarın, bugünden daha güzel olabilir.',
    'Kalbinin rehberliğine güven.',
    'Zihnini temizle, yenilen.',
    'Güne gülümseyerek başla.',
  ];

  String gosterilenMesaj = 'Bugün nasıl hissediyorsun?';

  void rastgeleMesajGetir() {
    final rastgeleIndex = Random().nextInt(yanitlar.length);
    setState(() {
      gosterilenMesaj = yanitlar[rastgeleIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Günün Mesajı'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/falci.png', height: 150),
              SizedBox(height: 70),
              Text(
                gosterilenMesaj,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: rastgeleMesajGetir,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                ),
                child: const Text(
                  'Yeni Mesaj',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}