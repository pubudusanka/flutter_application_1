import 'package:flutter/material.dart';
import '../widgets/book_card.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ceylon Bookstore'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            BookCard(
              coverImagePath: 'assets/images/rich-dad-poor-dad.png',
              title: 'Rich Dad, Poor Dad',
              author: 'Robert T. Kiyosaki',
              price: 1250.00,
            ),
            BookCard(
              coverImagePath: 'assets/images/the-alchemist.png',
              title: 'The Alchemist',
              author: 'Paulo Coelho',
              price: 1800.00,
            ),
            BookCard(
              coverImagePath: 'assets/images/men-are-from-mars.png',
              title: 'Men Are From Mars',
              author: 'John Gray',
              price: 1000.00,
            ),
          ],
        ),
      ),
    );
  }
}
