import 'package:demo/rooms/BedRoom.dart';
import 'package:demo/rooms/GuestRoom.dart';
import 'package:demo/rooms/KidsRoom.dart';
import 'package:demo/rooms/Kitchen.dart';
import 'package:demo/rooms/LivingRoom.dart';
import 'package:flutter/material.dart';
import 'AddSection.dart';

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
  int _selectedIndex = 0;
  // static TextStyle optionStyle =
  //     TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   // Text('Index 0: Home', style: optionStyle),
  //   // Text('Index 1: clock', style: optionStyle),
  //   // Text('Index 2: network', style: optionStyle),
  //   // Text('Index 2: Settings', style: optionStyle),
  // ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LivingRoom(),
                          ));
                    },
                    child: Container(
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
                  ),
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BedRoom(),
                          ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      // child: Padding(
                      //   padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text(
                            'Bed Room',
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
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GuestRoom(),
                          ));
                    },
                    child: Container(
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Kitchen(),
                          ));
                    },
                    child: Container(
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
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KidsRoom(),
                          ));
                    },
                    child: Container(
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
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ), // Selected label style
          unselectedLabelStyle:
              TextStyle(fontSize: 12), // Unselected label style

          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time), label: 'Time'),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(), // Empty space for floating button
              label: '',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Form'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],

          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrangeAccent,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddSection(),
                ));
          },
          child: Text(
            "+",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
