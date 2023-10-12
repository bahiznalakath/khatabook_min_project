import 'package:flutter/material.dart';
import 'package:khatabook/colors/colors.dart';

class Income_adding_Page extends StatefulWidget {
  const Income_adding_Page({super.key});

  @override
  State<Income_adding_Page> createState() => _Income_adding_PageState();
}

class _Income_adding_PageState extends State<Income_adding_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => _showConfirmationDialog(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Income",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff0f245e),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.calendar_month), Text("11-10-2023")],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.access_time), Text("20:59:35")],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Amount',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  labelText: 'Remarks',
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                elevation: 2,
                child: Container(
                  width: double.infinity,
                  height: 430,
                  color: Colors.white12,
                ),
              ),
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () => _showConfirmationDialog(context),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xff0f245e),
                    ),
                    child: Text("SAVE")))
          ],
        ),
      ),
    );
  }

  Future<void> _showConfirmationDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Save or Discard",
            ),
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
          // contentPadding: EdgeInsets.all(25.0),
          insetPadding: EdgeInsets.all(25.0),
          actions: <Widget>[
            Divider(thickness: 3),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:primaryColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pop(); // Close the confirmation dialog and page
                  },
                ),
                ElevatedButton(
                  child: Text("Discard"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: primaryColor,
                  ),
                  onPressed: () {
                    // Add your discard logic here
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .pop(); // Close the confirmation dialog and page
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
