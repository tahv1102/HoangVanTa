import 'dart:ui';
import 'package:compound/ui/views/login_view.dart';
import 'package:compound/widget/Form_Account.dart';
import 'package:compound/widget/NotesList.dart';
import 'package:compound/widget/NotesNew.dart';
import 'package:compound/widget/calendar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My diary ',
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xFF17ead9), Color(0xFF6078ea)])),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Form_Account()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Container(
                    width: 300,
                    height: 55,
                    constraints:
                        BoxConstraints(maxWidth: 400.0, minHeight: 55.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xFF6078ea), Color(0xFF17ead9)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(60, 4, 30, 4),
                                  child: Icon(
                                    Icons.people,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                                  child: Text(
                                    'Account',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ))))),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NotesNew(NoteMode.Adding, null)));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Container(
                    width: 300,
                    height: 55,
                    constraints:
                        BoxConstraints(maxWidth: 400.0, minHeight: 55.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xFF17ead9), Color(0xFF6078ea)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(60, 4, 30, 4),
                                  child: Icon(
                                    Icons.library_books,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                                  child: Text(
                                    'Note New',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ))))),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NoteList()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Container(
                    width: 300,
                    height: 55,
                    constraints:
                        BoxConstraints(maxWidth: 400.0, minHeight: 55.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xFF6078ea), Color(0xFF17ead9)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(60, 4, 30, 4),
                                  child: Icon(
                                    Icons.library_add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                                  child: Text(
                                    'Note List',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ))))),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Calendar()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                padding: EdgeInsets.all(0.0),
                child: Container(
                    width: 300,
                    height: 55,
                    constraints:
                        BoxConstraints(maxWidth: 400.0, minHeight: 55.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xFF17ead9), Color(0xFF6078ea)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(60, 4, 30, 4),
                                  child: Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                                  child: Text(
                                    'Calendar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ))))),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // reset padding về 0 - 4 chiều = 0
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Color(0xFF17ead9), Color(0xFF6078ea)])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Image.asset(
                    'assets/images/user-icon.png',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                  new Text(
                    'Welcome to ta1102',
                    style: new TextStyle(
                        fontSize: 18,
                        color: Colors.white, // màu text
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: new Icon(
                Icons.library_books,
                color: Colors.green[600],
              ),
              title: Text('List Note'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoteList()),
                );
              },
            ),
            ListTile(
              leading: new Icon(
                Icons.library_add,
                color: Colors.blue[600],
              ),
              title: Text('New Note'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NotesNew(NoteMode.Adding, null)),
                );
              },
            ),
            ListTile(
              leading: new Icon(
                Icons.calendar_today,
                color: Colors.blue[900],
              ),
              title: Text(
                'Calendar',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calendar()),
                );
              },
            ),
            ListTile(
              leading: new Icon(
                Icons.lock_outline,
                color: Colors.red,
              ),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
