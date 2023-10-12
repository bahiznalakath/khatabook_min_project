import 'package:flutter/material.dart';
import 'package:khatabook/colors/colors.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                leading: const Icon(
                  Icons.insert_chart,
                  size: 28,
                  color: Colors.black,
                ),
                title: const Text(
                  'All Reports',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                leading: const Icon(
                  Icons.language,
                  size: 28,
                  color: Colors.black,
                ),
                title: const Text(
                  'Select Language',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Handle tap actions here
                },
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                leading: const Icon(
                  Icons.lock,
                  size: 28,
                  color: Colors.black,
                ),
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                  activeColor: Colors.white10,
                ),
                title: const Text(
                  'App Lock',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                leading: const Icon(
                  Icons.brightness_4,
                  size: 28,
                  color: Colors.black,
                ),
                title: const Text(
                  'Dark Theme',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: false,
                  onChanged: (value) {},
                  activeColor: Colors.white10,
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                leading: const Icon(
                  Icons.share,
                  size: 28,
                  color: Colors.black,
                ),
                title: const Text(
                  'Share App',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 10.0),
                leading: const Icon(
                  Icons.lock,
                  size: 28,
                  color: Colors.black,
                ),
                title: const Text(
                  'Change Password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
