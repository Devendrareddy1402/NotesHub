import 'package:flutter/material.dart';
import 'package:styled_text/styled_text.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(children: [
        Row(
          children: [
            StyledText(
                text:
                    '<bold>Create</bold> <p>and design \nyour</p> <bold>notes</bold> <p>easily.</p>',
                tags: {
                  'bold': StyledTextTag(
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  'p': StyledTextTag(
                      style: const TextStyle(color: Colors.black54))
                },
                style: const TextStyle(
                  fontSize: 32,
                )),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(10),
          shadowColor: Colors.grey,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white10),
                  borderRadius: BorderRadius.circular(20)),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white10),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
