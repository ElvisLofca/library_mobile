import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../models/book.dart';

const baseUrl = 'http://localhost:8000';

getBooks() async {
  // final httpsUri = Uri.parse('http://localhost:8000/api/books');
  final httpsUri = Uri.http('10.0.2.2:8000', '/api/books/');
  var response = await http.get(httpsUri);

  // List<Book> books = List<Book>.from(convert.jsonDecode(response.body).map((data) => Book.fromJson(data)));
  return convert.jsonDecode(response.body).map((data) => Book.fromJson(data));
}
