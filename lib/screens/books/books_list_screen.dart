import 'package:flutter/material.dart';
import 'package:library_mobile/models/book.dart';
import 'package:library_mobile/services/book_service.dart';
import 'package:library_mobile/widgets/book_widget.dart';
import 'package:library_mobile/books_dummy_data.dart';


class BooksListScreen extends StatefulWidget {
  static const routeName = '/bookslist';

  @override
  State<BooksListScreen> createState() => _BooksListScreenState();
}

class _BooksListScreenState extends State<BooksListScreen> {

  @override
  void initState(){
    super.initState();
    getBooks()
    .then((result) {
      List<Book> list = List<Book>.from(result);

      list.forEach((element) {print(element.id);});

      print("result: $list");


      // setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Books List'),
      ),
      body: ListView(
        children: booksList.map((book) => BookWidget(book)).toList(),
      ),
    );
  }
}
