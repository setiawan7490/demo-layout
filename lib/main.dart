import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Title section with the icon
    Widget titlesection = Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Osechine Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const SizedBox(width: 4),
          const Text('41'),
        ],
      ),
    );
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
    'Danau Toba adalah salah satu keajaiban alam Indonesia yang menakjubkan, menggabungkan keindahan alam yang luar biasa dengan warisan budaya yang kaya. '
    'Nama:Moh.Rendi Setiawan NIM:362358302167 '
    'Layout Demo. ',
    softWrap: true,
  ),
);

    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Moh.Rendi Setiawan | 362358302167"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/danau.png',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titlesection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  //button
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
}

