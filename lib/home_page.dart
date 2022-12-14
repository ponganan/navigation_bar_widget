import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screen = [
    Center(
      child: Text('HomePage'),
    ),
    Center(
      child: Text('ประกาศ'),
    ),
    Center(
      child: Text('Log in'),
    ),
    Center(
      child: Text('Chat'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index],
      // warp widget with NavigationBarTheme
      bottomNavigationBar: NavigationBarTheme(
        //have to set data:
        data: NavigationBarThemeData(
          //set theme colors
          indicatorColor: Colors.blue.shade100,

          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        child: NavigationBar(
          height: 80,
          backgroundColor: Color(0xFFf1f5fb),
          selectedIndex: index,
          //use labelBehavior for hidden or unhidden text
          //labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: Duration(seconds: 1),
          onDestinationSelected: (index) => setState(
            () => this.index = index,
          ),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'หน้าแรก',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined),
              selectedIcon: Icon(Icons.shopping_bag),
              label: 'ประกาศ',
            ),
            NavigationDestination(
              icon: Icon(Icons.login_outlined),
              selectedIcon: Icon(Icons.login),
              label: 'Log in',
            ),
            NavigationDestination(
              icon: Icon(Icons.chat_outlined),
              selectedIcon: Icon(Icons.chat),
              label: 'แชท',
            )
          ],
        ),
      ),
    );
  }
}
