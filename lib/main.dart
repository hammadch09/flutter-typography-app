import 'package:flutter/material.dart';
import 'package:hello_world/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello World'),
        ),
        body: const HomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: ({name = 'Add Floatin Button'}) {
            debugPrint(name);
          },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            NavigationDestination(icon: Icon(Icons.info), label: 'About'),
            NavigationDestination(
                icon: Icon(Icons.policy), label: 'Privacy Policy'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ));
  }
}
