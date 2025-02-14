import 'dart:math';

import 'package:flutter/material.dart';

class BedRoom extends StatefulWidget {
  const BedRoom({super.key});

  @override
  State<BedRoom> createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  bool light1 = true;
  bool light2 = true;
  bool light3 = true;
  bool light4 = true;
  bool light5 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white70,
          body: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(50))),
                // color: Colors.deepOrangeAccent,
                height: 200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "BedRoom",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          )
                        ],
                      ),
                      Text(
                        "3 Family members has access",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            color: Colors.white60,
                            shape: CircleBorder(),
                            onPressed: () {},
                            child: Icon(
                              Icons.thermostat,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Text("24'C",
                                  style: TextStyle(color: Colors.white)),
                              Text("temp",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          MaterialButton(
                            color: Colors.white60,
                            shape: CircleBorder(),
                            onPressed: () {},
                            child: Icon(
                              Icons.water_drop,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Text("50%",
                                  style: TextStyle(color: Colors.white)),
                              Text("HUMIDITY",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'Lamp',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  tileColor: Colors.white,
                  isThreeLine: true,
                  subtitle: Text(
                    "65 brightness",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  trailing: Switch(
                    activeColor: Colors.deepOrange,
                    value: light1,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light1 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.tv,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'TV',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  tileColor: Colors.white,
                  isThreeLine: true,
                  subtitle: Text(
                    "65% Volume",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  trailing: Switch(
                    activeColor: Colors.deepOrange,
                    value: light2,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light2 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'Air Conditioner',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  tileColor: Colors.white,
                  isThreeLine: true,
                  subtitle: Text(
                    "24' C Temperature",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  trailing: Switch(
                    activeColor: Colors.deepOrange,
                    value: light3,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light3 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.kitchen,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'Fridge',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  tileColor: Colors.white,
                  isThreeLine: true,
                  subtitle: Text(
                    "9'C Temperature",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  trailing: Switch(
                    activeColor: Colors.deepOrange,
                    value: light4,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light4 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.camera_front,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'CCTV cam.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  tileColor: Colors.white,
                  isThreeLine: true,
                  subtitle: Text(
                    "all type of lens",
                    style: TextStyle(fontSize: 10, color: Colors.black54),
                  ),
                  trailing: Switch(
                    activeColor: Colors.deepOrange,
                    value: light5,
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light5 = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
