import 'package:flutter/material.dart';

class PopupMenuWidget extends StatelessWidget {
  const PopupMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.more_vert), // Icon for the button
      onPressed: () {
        debugPrint('click more icon');
        showPopupMenu(context);
      },
    );
  }

  void showPopupMenu(BuildContext context) async {
    final int? selected = await showMenu(
      context: context,
      position: const RelativeRect.fromLTRB(100, 100, 0, 100),
      items: [
        const PopupMenuItem(
          value: 1,
          child: Text('Option 1'),
        ),
        const PopupMenuItem(
          value: 2,
          child: Text('Option 2'),
        ),
        const PopupMenuItem(
          value: 3,
          child: Text('Option 3'),
        ),
      ],
    );

    if (selected != null) {
      // Handle menu item selection
      switch (selected) {
        case 1:
          // Handle Option 1 selection
          break;
        case 2:
          // Handle Option 2 selection
          break;
        case 3:
          // Handle Option 3 selection
          break;
      }
    }
  }
}
