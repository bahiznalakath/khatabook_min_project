import 'package:flutter/material.dart';
import 'package:khatabook/colors/colors.dart';

class AddFilters extends StatelessWidget {
  const AddFilters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(
                child: Text(
                  "Add filters",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              icon: Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close_outlined,color: Colors.red,size: 30,))),
              contentPadding: EdgeInsets.all(25.0),
              insetPadding: EdgeInsets.all(25.0),
              actions: <Widget>[
                Container(
                  height: 300,
                  width: 300,
                  child: Column(
                    children: [
                      Divider(),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:primaryColor,
                            ),
                            child: Text('By Income'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: primaryColor,
                            ),
                            child: Text('By Expense'),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor:primaryColor,
                        ),
                        child: Text('All'),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 40,
                        width: 230,
                        child: Card(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:primaryColor,
                              minimumSize:
                                  Size(200, 50), // Increase button size
                            ),
                            child: Text('APPLY',
                                style: TextStyle(
                                    fontSize: 18)), // Increase text size
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        height: 50,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(Icons.filter_alt_sharp),
            Text("Add filters"),
          ],
        ),
      ),
    );
  }
}
