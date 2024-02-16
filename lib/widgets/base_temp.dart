import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app_1/providers/providers.dart';
import 'header.dart';
import 'navigation_bar.dart';
import 'package:notes_app_1/screens/home_screen.dart';
import 'package:notes_app_1/screens/notes_screen.dart';
import 'package:notes_app_1/screens/profile_screen.dart';

class BaseTemplate extends ConsumerWidget {
  const BaseTemplate({super.key});

  final _screens = const <Widget>[HomeScreen(), NotesScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navIndexProvider);

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        leadingWidth: 65,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: Colors.transparent,
        ),
        backgroundColor: Colors.white,
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 25),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.grey[200],
                child: IconButton(
                  icon: const Icon(
                    Icons.widgets_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: _screens[selectedIndex]),
      bottomNavigationBar: const Navigationline(),
    );
  }
}
