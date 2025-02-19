import 'package:demo/Home.dart';
import 'package:demo/rooms/CreateUser.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(
          //   Icons.menu,
          //   color: Colors.red,
          // ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.account_balance),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.search),
          //   ),
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.settings),
          //   )
          // ],
          title: Text(
            "Login Page",
            style: TextStyle(color: Colors.white),
          ),

          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Image.asset("images/A123.png"),
              // SizedBox(
              //   height: 100,
              //   width: double.infinity,
              //   child: Image.network(
              //       'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
              // ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, //center the whole row
                  children: [
                    Container(
                        height: 30,
                        //width: 50,
                        child: Image.asset("assets/images/flutter-icon.png")),
                    Center(
                        child: Text(
                      "Flutter",
                      style: TextStyle(
                          fontSize: 30,
                          //fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
              Center(
                  child: Text(
                "Forget Password",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              )),
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 285,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "New User?",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateUser(),
                            ));
                      },
                      child: Text(
                        "create user",
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              )
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.cyanAccent,
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => Home(),
        //         ));
        //   },
        //   child: Text(
        //     "+",
        //     style: TextStyle(fontSize: 30, color: Colors.redAccent),
        //   ),
        // ),
      ),
    );
  }
}
