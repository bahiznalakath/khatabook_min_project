import 'package:flutter/material.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Makes the bar span the width
      color: const Color(0xff0f245e),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text(
              'Date',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              'Income',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              'Expense',
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
