import 'package:flutter/material.dart';
import '../widgets/book_card.dart';

class BookListScreen extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'title': 'Rich Dad Poor Dad',
      'author': 'Robert Kiyosaki',
      'image': 'lib/assets/images/rich_dad_poor_dad.png',
      'price': '\$12.49',
      'rating': '4.7',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Store'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return Center(
              child: BookCard(
                title: book['title']!,
                author: book['author']!,
                imagePath: book['image']!,
                price: book['price']!,
                rating: book['rating']!,
              ),
            );
          },
        ),
      ),
    );
  }
}
