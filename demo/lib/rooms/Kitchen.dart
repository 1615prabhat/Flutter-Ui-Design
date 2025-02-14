import 'package:flutter/material.dart';

class Kitchen extends StatefulWidget {
  const Kitchen({super.key});

  @override
  State<Kitchen> createState() => _KitchenState();
}

class _KitchenState extends State<Kitchen> {
  bool lampOn = true;
  bool tvOn = false;
  bool acOn = true;
  bool fridgeOn = true;
  bool cctvOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          // **Top Orange Header**
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // **Back Button & Settings**
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Icon(Icons.settings, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20),

                // **Title**
                Text(
                  "Kitchen",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Kitchen is used for the cookin purpose",
                  style: TextStyle(color: Colors.white70),
                ),
                SizedBox(height: 20),

                // **Temperature & Humidity Section**
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // **Temperature Card**
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.thermostat, color: Colors.white, size: 30),
                          SizedBox(height: 5),
                          Text("24°C", style: TextStyle(color: Colors.white)),
                          Text("TEMP",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12)),
                        ],
                      ),
                    ),

                    // **Humidity Card**
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.water_drop, color: Colors.white, size: 30),
                          SizedBox(height: 5),
                          Text("50%", style: TextStyle(color: Colors.white)),
                          Text("HUMIDITY",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // **Devices List**
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                _buildDeviceTile(
                    "Lamp", "85% Brightness", Icons.lightbulb, lampOn, (val) {
                  setState(() => lampOn = val);
                }),
                _buildDeviceTile("TV", "51% Volume", Icons.tv, tvOn, (val) {
                  setState(() => tvOn = val);
                }),
                _buildDeviceTile(
                    "Air Conditioner", "24°C Temperature", Icons.ac_unit, acOn,
                    (val) {
                  setState(() => acOn = val);
                }),
                _buildDeviceTile(
                    "Fridge", "5°C Temperature", Icons.kitchen, fridgeOn,
                    (val) {
                  setState(() => fridgeOn = val);
                }),
                _buildDeviceTile(
                    "CCTV Cam.", "Left/Right: 36.4°", Icons.videocam, cctvOn,
                    (val) {
                  setState(() => cctvOn = val);
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // **Reusable Device Tile**
  Widget _buildDeviceTile(String title, String subtitle, IconData icon,
      bool value, Function(bool) onChanged) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.orange, size: 30),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(subtitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ],
          ),
          Switch(
            value: value,
            activeColor: Colors.orange,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
