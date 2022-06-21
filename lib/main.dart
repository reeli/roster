import 'package:flutter/material.dart';

void main() {
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "hello", home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Home")),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("drawer header")),
              ListTile(
                title: const Text("Title 1"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StandUpView()));
                },
              ),
              ListTile(
                title: const Text("Title 2"),
                onTap: () {},
              )
            ],
          ),
        ),
        body: Column(children: const [
          Center(
            child: Text(
              "Today's facilitator is",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Text("Rui")
        ]));
  }
}

class StandUpView extends StatelessWidget {
  const StandUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Back"),
        ),
      ),
    );
  }
}
