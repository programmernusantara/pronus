import 'package:flutter/material.dart';
import '../widgets/container.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects",
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
              'Saya memiliki dua proyek utama: Web Portfolio (Dart & Flutter) dan REST API Backend (Golang, Fiber, PostgreSQL, Docker, Ubuntu), serta merencanakan aplikasi manajemen siswa di sekolah yang menggabungkan keahlian dari sisi client dan server. Kunjungi repositori GitHub saya untuk detail proyek.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
