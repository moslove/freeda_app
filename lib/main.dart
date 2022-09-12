import 'package:flutter/material.dart';
import 'package:freeda_app/screens/invitefriends.dart';
import 'package:freeda_app/screens/paymentsuccessful.dart';
import 'package:freeda_app/screens/recipients.dart';
void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentSuccessful(),
    );
  }
}
