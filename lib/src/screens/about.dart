import 'package:flutter/material.dart';

import '../widgets/container.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Me",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Divider(color: Colors.black),
          SizedBox(height: 10),
          Text(
            'Sejak umur 12 tahun, saya tertarik pada dunia komputer, khususnya hardware, berkat ketertarikan saya pada matematika, fisika, kimia, dan elektronika. Pada usia 15 tahun, saya sudah menguasai jaringan komputer secara mendalam. Saat mencapai usia 18 tahun, saya mulai menjelajahi dunia pemrograman, mempelajari pengembangan perangkat lunak dari sisi client dan server. Sekarang, di usia 19 tahun, saya berfokus pada pengembangan perangkat lunak, Saya percaya ini adalah awal yang menjanjikan, dan saya penuh semangat untuk terus tumbuh dan berkembang dalam industri teknologi.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
