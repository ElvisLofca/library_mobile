import '../models/user.dart';
import 'package:flutter/material.dart';
import '../screens/users/users_edit_screen.dart';

class UserWidget extends StatelessWidget {
  final User user;

  UserWidget(this.user);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context)
            .pushNamed(UsersEditScreen.routeName, arguments: user.id)
      },
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.only(bottom: 50),
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft ,
                width: MediaQuery.of(context).size.width * 0.25 - 25,
                child: const Icon(Icons.account_circle, size: 50,),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5 - 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.name.toString()),
                    Text(user.username.toString()),
                    Text(user.email.toString()),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25 - 25,
                alignment: Alignment.center,
                child: user.isStaff! ? const Icon(Icons.done, color: Colors.green,) : const Icon(Icons.close, color: Colors.red,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
