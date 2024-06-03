import 'package:flutter/material.dart';
import '../widgets/container.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
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
            'Saya mahir dalam Dart & Flutter untuk pengembangan aplikasi mobile, Golang untuk backend, dan PostgreSQL untuk manajemen database. Saya juga terbiasa dengan Ubuntu dan Docker untuk lingkungan server, serta GitHub untuk kolaborasi kode. Saya menggunakan VSCode untuk pengembangan, dan Figma untuk desain antarmuka pengguna. Saya Siap untuk terlibat dalam pengembangan perangkat lunak yang inovatif.',
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
