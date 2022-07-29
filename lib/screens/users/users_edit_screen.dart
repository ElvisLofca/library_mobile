import 'package:flutter/material.dart';

class UsersEditScreen extends StatefulWidget {
  static const routeName = '/useradd';

  @override
  State<UsersEditScreen> createState() => _UsersEditScreenState();
}

class _UsersEditScreenState extends State<UsersEditScreen> {
  bool isChecked = false;

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
              child: const Icon(
                Icons.account_circle,
                size: 100,
              )),
          Container(
            height: MediaQuery.of(context).size.height * 0.67,
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
                        labelText: 'Name',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: CheckboxListTile(
                        title: const Text('Staff Member'),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ),
                    ElevatedButton(onPressed: () => {}, child: Text("Save")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          // Delete user from list
        },
        child: const Icon(Icons.delete),
        backgroundColor: Colors.red,
      ),
    );
  }
}
