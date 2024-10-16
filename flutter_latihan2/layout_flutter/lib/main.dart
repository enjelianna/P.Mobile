import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Membuat widget titleSection
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
          32), // padding sepanjang tepinya sebesar 32 piksel
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Alam Indonesia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Warna teks diatur menjadi abu-abu
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red, // Warna ikon bintang diatur ke merah
          ),
          const Text('41'),
        ],
      ),
    );

    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    // Mendapatkan warna tema dan membuat buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Indonesia adalah negara dengan kekayaan alam yang luar biasa.'
        'Dari puncak gunung yang menjulang tinggi hingga pantai-pantai tropis yang memukau, setiap sudutnya menawarkan keindahan yang tak tertandingi.'
        'Nikmati pesona pegunungan hijau, air terjun yang memancar sejuk, hingga hutan-hutan tropis yang memanjakan mata.'
        'Di Indonesia, alam berbicara dengan caranya sendiri—menyapa dengan keindahan yang menenangkan jiwa dan memanggil petualang untuk mengeksplorasi keajaibannya.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: ANGELIA, 2241760016',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/alam.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Menampilkan widget titleSection
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
