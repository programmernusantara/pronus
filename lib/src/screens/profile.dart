import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _github = Uri.parse('https://github.com/programmernusantara');
final Uri _linkedin =
    Uri.parse('https://www.linkedin.com/in/programmernusantara');
final Uri _tikTok = Uri.parse('https://www.tiktok.com/@programmernusantara');
final Uri _youtube = Uri.parse('https://www.youtube.com/@programmernusantara');

Future<void> github(Uri url) async {
  if (!await launchUrl(_github)) {
    throw Exception('Could not launch $_github');
  }
}

Future<void> tikTok(Uri url) async {
  if (!await launchUrl(_tikTok)) {
    throw Exception('Could not launch $_tikTok');
  }
}

Future<void> youtube(Uri url) async {
  if (!await launchUrl(_youtube)) {
    throw Exception('Could not launch $_youtube');
  }
}

Future<void> linkedin(Uri url) async {
  if (!await launchUrl(_linkedin)) {
    throw Exception('Could not launch $_linkedin');
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/sosmed/wildan.jpg'),
          ),
          const Text(
            "Assalamu'alaikum, I'm Wildan",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const Text(
            "I'm a Software Engineer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Tambahkan fungsi untuk men-download CV
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            child:
                const Text('Download CV', style: TextStyle(color: Colors.blue)),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Image(
                  image: AssetImage('assets/sosmed/github.png'),
                  width: 30.0,
                  height: 30.0,
                ),
                onPressed: () => github(_github),
              ),
              IconButton(
                icon: const Image(
                  image: AssetImage('assets/sosmed/linkedin.png'),
                  width: 30.0,
                  height: 30.0,
                ),
                onPressed: () => linkedin(_linkedin),
              ),
              IconButton(
                icon: const Image(
                  image: AssetImage('assets/sosmed/tik-tok.png'),
                  width: 30.0,
                  height: 30.0,
                ),
                onPressed: () => tikTok(_tikTok),
              ),
              IconButton(
                icon: const Image(
                  image: AssetImage('assets/sosmed/youtube.png'),
                  width: 30.0,
                  height: 30.0,
                ),
                onPressed: () => youtube(_youtube),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
