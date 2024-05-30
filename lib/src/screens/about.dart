// src/screens/about.dart
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.person, color: Colors.black, size: 30),
              SizedBox(width: 10),
              Text(
                "About Me",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(color: Colors.black),
          SizedBox(height: 10),
          Text(
            'Saya telah mengenal dengan dunia komputer sejak usia 12 tahun. Ketertarikan saya terhadap pelajaran seperti Matematika, Fisika, Kimia, dan Elektronika, telah membantu saya memahami berbagai aspek hardware komputer dengan lebih mendalam. Pada usia 15 tahun, saya mulai mempelajari dunia pemrograman menggunakan bahasa C++, yang membuka jalan bagi saya untuk mendalami software engineering. Kini, di usia 19 tahun, saya memiliki pemahaman yang komprehensif tentang hardware dan software komputer, dan saya fokus pada pengembangan perangkat lunak.',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
