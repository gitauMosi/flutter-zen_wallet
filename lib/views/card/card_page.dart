import 'package:flutter/material.dart';

import '../../widgets/creditCardWidget.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cards",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
                // Credit Card
               
              SizedBox(
                height: 200,
                child:  ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CreditCardWidget(
                        color: Colors.cyan,
                        logo: "assets/icons/mastercard.png",
                        title: "Credit Card",
                        number: "**** **** **** 1234",
                        expiry: "12/26",
                        balance: "\$1000.00",
                      ),
                      SizedBox(height: 16),
                      // Debit Card
                      CreditCardWidget(
                        color: Colors.blue,
                        logo: "assets/icons/visa.png",
                        title: "Debit Card",
                        number: "**** **** **** 6453",
                        expiry: "12/26",
                        balance: "\$80.00",
                      ),
                ],
               ),
              ),

                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Manage Card",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                _customTile(context, "Manage payment Methods", Icons.settings_outlined, (){}),
                 const SizedBox(
                  height: 10,
                ),
                _customTile(context, "Show Pin", Icons.password_outlined, (){}),
                 const SizedBox(
                  height: 10,
                ),
                _customTile(context, "Unblock Pin", Icons.lock_outline, (){}),
                 const SizedBox(
                  height: 10,
                ),
                _customTile(context, "Replace Card", Icons.credit_card, (){}),
                 const SizedBox(
                  height: 10,
                ),
                _customTile(context, "Card Limit", Icons.speed, (){})
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListTile _customTile(BuildContext context, String name, IconData icon, Function() function) {
    return ListTile(
      leading: Container(
        width: 45,
        height: 45,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).cardColor,
            border: Border.all(color: Colors.grey[300]!),
            ),
            child: Center(child: Icon(icon, color: Theme.of(context).colorScheme.primary,),),
      ),
      title: Text(name),
      trailing: Icon(Icons.arrow_forward_ios, size: 16,),
    );
  }
}
