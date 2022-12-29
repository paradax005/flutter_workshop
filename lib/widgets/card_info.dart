import 'package:flutter/material.dart';
import 'package:workshop/screens/product_info.dart';

class CardInfo extends StatelessWidget {
  final String img;
  final String title;
  final double price;

  const CardInfo({
    super.key,
    required this.img,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ProductInfo(title: title, image: img, price: price),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  img,
                  width: 200,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${price.toInt()} DT',
                      textScaleFactor: 2,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
