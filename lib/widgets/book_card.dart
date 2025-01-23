import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String bookName;
  final String imagePath;

  const BookCard({
    Key? key,
    required this.bookName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            // Book Image
            Image.asset(
              imagePath,
              height: 100,
              width: 70,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 15),
            // Book Name and Buttons
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Book Name
                  Text(
                    bookName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Action Buttons
                  Row(
                    children: [
                      // Buy Book Button
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Buying $bookName')),
                          );
                        },
                        child: const Text('Buy Book'),
                      ),
                      const SizedBox(width: 10),
                      // Add to Cart Button
                      OutlinedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Added $bookName to cart')),
                          );
                        },
                        child: const Text('Add to Cart'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
