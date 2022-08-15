import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget{
  var selectedIndex = 0;

  

  BottomBar({
    required this.selectedIndex
  });

  void onTap(int index){
    selectedIndex = index;
  }



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: this.selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: onTap,
    );
  }
}
