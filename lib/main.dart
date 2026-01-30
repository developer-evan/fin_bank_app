import 'package:fin_bank_app/pages/activity.dart';
import 'package:fin_bank_app/pages/my_card.dart';
import 'package:fin_bank_app/pages/profile.dart';
import 'package:fin_bank_app/pages/scan.dart';
import 'package:flutter/material.dart';

// import 'credit_card.dart';
import 'pages/home.dart';

void main() {
  // Entry point of the application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fin Bank App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 16, 80, 98),
        ),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List<Widget> pages = [
    const Home(),
    const MyCardPage(),
    const ScanPage(),
    const ActivityPage(),
    const ProfilePage(),
    // const Placeholder(),
    // const Placeholder(),
    // const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabItem(Icons.home, "Home", 0),
            tabItem(Icons.credit_card, "My Card", 1),
            // tabItem(Icons.qr_code_scanner, "Scan", 2),
            FloatingActionButton(
              onPressed: () => onTabTapped(2),
              backgroundColor: Color.fromARGB(255, 16, 80, 98),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.qr_code_scanner,
                color: Colors.white,

                // size: 32,
              ),
            ),
            tabItem(Icons.bar_chart, "Activity", 3),
            tabItem(Icons.person, "Profile", 4),
          ],
        ),
      ),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    // onPressed: ()=> onTabTapped(index);
    return IconButton(
      onPressed: () => onTabTapped(index),
      icon: Column(
        children: [
          Icon(icon, color: currentIndex == index ? Colors.black : Colors.grey),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: currentIndex == index
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
