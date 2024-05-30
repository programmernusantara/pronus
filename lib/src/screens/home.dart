import 'package:flutter/material.dart';
import 'package:pronus/src/screens/about.dart';
import 'package:pronus/src/screens/profile.dart';
import 'package:pronus/src/screens/project.dart';
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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/navbar/it.png',
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Pronus',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'About',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Skills',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Project',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
      body: Row(
        children: [
          const Expanded(child: Profile()),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),
            color: Colors.white,
            child: ListView(
              children: const [
                About(),
                SizedBox(height: 10),
                Skills(),
                SizedBox(height: 10),
                Project()
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
