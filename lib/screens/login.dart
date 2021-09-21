import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:password_manager/screens/home/home_page.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.teal,
            elevation: 0.0,
            child: ListTile(
              title: Center(
                child: Text(
                  'Hi, Anusha!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage(
              'images/ME.png',
            ),
            width: 300.0,
            height: 300.0,
          ),
          TextButton(
            child: Card(
              elevation: 8.0,
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.arrow_forward,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 70.0),
                  child: Text(
                    "Let's Go!",
                    style: TextStyle(
                  color: Colors.teal.shade700,
                  fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            ),
            onPressed: (){
              Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => Home()));
            },
          ),
          // CircleAvatar(
          //   radius: 150.0,
          //   backgroundImage: AssetImage('images/ME.png'),
          //   backgroundColor: Colors.transparent,
          // ),
        ],
      ),
    );
  }
}
