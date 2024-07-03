import 'package:coffeeshopapp/components/drawer_tile.dart';
import 'package:coffeeshopapp/pages/settings_page.dart';
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
          ),

          //home list title
          DrawerTile(
            text: "H o m e",
            icon: Icons.home_rounded,
            onTap: () => Navigator.pop(context),
          ),

          //settings list title
          DrawerTile(
              text: "S e t t i n g s",
              icon: Icons.settings_rounded,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              }),

          const Spacer(),
          //logging out
          DrawerTile(
            text: "L o g o u t",
            icon: Icons.logout_rounded,
            onTap: () => {},
          ),

          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
