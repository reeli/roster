import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
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
        body: Flex(direction: Axis.vertical, children: [
          const Expanded(
            flex: 1,
            child: Center(
              child: Text(
                "Today's facilitator is",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          const Expanded(
              flex: 1,
              child: Text("Rui Li",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
          Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(16),
                child: Visibility(
                    maintainSize: false,
                    visible: _visible,
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: OutlinedButton(
                                // style: ElevatedButton.styleFrom(
                                //     primary: Color.fromRGBO(255, 0, 0, 1)),
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text("Skip"),
                                ),
                              )),
                        ),
                        Expanded(
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        "You'll be today's stand up facilitator, thank you!"),
                                  ));
                                  setState(() {
                                    _visible = false;
                                  });
                                },
                                child: const Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text("Accept"),
                                ),
                              )),
                        )
                      ],
                    ))),
          )
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
