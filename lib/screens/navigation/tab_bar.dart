import 'package:flutter/material.dart';
import 'package:workshop/screens/basket_screen.dart';
import 'package:workshop/screens/libray_screen.dart';
import 'package:workshop/screens/store_screen.dart';
import 'package:workshop/widgets/custom_drawer.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const CustomDrawer(
          checkScreen: 1,
        ),
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Store",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Bibliothèque",
                icon: Icon(Icons.list_alt_outlined),
              ),
              Tab(
                text: "Panier",
                icon: Icon(Icons.shopping_basket),
              )
            ],
          ),
          title: const Text(
            "G-Store Esprit",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            StoreScreen(),
            LibraryScreen(),
            BasketScreen(),
          ],
        ),
      ),
    );
  }
}
