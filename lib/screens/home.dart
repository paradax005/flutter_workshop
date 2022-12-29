import 'package:flutter/material.dart';
import 'package:workshop/widgets/card_info.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "G-Store Esprit",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            CardInfo(
              img: 'assets/dmc5.jpg',
              title: 'Devils May Cry 5',
              price: 200,
            ),
            CardInfo(
              img: 'assets/fifa.jpg',
              title: 'FIFA 22',
              price: 100,
            ),
            CardInfo(
              img: 'assets/rdr2.jpg',
              title: 'Red Dead redemption',
              price: 150,
            ),
            CardInfo(
              img: 'assets/nfs.jpg',
              title: 'Need For Speed Heat',
              price: 220,
            ),
            CardInfo(
              img: 'assets/re8.jpg',
              title: 'Resident Evil VIII',
              price: 180,
            ),
          ],
        ),
      ),
    );
  }
}
