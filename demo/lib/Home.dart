import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool light = false;
  bool light1 = false;
  bool light2 = false;
  bool light3 = false;
  bool light4 = false;
  bool light5 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8, left: 25),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      AssetImage("assets/images/prabhat image.jpeg"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, left: 20),
                child: Text(
                  "Hi Prabhat!",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21),
                child: Text(
                  "Welcome to Home",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    // child: Padding(
                    //   padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Living Room',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text(
                            "No. of living rooms are free",
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "4 Devices",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.deepOrange,
                          value: light,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              light = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  // ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    // child: Padding(
                    //   padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Guest Room',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: Text(
                            "We have provided the double beded room for the stay of the guest",
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "4 Devices",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.deepOrange,
                          value: light1,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              light1 = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    // child: Padding(
                    //   padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Guest Room',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text(
                            "The Guest room is available for guset to stay",
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            "4 Devices",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.deepOrange,
                          value: light2,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              light2 = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    // child: Padding(
                    //   padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Kitchen',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text(
                            "Kitchen Room is used for cooking purpose",
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "4 Devices",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.deepOrange,
                          value: light3,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              light3 = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    // child: Padding(
                    //   padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Kids Room',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text(
                            "Here is The Kids Room were kids can play",
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "4 Devices",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.deepOrange,
                          value: light4,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              light4 = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    // child: Padding(
                    //   padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          'Balcony',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text(
                            "Here is Balcony view you can see",
                            style: TextStyle(
                                fontSize: 10, color: Colors.grey[400]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "4 Devices",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange),
                          ),
                        ),
                        Switch(
                          activeColor: Colors.deepOrange,
                          value: light5,
                          onChanged: (bool value) {
                            // This is called when the user toggles the switch.
                            setState(() {
                              light5 = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
