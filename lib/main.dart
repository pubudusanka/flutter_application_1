import 'package:flutter/material.dart';
import 'screens/book_list_screen.dart';

void main() {
  runApp(BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Store',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BookListScreen(),
    );
  }
}
