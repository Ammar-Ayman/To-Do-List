import 'package:flutter/material.dart';
import 'package:to_do_list/feature/home/setting/setting_view.dart';
import 'package:to_do_list/feature/home/tasks/task_view.dart';

class HomeView extends StatefulWidget {
 const  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> current=[
    const TaskView(),
    const SettingView(),
  ];
  int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: current[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dehaze_rounded), label: "Dehaye"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]
      ),
    );
  }
}
