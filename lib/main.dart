import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is fun~'),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.red,
              width: 500,
              height: 500,
            ),
            Container(
              color: Colors.blue,
              width: 500,
              height: 500,
            ),
            Container(
              color: Colors.green,
              width: 500,
              height: 500,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('pressed!');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
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
        ),
        drawer: const Drawer(
          child: Text('Yo!'),
        ),
      ),
    );
  }
}
