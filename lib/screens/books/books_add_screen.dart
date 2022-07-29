import 'package:flutter/material.dart';

class BooksAddScreen extends StatefulWidget {
  static const routeName = '/bookadd';

  @override
  State<BooksAddScreen> createState() => _BooksAddScreenState();
}

class _BooksAddScreenState extends State<BooksAddScreen> {
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text('dsds'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            child: const Image(
              image: NetworkImage(
                  "https://winaero.com/blog/wp-content/uploads/2019/09/Photos-app-icon-256-colorful.png"),
            ),
          ),
          ElevatedButton(
              onPressed: () => {print('opening file')},
              child: const Text("Update Image")),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            color: const Color.fromRGBO(220, 220, 220, 1.0),
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Title',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Author',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'description',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text('${date.year}/${date.month}/${date.day}'),
                    ElevatedButton(
                        onPressed: () async {
                          showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100));
                        },
                        child: Text('${date.year}/${date.month}/${date.day}'))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          // Delete book from list
        },
        child: const Icon(Icons.delete),
        backgroundColor: Colors.red,
      ),
    );
  }
}
