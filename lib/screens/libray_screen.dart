import 'package:flutter/material.dart';
import 'package:workshop/widgets/grid_card.dart';

class LibraryScreen extends StatefulWidget {
  LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  List<Game> games = [
    Game("dmc5.jpg", "DMC5"),
    Game("fifa.jpg", "FIFA 22"),
    Game("minecraft.jpg", "MINECRAFT"),
    Game("nfs.jpg", "Need For Speed"),
    Game("rdr2.jpg", "Resident Evil II"),
    Game("re8.jpg", "Red Dead redemption"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ma bibliothéque"),
      ),
      body: GridView.builder(
        itemCount: games.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 160,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (BuildContext context, index) {
          return GridCard(
            imagePath: games[index].imagePath,
            title: games[index].title,
          );
        },
      ),
    );
  }
}

class Game {
  final String imagePath;
  final String title;

  Game(this.imagePath, this.title);
}
