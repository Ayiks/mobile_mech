import 'package:flutter/material.dart';

class MyCustomEndDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // End drawer content
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.menu), // Set your end drawer open/close icon
              onPressed: () {
                if (Scaffold.of(context).isEndDrawerOpen) {
                  Navigator.pop(context); // Close the end drawer
                } else {
                  Scaffold.of(context).openEndDrawer(); // Open the end drawer
                }
              },
            ),
            title: Text('Open/Close End Drawer'),
          ),
          // ... other end drawer items
        ],
      ),
    );
  }
}

// In your Scaffold: