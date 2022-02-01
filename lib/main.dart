import 'package:flutter/material.dart';
import 'package:groceyapp/view/product_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:ProductScreen(),
    );
  }
}

