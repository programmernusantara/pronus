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
            'Sejak usia 12 tahun, saya sudah tertarik dengan komputer. Ketertarikan awal pada hardware komputer diperkuat oleh minat saya yang tertarik dengan pelajaran matematika, fisika, kimia, dan elektronika. Dengan semangat belajar yang tak pernah padam, saya berhasil memahami jaringan komputer secara menyeluruh di usia 15 tahun. Pada usia 18 tahun, saya merambah dunia pemrograman, mempelajari pengembangan perangkat lunak dari sisi client dan server. Kini, di usia 19 tahun, saya fokus pada pengembangan perangkat lunak dengan tekad kuat untuk terus berinovasi dan memberikan kontribusi terbaik. Saya percaya bahwa perjalanan ini baru permulaan, dan saya bersemangat untuk melihat sejauh mana saya bisa melangkah dalam industri teknologi.',
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
