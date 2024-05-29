import 'package:flutter/material.dart';
import 'package:pronus/src/screens/about.dart';
import 'package:pronus/src/screens/profile.dart';
import 'package:pronus/src/screens/skills.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return _layarBesar();
        } else {
          return _layarKecil();
        }
      },
    );
  }

  Widget _layarBesar() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Container(
          decoration: const BoxDecoration(),
          padding: const EdgeInsets.all(1.0),
          child: const Image(
            image: AssetImage('assets/navbar/it.png'),
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Pronus',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Skills',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Project',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )),
        ],
      ),
      body: Row(
        children: [
          const Expanded(child: Profile()),
          Expanded(
              child: Container(
            color: Colors.white,
            child: ListView(
              children: const [
                About(),
                SizedBox(height: 10),
                Skills(),
                SizedBox(height: 10),
                Skills()
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _layarKecil() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
  }
}
