// import 'package:fin_bank_app/action_button.dart';
// import 'package:fin_bank_app/transaction_list.dart';
import 'package:flutter/material.dart';

import 'credit_card.dart';
import 'home.dart';

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
      home: const Home(),
    );
  }
}
