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

    return AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarDividerColor: Colors.transparent,
        ),
        child: Scaffold(
            extendBody: true,
            backgroundColor: Colors.white,
            body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                    children: [const Header(), _screens[selectedIndex]])),
            bottomNavigationBar: const Navigationline()));
  }
}
