import '../models/book.dart';
import 'package:flutter/material.dart';
import '../screens/books/books_detail_screen.dart';

class BookWidget extends StatelessWidget {
  final Book book;

  BookWidget(this.book);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).pushNamed(BooksDetailScreen.routeName, arguments: book.id)
      },
      child: Card(
        elevation: 10,
        margin: const EdgeInsets.only(bottom: 50),
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              Text(
                book.title!,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 600,
                child: Image(
                  image: NetworkImage(
                      book.image!),
                ),
              ),
              Text(book.description!),
            ],
          ),
        ),
      ),
    );
  }
}
