import 'package:fin_bank_app/credit_card.dart';
import 'package:flutter/material.dart';

class MyCardPage extends StatelessWidget {
  const MyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton.outlined(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new, size: 20),
        ),
        title: Text(
          "My Card",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              CreditCard(),
              SizedBox(height: 20,),
              CreditCard()
            ],
          ),
        ),
      ),
    );
  }
}
