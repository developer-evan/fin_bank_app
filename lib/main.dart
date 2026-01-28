import 'package:fin_bank_app/action_button.dart';
import 'package:flutter/material.dart';

import 'credit_card.dart';

void main() {
  // Entry point of the application
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Fin Bank App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 16, 80, 98)),
    useMaterial3: true,
      ),
    home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 80, 98),
      body: SafeArea(
        bottom: false,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Back!.", style:TextStyle(
                      color: Colors.white,
                      // fontSize: 28,
                      // fontWeight: FontWeight.bold,
                    ),
                    ),

                    Text("Tania Moraa!.", style:TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton.outlined(
                    onPressed: (){},
                    icon:const Icon(
                      Icons.notifications,
                      color: Colors.white,
                ))
              ],
            ),
          ),
          Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 167),
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(height: 110),
                        // Action Buttons
                        ActionButtons()
                        // Transaction List
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 25,
                    right: 25,
                    child: CreditCard(),
                  )
                ],
              )
          )
        ],

      )
    )
        );
  }
}