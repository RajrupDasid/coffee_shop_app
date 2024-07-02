import 'package:flutter/material.dart';

class Sidedrawer extends StatelessWidget {
  const Sidedrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          const Padding(
            padding: EdgeInsets.only(top: 45.0),
            child: Icon(
              Icons.coffee,
              size: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          )

          //home list title

          //settings list title

          //logging out
        ],
      ),
    );
  }
}
