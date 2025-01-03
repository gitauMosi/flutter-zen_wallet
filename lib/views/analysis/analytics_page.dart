import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Analytics', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),),
              ),
              // P
            Center(
              child: Text("Empty"),
            ),
          ],
        ),
      ),
    );
  }
}
