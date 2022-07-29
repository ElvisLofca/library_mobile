import 'package:flutter/material.dart';

class User{
  final String? id;
  final String? username;
  final String? email;
  final String? name;
  final bool? isStaff;

  const User({this.id, this.username, this.email, this.name, this.isStaff});
}