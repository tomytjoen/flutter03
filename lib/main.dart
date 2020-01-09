import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(TugasKeTiga());

var dataFlutter = [
  {
    "title": "PON 1 Indonesia",
    "image": "pon1_1.jpg",
    "description":
        "PON pertama ini diresmikan oleh Presiden Pertama Republik Indonesia Soekarno dan penutupan dilakukan oleh Sri Sultan Hamengkubuwono IX Selaku Ketua Komite Olimpiade Republik Indonesia (KORI). Sekitar 600 orang atlet mempertandingkan beberapa cabang olahraga diantaranya."
  },
  {
    "title": "PON 2 Indonesia",
    "image": "pon1_2.jpg",
    "description":
        "Dalam PON I/1948 ini, tuan rumah Solo berhasil meraih medali emas sepak bola PON. Inilah hasil pertandingan sepak bola PON I/1948: Yogya vs Madiun 1-0, Madiun vs Jakarta 3-2, dan Jakarta vs Yogya 1-2. Bandung vs Semarang 1-4, Semarang vs Solo 2-2, dan Solo vs Bandung 4-0. Final: Yogya vs Solo 0-5."
  },
  {
    "title": "PON 3 Indonesia",
    "image": "pon1_3.jpg",
    "description":
        "Perjalanan bulu tangkis di berbagai daerah di Indonesia, seperti membentuk jalurnya sendiri. Mulai dari Indonesia bagian barat ke timur. Jalur-jalur perjalanan bulu tangkis itu bisa dilihat dari keberadaan klub yang dimiliki, kejuaraan antarklub dan kompetisi rutin dalam satu wilayah, dan kesertaan wilayah saat dilaksanakan PON I pada 1948 di Solo hingga PON berikutnya. Dalam beberapa catatan, bulu tangkis masuk dan berkembang melalui Malaya, kemudian masuk lewat Medan, Palembang, Jakarta, Semarang, Surabaya, dan Makassar."
  },
  {
    "title": "PON 4 Indonesia",
    "image": "pon1_4.jpg",
    "description":
        "Pada 12 September 1948, sesuai jadwal yang ditetapkan, PON I secara resmi berakhir dengan Surakarta tampil sebagai juara umum. Tuan rumah merajai cabang sepakbola, bulutangkis, renang, panahan, dan pencak silat. Juara kedua ditempati Yogyakarta, disusul Kediri sebagai juara ketiga. Secara umum PON I berlangsung aman meskipun sempat terjadi insiden-insiden kecil di lapangan. Penonton pun antusias menonton pesta olahraga nasional pertama di Indonesia itu."
  },
  {
    "title": "PON 5 Indonesia",
    "image": "pon1_5.jpg",
    "description":
        "Dalam kondisi perang dan diblokade Belanda, pemerintah Indonesia tak gentar menggelar hajatan besar Pekan Olahraga Nasional (PON) pertama. Presiden Sukarno sendiri hadir dalam pembukaannya pada 9 September 1948. Suasana tegang ternyata juga tak menyurutkan antusiasme warga Surakarta untuk menyaksikan pembukaannya di Stadion Sriwedari."
  },
  {
    "title": "PON 6 Indonesia",
    "image": "pon1_6.jpg",
    "description":
        "Penyelenggaraan PON I juga mengandung pesan politik: menunjukkan kepada Belanda bahwa Indonesia adalah negara berdaulat. Soal ini pun disinggung pula oleh Presiden Sukarno dalam pidato pembukaannya."
  },
  {
    "title": "PON 7 Indonesia",
    "image": "pon1_7.jpg",
    "description":
        "PON I di Surakarta digelar sebagai antitesis Olimpiade London 1948. Persatuan Olahraga Republik Indonesia (PORI) yang terbentuk pada Januari 1946 sebelumnya berupaya agar Indonesia bisa ikut dalam Olimpiade. Untuk menunjukkan keseriusan Indonesia, PORI pun membentuk Komite Olimpiade Republik Indonesia (KORI), yang diketuai Sri Sultan Hamengku Buwono IX."
  },
  {
    "title": "PON 8 Indonesia",
    "image": "pon1_8.jpg",
    "description":
        "Dwi Suprandari dalam artikel “Mengenang Pekan Olahraga Nasional Pertama di Solo” yang tayang di Kompas (8/9/1983) menyebutkan, PON I diikuti oleh 13 daerah. Semuanya dari Jawa karena blokade Belanda membuat perwakilan daerah luar mustahil diundang dan datang. Daerah-daerah peserta PON I di antaranya adalah Yogyakarta, Surakarta, Surabaya, Malang, Kediri, Madiun, Semarang, Pati, Kedu, Magelang, Banyumas, Bandung, dan Jakarta."
  },
  {
    "title": "PON 9 Indonesia",
    "image": "pon1_9.jpg",
    "description":
        "Ada sembilan cabang olahraga dipertandingkan dalam PON I: atletik, bola keranjang (korfball), bulutangkis, tenis, renang, panahan, sepakbola, basket, dan anggar."
  },
  {
    "title": "PON 10 Indonesia",
    "image": "pon1_10.jpg",
    "description":
        "Secara umum PON I berlangsung aman meskipun sempat terjadi insiden-insiden kecil di lapangan. Penonton pun antusias menonton pesta olahraga nasional pertama di Indonesia itu."
  },
];

class TugasKeTiga extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.home), title: Text('-: Tugas Flutter Ke 3 :-')),
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: dataFlutter.length,
        padding: const EdgeInsets.all(2),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          childAspectRatio: 1,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridViewList(
            title: dataFlutter[index]['title'],
            image: dataFlutter[index]['image'],
            description: dataFlutter[index]['description'],
          );
        },
      ),
    );
  }
}

class GridViewList extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  GridViewList({
    this.title,
    this.image,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GridTile(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/' + image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return HalamanDetail(
            title: title,
            image: image,
            desc: description,
          );
        }));
      },
    );
  }
}

class HalamanDetail extends StatelessWidget {
  final String title;
  final String image;
  final String desc;

  HalamanDetail({
    this.title,
    this.image,
    this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Detail',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halaman Detail'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  title,
                  softWrap: true,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset(
                'assets/images/' + image,
                fit: BoxFit.cover,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Text(
                  desc,
                  softWrap: true,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
