import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final int checkScreen;
  const CustomDrawer({
    super.key,
    this.checkScreen = 0,
  });

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
              onTap: () {
                if (checkScreen != 0) {
                  Navigator.pushReplacementNamed(context, '/home');
                } else {
                  Navigator.pushReplacementNamed(context, '/tabbar');
                }
              },
              leading: checkScreen == 0
                  ? const Icon(
                      Icons.tab_outlined,
                      color: Colors.black,
                    )
                  : const Icon(
                      Icons.file_download_outlined,
                      color: Colors.black,
                    ),
              title: checkScreen == 0
                  ? const Text("Navigation par onglet")
                  : const Text("Navigation du bas "),
            ),
          ],
        ),
      ),
    );
  }
}
