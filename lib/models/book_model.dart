class Book {
  final String title;
  final String author;
  final String imageUrl;
  final String summary;
  final String genre;

  Book({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.summary,
    required this.genre,
  });
}

final List<Book> books = [
  Book(
      title: 'Zengin Baba Yoksul Baba',
      author: 'Robert T. Kiyosaki',
      imageUrl: 'https://m.media-amazon.com/images/I/51iOMFWwO7L._SY466_.jpg',
      summary:
          "Robert T. Kiyosaki'nin Zengin Baba Yoksul Baba kitabı, finansal okuryazarlık ve kişisel finans konularında önemli bilgiler sunar. Kitapta, yazarın iki babadan aldığı farklı finansal öğretiler anlatılır. Yazarın biyolojik babası, yoksul baba olarak tanımlanır ve geleneksel eğitim ve kariyer yolunu takip ederken, yazarın en iyi arkadaşının babası olan zengin baba, girişimcilik ve yatırım odaklı düşünce tarzını benimser. Kitap, zengin baba tarafından verilen finansal bağımsızlık, yatırım yapma, gayrimenkul alımı ve iş kurma gibi konularda pratik tavsiyelerle doludur. Ana mesajı, finansal başarı için sadece iyi bir eğitim değil, aynı zamanda parayı nasıl yöneteceğinizi ve nasıl yatırım yapacağınızı öğrenmenin de gerekli olduğudur.",
      genre: 'Kişisel Gelişim ve Finansal Eğitim'),
  Book(
      title: 'Simyacı',
      author: 'Paulo Coelho',
      imageUrl:
          'https://m.media-amazon.com/images/I/41N1PqT+HPL._SX342_SY445_.jpg',
      genre: 'Felsefi Roman',
      summary:
          "Paulo Coelho'nun Simyacı romanı, İspanyol çoban Santiago'nun kişisel hazineyi bulma yolculuğunu anlatır. Santiago, rüyasında Mısır piramitlerinde bir hazine olduğunu görür ve bu rüyayı takip etmeye karar verir. Yolculuğu boyunca pek çok insanla tanışır ve onlardan önemli hayat dersleri alır. Melchizedek adlı bir kral, ona Kişisel Menkıbe’sini gerçekleştirme konusunda cesaret verir. Santiago, bir çöl karavanıyla yolculuk ederken, çölün zorluklarıyla başa çıkmayı öğrenir ve Fatima adında bir kadınla tanışarak aşık olur. Simya ve evrenin dilini öğrenmek için bir simyacıyla tanışır. Simyacı, Santiago'ya gerçek hazinenin yolculuk boyunca kazandığı deneyimler ve öğrendiği dersler olduğunu gösterir. Sonunda, Santiago, aradığı hazinenin aslında başladığı yerde, eski bir kilisenin avlusunda gömülü olduğunu keşfeder. Roman, hayallerin peşinden gitmenin, kişisel hedefleri takip etmenin ve içsel dönüşümün önemini vurgular."),
  Book(
      title: 'Tutunamayanlar',
      author: 'Oğuz Atay',
      imageUrl: 'https://m.media-amazon.com/images/I/711us9mu54L._SY466_.jpg',
      summary:
          "Oğuz Atay'ın 'Tutunamayanlar' romanı, modern Türk edebiyatının en önemli eserlerinden biri olarak kabul edilir ve hayatlarında çeşitli başarısızlıklar yaşayan karakterlerin hikayelerini anlatır. Romanın ana karakteri Selim Işık, toplumun beklentilerine uyum sağlayamayan ve kendini sürekli sorgulayan bir birey olarak, hayatını sonlandırır. Selim'in arkadaşı Turgut Özben, onun intiharının ardındaki sebepleri anlamaya çalışırken, Selim'in hayatını ve onun çevresindeki diğer insanların hikayelerini keşfeder. Roman, toplumsal normlara uyum sağlayamayan bireylerin içsel çatışmalarını, yalnızlıklarını ve toplumdan yabancılaşmalarını derinlemesine işlerken, yer yer ironik ve mizahi bir dille bu durumları ele alır. 'Tutunamayanlar', bireyin varoluşsal sorunlarını ve modern toplumdaki yerini sorgulayan bir başyapıttır.",
      genre: 'Kurgu'),
  Book(
      title: 'Kürk Mantolu Madonna',
      author: 'Sabahattin Ali',
      imageUrl:
          'https://m.media-amazon.com/images/I/414lZx+r2VL._SY445_SX342_.jpg',
      summary:
          "Sabahattin Ali'nin Kürk Mantolu Madonna romanı, Rasim adlı bir karakterin, iş arkadaşı Raif Efendi'nin günlüklerini keşfetmesiyle başlar ve bu günlüklerde Raif'in gençlik yıllarında Berlin'de yaşadığı tutkulu aşk anlatılır. Berlin'de sanatla ilgilenen Raif, bir galeride gördüğü Kürk Mantolu Madonna adlı tabloya hayran kalır ve tablonun ressamı Maria Puder ile tanışarak derin bir aşk yaşamaya başlar. Ancak hayatın zorlukları ve talihsizlikler, bu aşkın trajik bir sona ulaşmasına neden olur ve Raif, Maria'yı kaybettikten sonra duygusal olarak içine kapanarak Türkiye'ye döner ve sıradan bir yaşam sürer. Roman, aşkın, yalnızlığın ve insan ruhunun derinliklerine inen etkileyici bir anlatı sunar, Raif'in yaşamındaki bu unutulmaz aşk, onun hayatını ve ruhunu şekillendirir.",
      genre: 'Aşk Romanı'),
  Book(
      title: 'Aşk',
      author: 'Elif Şafak',
      imageUrl:
          'https://m.media-amazon.com/images/I/41QHf+QysEL._SX342_SY445_.jpg',
      summary:
          "Elif Şafak'ın Aşk romanı, İstanbul'un karmaşık dokusunda geçen bir aşk hikayesini anlatır. Romanın ana karakterleri, miniatur ressamı İstanbul'lu Raif Efendi ve Amerikalı gazeteci, anadolu kökenli Arap bir ailenin kızı olan Kadife. İki farklı kültür ve geçmişe sahip olan bu karakterler, beklenmedik bir şekilde karşılaşır ve birbirlerine aşık olurlar. Ancak, aşkları sadece kişisel değil, aynı zamanda tarihsel ve toplumsal engellerle de karşı karşıyadır. Roman, İstanbul'un sokaklarından Anadolu'nun köylerine kadar uzanan bir yolculukta, aşkın gücünü ve insanın köklerine olan bağlılığını derinlemesine inceler. Aynı zamanda, farklı kültürlerin, inançların ve geçmişin çatışmasıyla şekillenen bir aşkın hikayesini anlatarak evrensel bir temayı ele alır.",
      genre: 'Toplumsal Roman'),
  Book(
      title: 'Beyaz Gemi',
      author: 'Cengiz Aytmatov',
      imageUrl:
          'https://m.media-amazon.com/images/I/518kmQJEy7L._SX342_SY445_.jpg',
      summary:
          "Cengiz Aytmatov'un Beyaz Gemi adlı eseri, Kırgız yazarın edebi mirasının önemli bir parçasıdır. Roman, bir grup genç adamın, özellikle de ana karakter olan Cemile ile ona aşık olan Celil'in hikayesini anlatır. Hikaye, Celil'in Sovyet dönemindeki toplumsal ve siyasi baskılar altında yetiştiği Kırgızistan'ın Issık Gölü kıyısındaki küçük bir köyde geçer. Cemile, köydeki hayatı, gelenekleri ve güzellikleri ile özdeşleşen bir figürdür. Celil'in Cemile'ye olan aşkı, eserin temel odak noktasını oluşturur ve onun için bir takıntıya dönüşür. Romanın ilerleyen bölümlerinde, Celil'in Cemile'yi etkileme çabaları ve aralarındaki duygusal bağın karmaşıklığı daha da derinleşir. Ancak, bu aşk hikayesi sadece iki genç arasındaki romantizmle sınırlı değildir; aynı zamanda Kırgızistan'ın sosyal ve politik gerçekliği ile de örtüşür. Sovyet dönemindeki toplumsal değişimler ve baskılar, karakterlerin hayatlarını ve ilişkilerini etkiler. Beyaz Gemi, aşk, özgürlük ve insanın doğası gibi evrensel temaları ele alırken, aynı zamanda Kırgız kültürünü ve tarihini de derinlemesine inceler.",
      genre: 'Toplumsal Roman'),
  Book(
      title: 'İnce Memed 1',
      author: 'Yaşar Kemal',
      imageUrl: 'https://m.media-amazon.com/images/I/61dLMGEF3+L._SY466_.jpg',
      summary:
          "İnce Memed, Yaşar Kemal'in unutulmaz roman serisinin ilk kitabıdır ve 1930'lu yıllarda Anadolu'nun dağlık bölgelerinde geçer. Ana karakter İnce Memed, köyünde zulme uğramış ve haksızlığa karşı çıkan bir gençtir. Ağaların baskısına ve zalimliklerine karşı duran Memed, bir gün kaçarak dağlara yerleşir ve orada özgür bir hayat yaşamaya başlar. Roman, Memed'in dağlarda yaşadığı maceraları, çatışmaları ve özgürlük arayışını anlatır. Memed, diğer köylülerle dayanışma içinde yaşar, köylülere yardım ederken aynı zamanda ağalara karşı direniş örgütlerinin lideri haline gelir. Hikaye, Anadolu'nun toplumsal ve siyasi gerçekleriyle birlikte, insanın özgürlük ve adalet arayışını ele alır. Güçlü bir dille, doğayla iç içe geçen ve insan ruhunun derinliklerine inen bir anlatı sunar.",
      genre: 'Toplumsal Roman'),
  Book(
      title: 'Yaban',
      author: 'Yakup Kadri Karaosmanoğlu',
      imageUrl:
          'https://m.media-amazon.com/images/I/41ZKDBKdiFL._SX342_SY445_.jpg',
      summary:
          "Yakup Kadri Karaosmanoğlu'nun Yaban adlı romanı, Türk edebiyatının önemli eserlerinden biridir. Roman, Kurtuluş Savaşı sonrası İstanbul'un sosyal ve politik yapısını ele alır. Hikaye, Anadolu'dan İstanbul'a gelen İrfan'ın şehir hayatına uyum sağlama sürecini anlatır. İrfan, İstanbul'un modernleşme çabaları, Batılılaşma ve geleneksel değerler arasında bocalarken, çeşitli karakterlerle karşılaşır. Bu karakterler arasında, toplumun farklı kesimlerinden insanlar, entelektüeller ve işçiler bulunur. İrfan'ın yaşadığı çatışmalar, onun içsel dünyasında da yansıma bulur ve zamanla kendini bulma sürecine dönüşür. Roman, İstanbul'un karmaşık yapısını ve Cumhuriyet dönemi toplumsal değişimlerini derinlemesine incelerken, aynı zamanda bireyin kimlik arayışını ve modernleşme sürecindeki çatışmalarını da ele alır.",
      genre: 'Toplumsal Roman'),
  Book(
      title: 'Anayurt Oteli',
      author: 'Yusuf Atılgan',
      imageUrl:
          'https://m.media-amazon.com/images/I/41u5bloyY7L._SX342_SY445_.jpg',
      summary:
          "Yusuf Atılgan'ın Anayurt Oteli romanı, psikolojik derinliği ve karanlık atmosferiyle Türk edebiyatının önemli eserlerinden biridir. Hikaye, bir otelde yaşayan genç bir adam olan Zebercet'in monoton ve izole hayatını anlatır. Zebercet, çevresiyle olan iletişimini minimalize etmiş, içsel dünyasında yaşamaya başlamıştır. Ancak oteline gelen genç bir kadın, Zebercet'in yaşamını alt üst eder. Kadının varlığı, Zebercet'in iç dünyasını sarsar ve onu farklı duygulara sürükler. Roman, Zebercet'in iç çatışmalarını, yalnızlığını ve toplumla olan ilişkisizliğini ele alırken, aynı zamanda insan psikolojisini derinlemesine inceler. Yusuf Atılgan'ın sürükleyici üslubuyla kaleme aldığı Anayurt Oteli, okuyucuyu karakterin karmaşık dünyasına çekerken, toplumsal yalnızlık ve insanın varoluşsal sorgulamaları üzerine düşündürür.",
      genre: 'Toplumsal Roman'),
  Book(
      title: 'Eylül',
      author: 'Mehmet Rauf',
      imageUrl:
          'https://m.media-amazon.com/images/I/41h3XTM1pnL._SY445_SX342_.jpg',
      summary:
          "Mehmet Rauf'un Eylül adlı romanı, İstanbul'un sosyal dokusunu ve insan ilişkilerini derinlemesine inceleyen önemli bir eserdir. Hikaye, İstanbul'un varlıklı ailelerinden birine mensup olan Nisan Bey'in, genç ve güzel bir kız olan Nigân'a olan aşkını konu alır. Ancak Nigân, Nisan Bey'in zenginliğine ve yaşına karşılık vermez ve onunla evlenmek istemez. Nisan Bey'in aşkı, onun iç dünyasında derin izler bırakır ve zamanla psikolojik bir çöküş yaşar. Roman, aşk, tutku, kıskançlık ve hüsran gibi temaları işlerken, aynı zamanda dönemin toplumsal yapısını da eleştirir. Mehmet Rauf'un akıcı üslubuyla kaleme aldığı Eylül, okuyucuları İstanbul'un eski sokaklarına ve aristokrat yaşamının iç dünyasına sürüklerken, insan psikolojisinin karmaşıklığını da derinlemesine inceler.",
      genre: 'Toplumsal Roman'),
  Book(
      title: 'Sergüzeşt',
      author: 'Samipaşazade Sezai',
      imageUrl:
          'https://m.media-amazon.com/images/I/51bZL1YgGGL._SX342_SY445_.jpg',
      summary:
          "Sergüzeşt, Sami Paşazade Sezai'nin Türk edebiyatına kazandırdığı önemli eserlerden biridir. Roman, Osmanlı toplumunun çeşitli kesimlerinden karakterlerin hayatlarını ve ilişkilerini anlatır. Hikaye, İstanbul'un farklı semtlerinde geçerken, ana karakterlerin yaşadığı olaylar ve maceralar aracılığıyla dönemin toplumsal yapısını ve insan ilişkilerini derinlemesine inceler. Aşk, entrika, intikam gibi temaları işlerken, aynı zamanda Osmanlı döneminin sosyal ve kültürel dokusunu da yansıtır. Sami Paşazade Sezai'nin akıcı üslubuyla kaleme aldığı Sergüzeşt, okuyucuları sürükleyici bir maceranın içine çekerken, dönemin İstanbul'unun atmosferini ve insanların iç dünyalarını keşfetmeye davet eder.",
      genre: 'Roman'),
  Book(
      title: 'Aşk-ı Memnu',
      author: 'Halit Ziya Uşaklıgil',
      imageUrl:
          'https://m.media-amazon.com/images/I/41HwrfizJZL._SY445_SX342_.jpg',
      summary:
          "Aşk-ı Memnu, Halit Ziya Uşaklıgil'in Türk edebiyatının önemli eserlerinden biridir. Roman, zengin bir ailenin yaşadığı entrikalarla dolu İstanbul'un sosyal çevresinde geçer. Ana karakterlerden Bihter, kendisi gibi zengin ve evli olan Adnan Bey'e aşık olur. Ancak bu aşk, ahlaki sınırları aşar ve toplumun normlarına aykırı bir ilişkiye dönüşür. Bihter'in kocası Adnan Bey'in yeğeni Behlül ile aralarında duygusal bir ilişki başlar. Roman, bu yasak aşk üçgeni etrafında gelişen olayları ve karakterlerin iç dünyalarını incelerken, aynı zamanda dönemin toplumsal yapısını da eleştirir. Aşk-ı Memnu, tutku, ihanet, ahlaki çatışmalar ve toplumsal baskılar gibi temaları işlerken, okuyucuya derin bir duygusal deneyim sunar.",
      genre: 'Romantik Roman'),
  Book(
      title: 'Çalıkuşu',
      author: 'Reşat Nuri Güntekin',
      imageUrl: 'https://m.media-amazon.com/images/I/51CNpBIb6VL._SY466_.jpg',
      summary:
          "Çalıkuşu, Reşat Nuri Güntekin'in Türk edebiyatının klasiklerinden biridir. Roman, genç ve idealist bir öğretmen olan Feride'nin yaşamını merkeze alır. Feride, Anadolu'nun fakir bir köyünde öğretmenlik yapmaya başlar ve burada zorlu yaşam koşullarıyla karşılaşır. Köyde tanıştığı genç doktor Kamran'a aşık olur ancak onunla evlenmeyi reddeder. Feride, daha sonra İstanbul'a giderek ailesinin yanına yerleşir ve zengin bir ailenin çocuklarına öğretmenlik yapar. Ancak burada da aşk acısı ve toplumsal baskılarla karşılaşır. Roman, Feride'nin yaşadığı içsel çatışmaları, aşkı ve fedakarlığı ele alırken, aynı zamanda dönemin toplumsal yapısını ve kadının rolünü inceler. Reşat Nuri Güntekin'in sade ve etkileyici üslubuyla kaleme aldığı Çalıkuşu, okuyucuları duygusal bir yolculuğa çıkarırken, Türk edebiyatının önemli eserlerinden biri olarak kabul edilir.",
      genre: 'Romantik Roman'),
  Book(
      title: 'Atomik Alışkanlıklar',
      author: 'James Clear',
      imageUrl: 'https://m.media-amazon.com/images/I/61vZr+Uy--L._SY466_.jpg',
      summary:
          "Atomic Habits: Tiny Changes, Remarkable Results adlı kitap, James Clear tarafından kaleme alınmıştır ve alışkanlıkların gücünü ve önemini vurgulamaktadır. Clear, başarıyı büyük değişimler yerine küçük, düzenli adımlarla elde etmenin önemini anlatır. Kitap, alışkanlıkların nasıl oluşturulduğunu, güçlendirildiğini ve sürdürüldüğünü açıklarken, aynı zamanda kişisel gelişimde etkili stratejiler sunar. Clear, 'atomik alışkanlıklar' kavramını tanımlayarak, hedeflerimize ulaşmak için küçük ve tutarlı adımların nasıl birer yapı taşı olabileceğini gösterir. Örnekler ve bilimsel araştırmalarla desteklenen kitap, okuyuculara kişisel ve mesleki hayatlarında olumlu değişiklikler yapmalarına yardımcı olurken, aynı zamanda sürekli gelişme ve ilerleme konusunda ilham verir.",
      genre: 'Kişisel Gelişim'),
  Book(
      title: 'Düşlerin Kaynağı',
      author: 'Sigmund Freud',
      imageUrl: 'https://m.media-amazon.com/images/I/41eeu0xCdWL._SY466_.jpg',
      summary:
          "Düşlerin Kaynağı adlı eser, Sigmund Freud'un rüya yorumu ve psikanaliz üzerine önemli bir metnidir. Freud, rüyaların insan psikolojisi ve bilinçaltıyla derin bir ilişkisi olduğunu savunur. Kitapta, rüyaların nasıl oluştuğu, içeriği ve anlamı üzerine detaylı bir analiz sunar. Freud'a göre, rüyalar bilinçaltındaki isteklerin ve düşüncelerin sembolik bir ifadesidir ve bu nedenle rüya yorumu, kişinin psikolojik durumu hakkında önemli ipuçları sağlar. Freud, rüyaların arka planında yatan gizli anlamları açığa çıkarmak için serbest çağrışım yöntemini kullanır ve bu, psikanalizin temel taşlarından biri olarak kabul edilir. Düşlerin Kaynağı, Freud'un psikanaliz teorisinin temel eserlerinden biri olarak kabul edilir ve psikoloji alanında önemli bir dönüm noktası olarak değerlendirilir.",
      genre: 'Bilimsel Araştırma'),
  Book(
      title: 'Olağanüstü Bir Gece',
      author: 'Stefan Zweig',
      imageUrl: 'https://m.media-amazon.com/images/I/71BCYPV1kBL._SY466_.jpg',
      summary:
          "Olağanüstü Bir Gece, Stefan Zweig tarafından kaleme alınmış kısa bir hikayedir. Hikaye, bir tren yolculuğunda karşılaşan iki yabancının yaşadığı beklenmedik olayları anlatır. Birbirlerine isimlerini söylemeden sadece numara vererek tanışan bu iki adam, yolculukları boyunca kendilerini birbirlerine tamamen açarlar. Gündelik yaşamlarından kaçış olarak gördükleri bu yolculuk, ikisinin de hayatında derin etkiler bırakır. Karakterlerin iç dünyalarının derinliklerine inen hikaye, insan ilişkilerinin karmaşıklığını ve beklenmedik dostlukların doğuşunu anlatır.",
      genre: 'Kısa Hikaye'),
  Book(
      title: 'Amok Koşucusu',
      author: 'Stefan Zweig',
      imageUrl: 'https://m.media-amazon.com/images/I/91Pqhs7WlFS._SY466_.jpg',
      summary:
          "Stefan Zweig'in 'Amok Koşucusu' adlı eseri, bir doktorun Malezya'da yaşadığı sıra dışı bir olayı anlatır. Doktor, Malezya'da görev yaparken, genç ve güzel bir kadına aşık olur ancak bu aşkı karşılıksız kalır. Kadının evli olması ve doktorun duygusal karmaşası, onu adeta deliliğe sürükler. Doktor, kadına olan takıntılı aşkı ve içinde bulunduğu çıkmazı aşmak için çılgınca bir plan yapar ve sonunda trajik bir sonla yüzleşir. Eser, aşkın ve tutkunun insan psikolojisi üzerindeki etkisini derinlemesine incelerken, aynı zamanda insanın iç dünyasındaki karanlık ve çelişkili yanları da gözler önüne serer.",
      genre: 'Psikolojik hikaye'),
  Book(
      title: 'Deliliğe Övgü',
      author: 'Erasmus',
      imageUrl: 'https://m.media-amazon.com/images/I/519ukuXQ31L._SY466_.jpg',
      summary:
          "Erasmus'un 'Deliliğe Övgü' adlı eseri, deliliğin çeşitli yönlerini incelerken, aynı zamanda toplumun sahip olduğu 'akıllı' normlarını eleştirir. Eserde, delilik kavramının farklı tanımları ve değerlendirmeleri sunulurken, deliliğin özgürleştirici ve yaratıcı bir güç olduğu savunulur. Erasmus, deliliği 'akıllı' olmaktan daha üstün gösterir ve akıl sahibi insanların sahip olduğu kuralların ve düzenin, gerçek özgürlüğün önünde engeller olduğunu öne sürer. Eser, zekice mizahi bir üslupla kaleme alınmıştır ve dönemin toplumsal normlarına ve dini kurallara karşı alaycı bir tutum sergiler. Erasmus'un 'Deliliğe Övgü' eseri, insan doğasının karmaşıklığını ve toplumsal normların sorgulanmasını ele alırken, aynı zamanda Rönesans döneminin düşünsel atmosferini yansıtır.",
      genre: 'Mizah'),
  Book(
      title: 'Suç ve Ceza',
      author: 'Fyodor Dostoyevski',
      imageUrl:
          'https://m.media-amazon.com/images/I/41FfU89kuNL._SX342_SY445_.jpg',
      summary:
          "Fyodor Dostoyevski'nin 'Suç ve Ceza' adlı romanı, Raskolnikov adındaki genç bir adamın zihninde yaşadığı iç çatışmayı ve sonuçlarını anlatır. Raskolnikov, yoksulluk içinde yaşayan ancak potansiyeli olan bir öğrencidir. Roman, Raskolnikov'un 'üstün insan' teorisine dayanarak, bir tüccarı öldürmesini ve onun parasını almasını konu alır. Ancak bu cinayetin ardından Raskolnikov, içsel çatışma yaşar ve vicdan azabı çeker. Aynı zamanda dedektif Porfiry'nin sorgulaması altında zor bir süreç geçirir. Roman, Raskolnikov'un suçunu itiraf etme sürecini ve sonrasında yaşadığı pişmanlığı, kefaret arayışını ve adalet arayışını detaylı bir şekilde ele alır. Dostoyevski'nin derinlikli karakter analizleri ve toplumsal eleştirisiyle dolu olan bu eser, ahlaki ve etik konuları sorgularken, aynı zamanda insan doğasının karmaşıklığını ve ruhsal çatışmalarını derinlemesine inceler.",
      genre: 'Psikolojik Roman'),
  Book(
      title: 'Karamazov Kardeşler',
      author: 'Fyodor Dostoyevski',
      imageUrl:
          'https://m.media-amazon.com/images/I/41t11Sv-gxL._SY445_SX342_.jpg',
      summary:
          "Dostoyevski'nin 'Karamazov Kardeşler' adlı romanı, Rusya'nın 19. yüzyıl toplumunu ve insan doğasını derinlemesine inceleyen bir başyapıttır. Roman, Karamazov ailesinin üç kardeşi olan Dmitri, İvan ve Alyosha'nın etrafında döner. Dmitri, babası Fyodor'un parasını ve sevgilisi olan Grushenka'yı almak için mücadele ederken, aynı zamanda İvan'ın rasyonalizm ve ahlaki çatışmalarıyla yüzleşir. Alyosha ise dini inançları ve ruhani arayışlarıyla öne çıkar. Roman, aile ilişkileri, ahlaki çelişkiler, dini sorgulamalar ve insanın içsel mücadeleleri gibi temaları ele alırken, aynı zamanda Rusya'nın sosyal ve kültürel dokusunu da derinlemesine inceler. Dostoyevski'nin karakter analizleri ve zengin betimlemeleriyle dolu olan bu eser, insan ruhunun derinliklerine inen bir yolculuğa çıkarırken, aynı zamanda evrensel soruları da sorgular.",
      genre: 'Psikolojik Roman'),
  Book(
      title: 'Yeraltından Notlar',
      author: 'Fyodor Dostoyevski',
      imageUrl:
          'https://m.media-amazon.com/images/I/31OTyg8F-1L._SY445_SX342_.jpg',
      summary:
          "Dostoyevski'nin 'Yeraltından Notlar' adlı eseri, bir isimsiz anlatıcının iç monologlarını ve düşüncelerini temel alır. Roman, toplumun normlarına karşı gelen, muhalif bir ruhun iç dünyasını inceler. Anlatıcı, toplumun kabul ettiği değerleri sorgular ve çoğu zaman bu değerlerin tersine hareket eder. İronik bir üslupla yazılan eser, modern insanın ruhsal çatışmalarını ve toplumsal izolasyonunun etkilerini derinlemesine inceler. Yeraltı adamı olarak adlandırılan anlatıcı, kendi kendine çelişen düşünceleriyle ve toplumla olan ilişkilerindeki çıkmazlarıyla okuyucuyu sarsar ve düşündürür. Roman, insanın iç dünyasındaki karanlık ve çelişkili yanları gözler önüne sererken, aynı zamanda toplumsal normların insan üzerindeki baskısını da eleştirir. Dostoyevski'nin derinlikli karakter analizleri ve güçlü mizahi tonuyla kaleme aldığı bu eser, edebi bir başyapıt olarak kabul edilir ve modern edebiyatın önemli eserlerinden biri olarak değerlendirilir.",
      genre: 'Psikolojik Roman'),
];
