import 'package:flutter/material.dart';
import '../../books_dummy_data.dart';
import 'package:intl/intl.dart';
import '../../screens/books/books_add_screen.dart';

class BooksDetailScreen extends StatelessWidget {
  static const routeName = '/books-detail';

  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedBook = booksList.firstWhere((book) => book.id == bookId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedBook.title.toString()),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: 200,
                child:
                    Image(image: NetworkImage(selectedBook.image.toString())),
              ),
              Container(
                color: Colors.amber,
                width: MediaQuery.of(context).size.width * 0.65,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Title:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Text(selectedBook.title.toString())),
                    const Text(
                      'Author: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(child: Text(selectedBook.author.toString())),
                    const Text(
                      'Publication Date: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                        child: Text(DateFormat.yMMMd()
                            .format(selectedBook.publicationDate!)
                            .toString())),
                    const Text(
                      'Description: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        selectedBook.description.toString(),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.vertical, //.horizontal
              child: Text(
                selectedBook.body!,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            {Navigator.of(context).pushNamed(BooksAddScreen.routeName)},
        child: const Icon(Icons.edit),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
