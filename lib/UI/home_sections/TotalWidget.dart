import 'package:flutter/material.dart';
class TotalWidget extends StatelessWidget {
  const TotalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(
          color: Colors.black12,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // Space out the children evenly
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Total Income",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "0",
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 1.0, // Adjust the width of the line
            height: 50.0, // Adjust the height of the line
            color: Colors.black, // Set the color of the line
          ),
          const Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Total Expense",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "0",
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Container(
            width: 1.0, // Adjust the width of the line
            height: 50.0, // Adjust the height of the line
            color: Colors.black, // Set the color of the line
          ),
          const Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Total Balance",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "0",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
