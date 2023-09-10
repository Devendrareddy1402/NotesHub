import 'package:flutter/material.dart';
import 'package:notes_app_1/widgets/nav_icon.dart';

class Navigationline extends StatelessWidget {
  const Navigationline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 80,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(35), topLeft: Radius.circular(35)),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavIcon(iconIndex: 0, icon: Icons.home_filled),
                NavIcon(iconIndex: 1, icon: Icons.event_note),
                NavIcon(iconIndex: 2, icon: Icons.person),
              ],
            ),
          ),
        ));
  }
}
