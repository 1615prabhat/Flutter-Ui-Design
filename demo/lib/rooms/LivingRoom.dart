import 'dart:math';

import 'package:flutter/material.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({super.key});

  @override
  State<LivingRoom> createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.settings,
            color: Colors.white,
          )
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //color: Colors.blue,
                  height: 100,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Text(
                      "3 members can acess bedroom",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )),
        toolbarHeight: 120,
        backgroundColor: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text("Living Room",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        children: [
          Text("Living Room for 20 proples"),
        ],
      ),
    );
  }
}
