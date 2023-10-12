import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:khatabook/UI/home_sections/AddFilters.dart';
import 'package:khatabook/UI/home_sections/Mouth_Select.dart';
import 'package:khatabook/UI/home_sections/TableWidget.dart';
import 'package:khatabook/UI/home_sections/TotalWidget.dart';
import 'package:khatabook/colors/colors.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String khatabookName = "Default Khatabook";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            _showSnapshotWindow(context);
          },
          child: Row(
            children: [
              Icon(
                Icons.my_library_books_outlined,
                color: Colors.white,
              ),
              Text(
                "BOOK",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.picture_as_pdf,
              color: Colors.white,
            ),
            onPressed: () {
              Fluttertoast.showToast(
                msg: 'Kindly Enter Atleast  one record',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 2,
                backgroundColor: primaryColor,
                textColor: Colors.white,
                fontSize: 16.0,
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/SettingsPage');
            },
          ),
        ],
        backgroundColor: primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: 'Your Text',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Mouth_Select(),
                    AddFilters(),
                  ],
                ),
                TotalWidget(),
              ],
            ),
          ),
          TableWidget(),
          Container(
            width: double.infinity,
            height: 350,
            color: Colors.white10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Income-addingPage');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius as needed
                  )),
                ),
                child: Center(
                  child: Text("Income"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Expense-addingPage');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius as needed
                  )),
                ),
                child: Center(
                  child: Text(
                    "Expense",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _showSnapshotWindow(BuildContext context) {
    String khatabookName = 'Khatabook 1';

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Edit Khatabook Name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          icon: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.close_outlined,
                    color: Colors.red,
                    size: 30,
                  ))),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(),
              Container(
                height: 55,
                width: 215,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: DropdownButton<String>(
                  value: khatabookName,
                  onChanged: (value) {
                    khatabookName = value!;
                    // Update the selected value in your app's state here if needed.
                  },
                  items: [
                    'Khatabook 1',
                    'Khatabook 2',
                    'Khatabook 3',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    labelText: "Book1",
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: primaryColor,
                    ),
                    child: Text('SELECT BOOK'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle the UPDATE action here.
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: primaryColor,
                    ),
                    child: Text(
                      'UPDATE',
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: primaryColor),
                child: Text('+CREATE NEW KHATABOOK'),
              ),
            ],
          ),
          actions: <Widget>[],
        );
      },
    );
  }
}
