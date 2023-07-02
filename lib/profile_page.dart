import 'package:flutter/material.dart';

const int listItems = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listItems,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("list item ${(index + 1)} "),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.check_box),
            onTap: () {
              debugPrint("list item ${(index + 1)} selected ");
            },
          );
        });
  }
}
