import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Save',
      style: optionStyle,
    ),
    Text(
      'Index 1: View',
      style: optionStyle,
    ),
    Text(
      'Index 2: Edit',
      style: optionStyle,
    ),
    Text(
      'Index 3: Delete',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.amber.shade200,
          appBar: AppBar(
            backgroundColor: Colors.lightGreen.shade900,
            title: Center(
              child: Text('Password Manager'),
            ),
          ),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('images/manager.png'),
                      height: 75.0,
                      width: 75.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Hi, I am your password manager!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown.shade800,
                      ),
                    ),
                  ],
                ),
                Text(
                  'How can i help you ?',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown.shade800,
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            //  backgroundColor: Colors.lightGreen.shade900,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
                backgroundColor: Colors.lightGreen.shade900,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'View',
                backgroundColor: Colors.lightGreen.shade800,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit),
                label: 'Edit',
                backgroundColor: Colors.lightGreen.shade700,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delete),
                label: 'Delete',
                backgroundColor: Colors.lightGreen.shade600,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          )),
    );
  }
}
