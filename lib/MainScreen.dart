import 'package:flutter/material.dart';
import 'package:product/HomeScreen.dart';
import 'package:product/ListScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int current = 0;
  List<Widget> Screens = [HomeScreen(), ListScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Market"),
      ),
      drawer: Drawer(),
      body: Screens[current],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Color.fromARGB(255, 22, 22, 22),
        selectedItemColor: Colors.black,
        onTap: (value) => {
          setState(() {
            current = value;
          }),
        },
        currentIndex: current,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            icon: Icon(Icons.home_filled, color: Colors.black),
            label: "Home",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.yellow,
            icon: Icon(
              Icons.list_alt_outlined,
              color: Colors.black,
            ),
            label: "Category",
          )
        ],
      ),
    );
  }
}
