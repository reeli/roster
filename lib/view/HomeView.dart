import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'RosterView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool _visible = true;

  final List<String> list = ["A", "B", "C"];
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Today'),
    Tab(text: 'All'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var today = DateFormat.yMMMd("en_US").format(now);
    var weekDay = DateFormat("EEEE").format(now);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
          bottom: TabBar(
            tabs: myTabs,
            controller: _tabController,
          ),
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
        body: TabBarView(
          controller: _tabController,
          children: [
            Flex(direction: Axis.vertical, children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Text(
                        today,
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(weekDay),
                    ],
                  )),
              Spacer(),
              Expanded(
                  flex: 1,
                  child: Column(children: const [
                    // Text("Stand up facilitator",
                    //     style: TextStyle(fontSize: 18)),
                    Text("Rui Li",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold)),
                  ])),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
            ]),
            RosterView()
          ],
        ));
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
