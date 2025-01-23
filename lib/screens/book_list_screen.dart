import 'package:flutter/material.dart';
import '../widgets/book_card.dart';

class BookListScreen extends StatelessWidget {
  const BookListScreen({Key? key}) : super(key: key);

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
              coverImagePath: 'lib/assets/images/rich_dad_poor_dad.png',
              title: 'Rich Dad, Poor Dad',
              author: 'Robert T. Kiyosaki',
              price: 1250.00,
            ),
          ],
        ),
      ),
    );
  }
}
