import 'package:flutter/material.dart';
import 'package:mawhoop/screens/profile_screen.dart';
import '../models/Nb_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<NbScreen> listNav = [
    NbScreen(widgets: HomeScreen()),
    NbScreen(widgets: HomeScreen()),
    NbScreen(widgets: HomeScreen()),
    NbScreen(widgets: HomeScreen()),
    NbScreen(widgets: ProfileScreen()),
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listNav[currentIndex].widgets,
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(color: Color(0xFF5663FF)),
        selectedItemColor: const Color(0xFF5663FF),
        selectedIconTheme: const IconThemeData(color: Color(0xFF5663FF)),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Color(0xFF5663FF),
            ),
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.save,
              color: Color(0xFF5663FF),
            ),
            icon: Icon(
              Icons.save,
              color: Colors.grey,
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.add,
              color: Color(0xFF5663FF),
            ),
            icon: Icon(
              Icons.add,
              color: Colors.grey,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.notifications,
              color: Color(0xFF5663FF),
            ),
            icon: Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person,
              color: Color(0xFF5663FF),
            ),
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
