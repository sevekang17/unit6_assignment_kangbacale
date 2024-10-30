import 'package:unit6_assignment_kangbacale/components/tab_widget_1.dart';
import 'package:unit6_assignment_kangbacale/components/tab_widget_2.dart';
import 'package:flutter/material.dart';

class About_Me extends StatefulWidget {
  const About_Me({super.key});

  @override
  State<About_Me> createState() => _About_MeState();
}

class _About_MeState extends State<About_Me> {
    final List<Widget> _tabScreens = [const TabWidget1(), const TabWidget2()];

    final List<Widget> _tabLists = [
    const Tab(
      text: "Home",
      icon: Icon(Icons.home),
    ),
    const Tab(
      text: "About",
      icon: Icon(Icons.info),
    ),
  ];

 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabScreens.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Space"),
          bottom: TabBar(
            tabs: _tabLists,
          ),
        ),
         body: TabBarView(children: _tabScreens),
      ),   
    );
  }
}