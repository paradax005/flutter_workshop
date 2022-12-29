import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String imagePath;
  final String title;
  
  const GridCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/$imagePath",
            width: 180,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              title,
              textScaleFactor: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
