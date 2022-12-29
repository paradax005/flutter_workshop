import 'package:flutter/material.dart';
import 'package:workshop/screens/basket_screen.dart';
import 'package:workshop/screens/libray_screen.dart';
import 'package:workshop/screens/store_screen.dart';
import 'package:workshop/widgets/custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  final List<Widget> _interfaces = const [
    StoreScreen(),
    LibraryScreen(),
    BasketScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
            ),
            icon: Icon(
              Icons.home,
              color: Colors.brown,
            ),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: "Bibliothéque",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Panier",
          ),
        ],
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
      ),
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text(
          "G-Store Esprit",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _interfaces[_index],
    );
  }
}
