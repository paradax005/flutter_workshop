import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: const Text("G-Store ESPRIT"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.edit,
                color: Colors.black,
              ),
              title: const Text("Modifier le Profil"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.tab_outlined,
                color: Colors.black,
              ),
              title: const Text("Navigation par onglet"),
            ),
          ],
        ),
      ),
    );
  }
}
