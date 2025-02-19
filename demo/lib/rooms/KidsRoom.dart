import 'dart:math';

import 'package:flutter/material.dart';

class KidsRoom extends StatefulWidget {
  const KidsRoom({super.key});

  @override
  State<KidsRoom> createState() => _KidsRoomState();
}

class _KidsRoomState extends State<KidsRoom> {
  bool light1 = true;
  bool light2 = true;
  bool light3 = true;
  bool light4 = true;
  bool light5 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[250],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Kids Room ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "A room were kids have fun.",
                      style: TextStyle(color: Colors.white70),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MaterialButton(
                          color: Colors.white30,
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
                            Text("24'C", style: TextStyle(color: Colors.white)),
                            Text("temp", style: TextStyle(color: Colors.white))
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        MaterialButton(
                          color: Colors.white30,
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
                            Text("50%", style: TextStyle(color: Colors.white)),
                            Text("HUMIDITY",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  leading: Icon(
                    Icons.light,
                    color: Colors.black,
                  ),
                  tileColor: const Color.fromARGB(255, 48, 233, 101),
                  title: Text("Lamp",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    "Light is fully coloured",
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Switch(
                    activeColor: Colors.black,
                    value: light1,
                    onChanged: (value) {
                      setState(() {
                        light1 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Color.fromARGB(255, 48, 233, 101),
                  leading: Icon(
                    Icons.living,
                    color: Colors.black,
                  ),
                  title: Text("Living Area",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    "Living Area consists of 50 Members",
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Switch(
                    activeColor: Colors.black,
                    value: light2,
                    onChanged: (value) {
                      setState(() {
                        light2 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Color.fromARGB(255, 48, 233, 101),
                  leading: Icon(
                    Icons.tv,
                    color: Colors.black,
                  ),
                  title: Text(
                    "TV",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "A seperate full screen TV is provided.",
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Switch(
                    activeColor: Colors.black,
                    value: light3,
                    onChanged: (value) {
                      setState(() {
                        light3 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Color.fromARGB(255, 48, 233, 101),
                  leading: Icon(
                    Icons.air,
                    color: Colors.black,
                  ),
                  title: Text(
                    "Air Conditioner",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "A Full AC complex is there.",
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Switch(
                    activeColor: Colors.black,
                    value: light4,
                    onChanged: (value) {
                      setState(() {
                        light4 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Color.fromARGB(255, 48, 233, 101),
                  leading: Icon(
                    Icons.camera,
                    color: Colors.black,
                  ),
                  title: Text(
                    "CCTV_Cam",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "The campus is fully in cctv survilance.",
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Switch(
                    activeColor: Colors.black,
                    value: light5,
                    onChanged: (value) {
                      setState(() {
                        light5 = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 10, right: 10, bottom: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: Color.fromARGB(255, 48, 233, 101),
                  leading: Icon(
                    Icons.tv,
                    color: Colors.black,
                  ),
                  title: Text(
                    "TV",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "A seperate full screen TV is provided.",
                    style: TextStyle(fontSize: 10),
                  ),
                  trailing: Switch(
                    activeColor: Colors.black,
                    value: light3,
                    onChanged: (value) {
                      setState(() {
                        light3 = value;
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
