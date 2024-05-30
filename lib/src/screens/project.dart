// src/screens/about.dart
import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.work,
                  color: Colors.black, size: 30), // Ganti ikon di sini
              SizedBox(width: 10),
              Text(
                "Project",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.black),
          const SizedBox(height: 10),
          const SizedBox(height: 20),
          // Di sini gambar project
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: AspectRatio(
              aspectRatio:
                  16 / 9, // Anda bisa menyesuaikan rasio ini sesuai kebutuhan
              child: Image.asset(
                'assets/project/portofolio.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10), // Jarak antara gambar dan judul
          const Text(
            'Proyek ini adalah sebuah situs web portofolio yang dikembangkan menggunakan Dart dan Flutter. Tujuan utama dari proyek ini adalah untuk membuat platform yang elegan dan responsif di mana saya bisa menampilkan karya-karya saya sebagai seorang Software Engineer. Situs ini dirancang untuk memudahkan perekrut, klien, dan profesional lain dalam melihat profil saya, proyek-proyek yang telah saya kerjakan, serta menghubungi saya melalui berbagai platform media sosial.',
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
