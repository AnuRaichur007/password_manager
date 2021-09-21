import 'package:flutter/material.dart';
import 'package:password_manager/Database/database_helper.dart';

class AddPass extends StatefulWidget {
  const AddPass({Key key}) : super(key: key);

  @override
  _AddPassState createState() => _AddPassState();
}

class _AddPassState extends State<AddPass> {
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  TextEditingController email = TextEditingController();
  TextEditingController brand = TextEditingController();
  TextEditingController passwd = TextEditingController();

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade700,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 2.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: TextFormField(
                        controller: brand,
                        validator: (val) =>
                            val.isEmpty ? 'Enter a Brand name' : null,
                        style: TextStyle(color: Colors.teal.shade600,fontSize: 18.0),
                        decoration: InputDecoration(
                          icon: Icon(Icons.business_outlined,size: 32,),
                          hintText: 'Brand',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.teal.shade600,
                          hoverColor: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 2.0,
                    margin:
                    EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: TextFormField(
                        controller: email,
                        validator: (val) =>
                        val.isEmpty ? 'Enter an email ID' : null,
                        style: TextStyle(color: Colors.teal.shade600,fontSize: 18.0),
                        decoration: InputDecoration(
                          icon: Icon(Icons.mail,size: 32,),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.teal.shade600,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    elevation: 2.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 40.0, horizontal: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      child: TextFormField(
                        controller: passwd,
                        validator: (val) =>
                            val.isEmpty ? 'Enter password' : null,
                        style: TextStyle(color: Colors.teal.shade600,fontSize: 18.0),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: _toggleVisibility,
                            icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.remove_red_eye),
                          ),
                          icon: Icon(Icons.lock,size: 32,),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 20.0,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        obscureText: _isHidden,
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25.0),
                      child: TextButton(
                          onPressed: () async{
                            if(_formKey.currentState.validate()){
                              int i = await DatabaseHelper.instance.insert({
                                DatabaseHelper.columnName1: email,
                                DatabaseHelper.columnName2: brand,
                                DatabaseHelper.columnName3: passwd
                              });
                              print('The inserted id is $i');
                            }
                          },
                          child: Text(
                            'ADD',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade600),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );

  }
}
