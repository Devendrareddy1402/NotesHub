import 'package:flutter/material.dart';

class Navigationline extends StatelessWidget {
  const Navigationline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      height: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(237, 0, 0, 0),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home_filled,
              color: Colors.grey,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.event_note,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
