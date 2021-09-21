import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:password_manager/screens/Manager/Addition.dart';
import 'package:password_manager/screens/Manager/Deletion.dart';
import 'package:password_manager/screens/Manager/Edit.dart';
import 'package:password_manager/screens/Manager/View.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
 List<Widget> _widgetOptions = <Widget>[
   AddPass(),
    ViewPass(),
    EditPass(),
    DeletePass(),
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
          backgroundColor: Colors.teal.shade700,
          body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0.0,
            selectedFontSize: 15.0,
            selectedIconTheme: IconThemeData(size: 20.0),
            //  backgroundColor: Colors.lightGreen.shade900,
            items: [
              BottomNavigationBarItem(
                icon: CircleAvatar(child: Icon(Icons.add_circle_rounded,color: Colors.teal.shade700,),
                backgroundColor: Colors.white,),
                label: 'Add',
                backgroundColor: Colors.teal.shade700,
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(child: Icon(Icons.list,color: Colors.teal.shade700,),
                backgroundColor: Colors.white,),
                label: 'View',
                backgroundColor: Colors.teal.shade700,
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(child: Icon(Icons.edit,color: Colors.teal.shade700,),
                backgroundColor: Colors.white,),
                label: 'Edit',
                backgroundColor: Colors.teal.shade700,
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(child: Icon(Icons.delete,color: Colors.teal.shade700,),
                backgroundColor: Colors.white,),
                label: 'Delete',
                backgroundColor: Colors.teal.shade700,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          )),
    );
  }
}
