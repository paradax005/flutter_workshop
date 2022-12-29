import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final double price;
  final int quantite;

  const ProductInfo({
    super.key,
    required this.title,
    required this.image,
    this.description =
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages",
    required this.price,
    this.quantite = 3000,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            const SizedBox(
              height: 24,
            ),
            Text(
              description,
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                "$price DT",
                textScaleFactor: 3,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Exemplaire Disponibles : "),
                Text("$quantite"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: 180,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.shopping_basket_rounded,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Acheter",
                        textScaleFactor: 1.4,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
