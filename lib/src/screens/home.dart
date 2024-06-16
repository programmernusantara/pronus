import 'package:flutter/material.dart';
import 'about.dart';
import 'profile.dart';
import 'project.dart';
import 'skills.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  int _selectedIndex = 0;
  final double _containerHeight = 450.0;

  final List<Widget> _sections = const [
    About(),
    Skills(),
    Project(),
  ];

  void _scrollToIndex(int index) {
    final position = index * _containerHeight;
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _scrollToIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 850) {
          return _layarBesar();
        } else {
          return _layarKecil();
        }
      },
    );
  }

  Widget _layarKecil() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54, // Biru Laut
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
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 1000),
        backgroundColor: Colors.white70, // Biru Laut
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.person, color: Colors.black),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.info, color: Colors.black),
            label: 'About',
          ),
          NavigationDestination(
            icon: Icon(Icons.code, color: Colors.black),
            label: 'Skills',
          ),
          NavigationDestination(
            icon: Icon(Icons.build, color: Colors.black),
            label: 'Project',
          ),
        ],
        onDestinationSelected: _onDestinationSelected,
        selectedIndex: _selectedIndex,
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _sections.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return SizedBox(
              height: _containerHeight,
              child: const Profile(),
            );
          } else {
            return SizedBox(
              height: _containerHeight,
              child: _sections[index - 1],
            );
          }
        },
      ),
    );
  }

  Widget _layarBesar() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54, // Biru Laut
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
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => _onDestinationSelected(0),
            child: const Text(
              'About',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () => _onDestinationSelected(1),
            child: const Text(
              'Skills',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () => _onDestinationSelected(2),
            child: const Text(
              'Project',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          const Expanded(child: Profile()),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _sections.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: _containerHeight,
                    child: _sections[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
