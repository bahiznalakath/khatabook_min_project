import 'package:flutter/material.dart';
import 'package:khatabook/colors/colors.dart';

class StartingPage extends StatefulWidget {
  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:primaryColor,
      ),
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 200), // Add some spacing
            Image.asset(
              'assets/images/KhataLog.jpg',
              width: 260, // Adjust the width as needed
              height: 260, // Adjust the height as needed
            ),
            const SizedBox(height: 55),
            const Text(
              "Creative Financial Solutions\nin your pocket",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 9,
            ),
          _isLoading?
            CircularProgressIndicator():
            SizedBox(
              width: 290,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, '/homePage'); // Example navigation
                },
                child: const Text("Start",
                    style: TextStyle(fontSize: 18, color: Colors.black)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
