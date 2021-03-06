import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForgotScreen();
  }
}

class _ForgotScreen extends State<ForgotScreen> {
  String email = "";
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Reset password",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff2E001F),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  "We will mail you a link ... Please click on that link to reset your password",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                Theme(
                  data: ThemeData(hintColor: Colors.grey),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your email";
                        } else {
                          email = value;
                        }
                        return null;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Color(0xfff3283c), width: 1)),
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
                                BorderSide(color:Color(0xfff3283c), width: 1)),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: RaisedButton(
                      onPressed: () {
                       
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Color(0xfff3283c),
                      child: Text(
                        "Send Email ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      padding: EdgeInsets.all(10),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 