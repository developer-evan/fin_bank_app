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
        title: Text("My Card", style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              // Back Card
              BackCard(),
              SizedBox(height: 20),
              // Front Card
              CreditCard(),
            ],
          ),
        ),
      ),
    );
  }
}

class BackCard extends StatelessWidget {
  const BackCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 14, 19, 29),
      ),
      child: Stack(children: [
        Positioned(
          top: 0,
          right: 0,
          bottom: 0,
          child: Image.asset(
            "assets/images/card-design.png",
            fit: BoxFit.cover,
            width: 100,
          ),

        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white.withOpacity(0.8),
                ),
                Transform.translate(
                  offset: const Offset(-10,0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.yellow.withOpacity(0.8),
                  ),
                ),
              ],
            )

          ],
        )
      ]),
    );
  }
}
