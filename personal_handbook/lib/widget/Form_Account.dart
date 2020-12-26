import 'dart:io';

import 'package:flutter/material.dart';

class Form_Account extends StatefulWidget {
  @override
  _Form_AccountState createState() => _Form_AccountState();
}

class _Form_AccountState extends State<Form_Account> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Information Account',
            style: TextStyle(
              color: Colors.white,
            )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.green, Colors.blue])),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              new Image.asset(
                'assets/images/user-icon.png',
                width: 80.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 15,
              ),
              
              Text("Username",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold)),
              Padding( 
                padding: EdgeInsets.all(16.0), 
              child: TextField(
                onChanged: (text) {},
                decoration: InputDecoration(
                    hintText: "Enter full name",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0)),
              ),),
              SizedBox(
                height: 15,
              ),
              Text("Gender",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold)),
                      Padding( 
                padding: EdgeInsets.all(16.0), 
              child: TextField(
                onChanged: (text) {},
                decoration: InputDecoration(
                    hintText: "Enter gender ",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0)),
              ),),
              SizedBox(
                height: 15,
              ),
            Text("Hobby",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold)),
              Padding( 
                padding: EdgeInsets.all(16.0), 
              child: TextField(
                onChanged: (text) {},
                decoration: InputDecoration(
                    hintText: "Enter hobby",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0)),
              ),),
              SizedBox(
                height: 15,
              ),
              Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                child: Container(
                                  width: 200,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFF17ead9),
                                        Color(0xFF6078ea)
                                      ]),
                                      borderRadius: BorderRadius.circular(6.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xFF6078ea)
                                                .withOpacity(.3),
                                            offset: Offset(0.0, 8.0),
                                            blurRadius: 8.0)
                                      ]),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        
                                      },
                                      child: Center(
                                        child: Text("Save",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                letterSpacing: 1.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),] ) 
            ],
          ),
        ),
      ),
    );
  }
}
