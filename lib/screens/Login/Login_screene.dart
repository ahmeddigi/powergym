import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginSecreene extends StatefulWidget {
  LoginSecreene({Key? key}) : super(key: key);

  @override
  _LoginSecreeneState createState() => _LoginSecreeneState();
}

class _LoginSecreeneState extends State<LoginSecreene> {
  final myController = TextEditingController();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      // constraints: BoxConstraints(maxHeight: 400, minHeight: 200),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/bg.png",
          ),
        ),
      ),
      child: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/logo.png",
            height: 200,
          ),
          Center(child: Container(width: 500, child: _formLogin())),
        ],
      ),
    ));
  }

  Widget _formLogin() {
    return Column(
      children: [
        TextFormField(
          style: TextStyle(fontSize: 16, color: Colors.black),
          controller: myController,
          decoration: InputDecoration(
            hintText: 'Enter email or Phone number',
            filled: true,
            fillColor: Colors.blueGrey[50],
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 30),
        TextField(
          style: TextStyle(fontSize: 16, color: Colors.black),
          decoration: InputDecoration(
            hintText: 'Password',
            filled: true,
            fillColor: Colors.blueGrey[50],
            contentPadding: EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey[50]!),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(height: 40),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurple[100]!,
                spreadRadius: 10,
                blurRadius: 20,
              ),
            ],
          ),
          child: ElevatedButton(
            child: Container(
                width: double.infinity,
                height: 50,
                child: Center(child: Text("Sign In"))),
            onPressed: () async {
              final SharedPreferences prefs = await _prefs;

              if (myController.text == 'admin') {
                prefs.setBool('admin', true);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChangeNotifierProvider(
                            create: (cnx) => MenuController(),
                            child: MainScreen(
                              isadmin: true,
                            ))));
              } else {
                prefs.setBool('admin', false);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChangeNotifierProvider(
                            create: (cnx) => MenuController(),
                            child: MainScreen(
                              isadmin: false,
                            ))));
              }
            },
            style: ElevatedButton.styleFrom(
              primary: bluecolor,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
