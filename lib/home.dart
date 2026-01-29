import 'package:fin_bank_app/action_button.dart';
import 'package:fin_bank_app/credit_card.dart';
import 'package:fin_bank_app/transaction_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

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
    ActionButtons(),
    SizedBox(height: 30.0),
    // Transaction List
    TransactionList()
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
    ),
    bottomNavigationBar: BottomAppBar(
    color: Colors.white,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    IconButton(onPressed: (){},
    icon: Column(
    children: [
    Icon(Icons.home),
    Text("Home",
    style: TextStyle(
    fontSize: 10,
    ),
    ),
    ],
    ),
    ),
    IconButton(onPressed: (){},
    icon: Column(
    children: [
    Icon(Icons.credit_card),
    Text("My Card",
    style: TextStyle(
    fontSize: 10,
    ),
    ),
    ],
    ),
    ),
    FloatingActionButton(onPressed: (){},
    backgroundColor: Color.fromARGB(255, 16, 80, 98),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    child: Icon(Icons.qr_code_scanner,
    color: Colors.white,
    size: 32,
    ),
    ),
    IconButton(onPressed: (){},
    icon: Column(
    children: [
    Icon(Icons.bar_chart),
    Text("Activity",
    style: TextStyle(
    fontSize: 10,
    ),
    ),
    ],
    ),
    ),
    IconButton(onPressed: (){},
    icon: Column(
    children: [
    Icon(Icons.person),
    Text("Profiles",
    style: TextStyle(
    fontSize: 10,
    ),
    ),
    ],
    ),
    )
    ],
    ),
    ),
    );
    }
    }



