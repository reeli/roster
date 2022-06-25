import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:roster/view/DrawerView.dart';

import '../common/ui/OutlinedButton.dart';
import '../common/ui/PrimaryButton.dart';
import 'RosterListView.dart';

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
        drawer: const DrawerView(),
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 8),
                        child: Text(
                          today,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
                      Text(weekDay)
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: const [
                      Spacer(),
                      Text("Rui Li",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Expanded(
                  child: Visibility(
                    maintainSize: false,
                    visible: _visible,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlineButton(
                              text: "Skip",
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: PrimaryButton(
                                text: "Accept",
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
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
              const RosterListView(),
            ],
          ),
        ));
  }
}
