import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firstapp/screens/Pagina%20Inicial/homescreen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            ));
  }
    @override
  Widget build(BuildContext context) {
    return Container(
      child: _img(),
    );
  }

  _img() {
    return Image.asset(
      "assets/splash.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }


}