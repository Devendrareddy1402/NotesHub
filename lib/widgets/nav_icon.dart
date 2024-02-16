import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/providers.dart';

class NavIcon extends ConsumerWidget {
  final int iconIndex;
  final IconData icon;

  const NavIcon({super.key, required this.iconIndex, required this.icon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navIndexProvider);

    return SizedBox(
      height: 55,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: selectedIndex == iconIndex
                ? Colors.orange[200]
                : Colors.transparent,
            child: IconButton(
              iconSize: 22,
              padding: EdgeInsets.zero,
              isSelected: selectedIndex == iconIndex,
              selectedIcon: Icon(icon, color: Colors.black87),
              onPressed: () {
                ref.read(navIndexProvider.notifier).state = iconIndex;
              },
              icon: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedIndex == iconIndex
                      ? Colors.orange[200]
                      : Colors.transparent),
              width: 3,
              height: 3,
            ),
          ),
        ],
      ),
    );
  }
}
