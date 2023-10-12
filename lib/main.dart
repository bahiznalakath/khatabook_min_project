import 'package:flutter/material.dart';
import 'package:khatabook/UI/home_page.dart';
import 'package:khatabook/UI/home_sections/expense_adding_page.dart';
import 'package:khatabook/UI/home_sections/income_adding_page.dart';
import 'package:khatabook/UI/settings_page.dart';
import 'package:khatabook/UI/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KhataBook',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff0f245e),),
        useMaterial3: true,
      ),
      home:   StartingPage(),
    routes: {
      '/homePage': (context) => HomePage(),
      '/SettingsPage': (context) => SettingsPage(),
      '/Expense-addingPage': (context) => Expense_adding_Page (),
      '/Income-addingPage': (context) => Income_adding_Page (),
    }
    );
  }
}

