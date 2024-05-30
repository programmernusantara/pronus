// src/screens/skills.dart
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

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
              Icon(Icons.build, color: Colors.black, size: 30),
              SizedBox(width: 10),
              Text(
                "Skills",
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
          const Text(
            'Sebagai seorang software engineer, saya menguasai berbagai teknologi yang saya gunakan untuk mengembangkan aplikasi baik dari sisi klien maupun server, seperti:',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: _buildSkillIcons(),
          ),
        ],
      ),
    );
  }

  // Membuat ikon keterampilan
  List<Widget> _buildSkillIcons() {
    return [
      _skillIcon('assets/skills/dart.png', "DART"),
      _skillIcon('assets/skills/go.png', "GO"),
      _skillIcon('assets/skills/flutter.png', "Flutter"),
      _skillIcon('assets/skills/mysql.png', "MySQL"),
      _skillIcon('assets/skills/docker.png', "Docker"),
      _skillIcon('assets/skills/github.png', "GitHub"),
      _skillIcon('assets/skills/ubuntu.png', "Ubuntu"),
      _skillIcon('assets/skills/figma.png', "Figma"),
      _skillIcon('assets/skills/wordpress.png', "Wordpress")
    ];
  }

  // Membuat ikon individual keterampilan
  Widget _skillIcon(String assetPath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.withOpacity(0.2),
          child: Image.asset(assetPath, width: 40, height: 40),
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
