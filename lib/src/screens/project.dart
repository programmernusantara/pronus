import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.black.withOpacity(0.1),
      ),
      height: 300,
      child: const Column(
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
          Text(
            'Hai! Saya Wildan Firmani Quraisi, seorang Software Engineer berusia 19 tahun dengan passion mendalam di bidang teknologi. Sejak mengenal komputer pada usia 12 tahun, saya terus mengasah keterampilan saya hingga mencapai posisi profesional ini. Dengan pengalaman dalam berbagai proyek dan pemahaman mendalam tentang bahasa pemrograman, saya selalu bersemangat menghadapi tantangan baru. Saya berkomitmen untuk terus belajar dan berkontribusi dalam dunia teknologi. Saya percaya pada kerja keras dan inovasi, dan siap membawa solusi kreatif dan efektif dalam setiap proyek yang saya tangani.',
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
