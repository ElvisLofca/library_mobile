import 'package:flutter/material.dart';
import 'package:library_mobile/screens/books/books_add_screen.dart';
import 'package:library_mobile/screens/home_screen.dart';
import 'package:library_mobile/screens/users/users_edit_screen.dart';
import 'package:library_mobile/screens/users/users_list_screen.dart';
import '../screens/books/books_list_screen.dart';
import '../screens/books/books_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      routes: {
        BooksListScreen.routeName: (context) => BooksListScreen(),
        BooksDetailScreen.routeName: (context) => BooksDetailScreen(),
        BooksAddScreen.routeName: (context) => BooksAddScreen(),
        UsersListScreen.routeName: (context) => UsersListScreen(),
        UsersEditScreen.routeName: (context) => UsersEditScreen(),
      },
    );
  }
}
