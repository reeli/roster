import 'package:flutter/material.dart';

import 'MyForm.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Setting")),
          ListTile(
            title: const Text("Add New Facilitator"),
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StandUpView()));
            },
          ),
          ListTile(
            title: const Text("Title 2"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class StandUpView extends StatelessWidget {
  const StandUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: Column(
          children: [
            MyForm(),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: const Text("Back"),
            // ),
          ],
        ),
      ),
    );
  }
}
