import 'package:flutter/material.dart';
import 'package:notes_app_1/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.widgets_rounded,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        color: Colors.blueGrey,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(
            left: 7.0, top: 10.0, right: 7.0, bottom: 0.0),
        child: const Column(
          children: [
            Row(
              children: [
                Text(
                  "Good Morning.",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Devendra",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Navigationline()
    );
  }
}
