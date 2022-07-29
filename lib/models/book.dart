import 'package:flutter/material.dart';

class Book {

  final int id;
  final String title;
  final String author;
  final String description;
  final String image;
  final String body;
  final bool isAvailable;
  final DateTime publicationDate;

  Book({required this.id, required this.title, required this.author, required this.description, required this.image, required this.body,
    required this.isAvailable, required this.publicationDate});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      author: json['author'],
      image: json['id'],
      title: json['id'],
      body: json['id'],
      description: json['id'],
      isAvailable: json['isAvailable'],
      publicationDate: json['publicationDate']
    );
  }

}
