import "package:flutter/material.dart";

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 35),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.grey[200],
                  child: IconButton(
                    icon: const Icon(
                      Icons.widgets_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  )),
              CircleAvatar(backgroundColor: Colors.orange[300], radius: 30)
            ]));
  }
}
