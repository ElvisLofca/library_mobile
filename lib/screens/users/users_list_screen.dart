import 'package:flutter/material.dart';
import 'package:library_mobile/widgets/user_widget.dart';
import 'package:library_mobile/users_dummy_data.dart';

class UsersListScreen extends StatelessWidget {
  static const routeName = '/userslist';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'),
      ),
      body: ListView(
        children: userList.map((user) => UserWidget(user)).toList(),
      ),
    );
  }
}