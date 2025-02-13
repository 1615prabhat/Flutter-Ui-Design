import 'package:flutter/material.dart';

class AddSection extends StatefulWidget {
  const AddSection({super.key});

  @override
  State<AddSection> createState() => _AddSectionState();
}

class _AddSectionState extends State<AddSection> {
  bool light = false;
  bool light1 = false;
  bool light2 = false;
  bool light3 = false;
  bool light4 = false;
  bool light5 = false;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 2) {
      _showAddDialog(); // Handle "+" button separately
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void _showAddDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add Button Pressed"),
          content: Text("You clicked the custom + button!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text("Page $_selectedIndex",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(Icons.home,
                      color: _selectedIndex == 0
                          ? Colors.amber[800]
                          : Colors.grey),
                  onPressed: () => _onItemTapped(0)),
              IconButton(
                  icon: Icon(Icons.access_time,
                      color: _selectedIndex == 1
                          ? Colors.amber[800]
                          : Colors.grey),
                  onPressed: () => _onItemTapped(1)),

              // Empty space for floating "+" button
              SizedBox(width: 40),

              IconButton(
                  icon: Icon(Icons.network_check,
                      color: _selectedIndex == 3
                          ? Colors.amber[800]
                          : Colors.grey),
                  onPressed: () => _onItemTapped(3)),
              IconButton(
                  icon: Icon(Icons.settings,
                      color: _selectedIndex == 4
                          ? Colors.amber[800]
                          : Colors.grey),
                  onPressed: () => _onItemTapped(4)),
            ],
          ),
        ),

        // Custom "+" Button (Not FloatingActionButton)
        floatingActionButton: GestureDetector(
          onTap: _showAddDialog,
          child: Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: [
                BoxShadow(color: Colors.black26, blurRadius: 8, spreadRadius: 2)
              ],
            ),
            child: Icon(Icons.add, color: Colors.white, size: 32),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
