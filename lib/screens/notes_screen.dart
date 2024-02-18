import 'package:flutter/material.dart';
import 'package:notes_app_1/screens/subscreens/folders.dart';
import 'package:notes_app_1/screens/subscreens/notes.dart';
import 'package:notes_app_1/screens/subscreens/remainder.dart';
import 'package:notes_app_1/screens/subscreens/todo.dart';
import 'package:notes_app_1/widgets/row_builder.dart';
import 'package:notes_app_1/widgets/todo_checkmark.dart';

import 'package:styled_text/styled_text.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  int tappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
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
                ),
              ),
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
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white10),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white10),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: Stack(
              children: [
                if (tappedIndex == 0) FolderScreen(),
                if (tappedIndex == 1) AddNotesScreen(),
                if (tappedIndex == 2) TodoScreen(),
                if (tappedIndex == 3) RemainderScreen(),
                RowBuilder(
                  choosenIndex: tappedIndex,
                  onElementTap: (index) {
                    setState(
                      () {
                        tappedIndex = index;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
