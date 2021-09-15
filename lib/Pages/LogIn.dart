import 'package:flutter/material.dart';
import 'package:ui_mahdi/Pages/ResetPassword.dart';
import 'package:ui_mahdi/Pages/SignUp.dart';

import 'ProfilePage.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LogInScreen();
  }
}

class _LogInScreen extends State<LogInScreen> {
  bool value;

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Are you sure?'),
            content: Text('You are going to exit the application'),
            actions: <Widget>[
              FlatButton(
                child: Text('NO'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text('YES'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }

  bool signInState = false;
  String email = "", password = "";
  var _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var value;
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: new Scaffold(
        backgroundColor: Colors.white,
        //change column to listview
        body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 180,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Center(child: Icon(Icons.smartphone,size: 60,)),
                      Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: Color(0xfff3283c),
                              fontWeight: FontWeight.bold,
                              fontSize: 45),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Theme(
                data: ThemeData(hintColor: Colors.grey),
                child: Padding(
                  padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please enter your email";
                      } else {
                        email = value;
                      }
                      return email;
                    },
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Color(0xfff3283c), width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Color(0xfff3283c), width: 1)),
                        icon: Icon(Icons.person_rounded)),
                  ),
                ),
              ),
              Theme(
                data: ThemeData(hintColor: Colors.grey),
                child: Padding(
                  padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                  child: TextFormField(
                    obscureText: true,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please enter your password";
                      } else {
                        password = value;
                      }
                      return password;
                    },
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Color(0xfff3283c), width: 1)),
                   icon: Icon(Icons.lock)
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Container(
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> ForgotScreen()));
                      },
                      child: Row(
                        children: [
                          Checkbox(value: this.value,
                          onChanged: (bool value) {
                            setState(() {
                              this.value = value;
                            });
                          },),
                          Text("Remember me"),
                          Text(
                            "Forgot password ?",
                            style: TextStyle(color: Color(0xfff3283c)),
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: RaisedButton(
                    onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => ProfileScreen()));
                   
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: Color(0xfff3283c),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    padding: EdgeInsets.all(10),
                  )),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => SignUpScreen()));
                      },
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Register",
                            style: TextStyle(color: Colors.black),
                          ),
                          Container(
                            width: 45,
                            height: 1,
                            color: Colors.grey,
                          ),
                        ],
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
