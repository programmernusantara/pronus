import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/container.dart';

final Uri _github = Uri.parse('https://github.com/programmernusantara');
final Uri _linkedin =
    Uri.parse('https://www.linkedin.com/in/programmernusantara');
final Uri _tikTok = Uri.parse('https://www.tiktok.com/@programmernusantara');
final Uri _youtube = Uri.parse('https://www.youtube.com/@programmernusantara');
final Uri _cv = Uri.parse(
    'https://drive.google.com/drive/folders/1qh6BaCsAEFwO0AiCO68MeNvLUDOnsA7q?usp=sharing');

Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const CircleAvatar(
        radius: 80,
        backgroundImage: AssetImage('assets/sosmed/wildan.jpg'),
      ),
      const SizedBox(height: 10),
      const Text(
        "Assalamu'alaikum, I'm Wildan",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      const SizedBox(height: 5),
      const Text(
        "I'm a Software Engineer",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () => _launchUrl(_cv),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: const Text(
          'Download CV',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      const SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        IconButton(
          icon: const Image(
            image: AssetImage('assets/sosmed/github.png'),
            width: 30.0,
            height: 30.0,
          ),
          onPressed: () => _launchUrl(_github),
        ),
        IconButton(
          icon: const Image(
            image: AssetImage('assets/sosmed/linkedin.png'),
            width: 30.0,
            height: 30.0,
          ),
          onPressed: () => _launchUrl(_linkedin),
        ),
        IconButton(
          icon: const Image(
            image: AssetImage('assets/sosmed/tik-tok.png'),
            width: 30.0,
            height: 30.0,
          ),
          onPressed: () => _launchUrl(_tikTok),
        ),
        IconButton(
          icon: const Image(
              image: AssetImage('assets/sosmed/youtube.png'),
              width: 30.0,
              height: 30.0),
          onPressed: () => _launchUrl(_youtube),
        ),
      ])
    ]));
  }
}
