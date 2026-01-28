import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today , Jan 29"),
                  Row(
                    children: [
                      Text("All Transactions"),
                      // Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                child: Icon(
                  Icons.fitness_center,
                  color: Colors.purpleAccent,
                ),
              ),
              title: Text("Gym"),
              subtitle: Text("Payment"),
              trailing: Text(
                "- \$50.00",
                // style: TextStyle(color: Colors.red),
              ),
            ),
            Divider(color: Colors.grey[200]),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                child: Icon(
                  Icons.account_balance,
                  color: Colors.teal,
                ),
              ),
              title: Text("Equity Bank"),
              subtitle: Text("Deposit"),
              trailing: Text("+ \$5000.00",
                style: TextStyle(color: Colors.teal),),

            ),
            Divider(color: Colors.grey[200]),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 239, 243, 245),
                child: Icon(
                  Icons.send,
                  color: Colors.orangeAccent,
                ),
              ),
              title: Text("To Tania Peekaboo"),
              subtitle: Text("Sent"),
              trailing: Text("- \$150.00",
                // style: TextStyle(color: Colors.red),
              ),

            )
          ],
        )
    );
  }
}
