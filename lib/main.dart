import 'package:flutter/material.dart';
import 'package:smartcrop/screens/home_screen.dart';
import 'package:smartcrop/screens/otp.dart';
import 'package:smartcrop/screens/register_screen.dart';
import 'package:smartcrop/screens/splash_screen.dart';

void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartCrop' ,
      theme: ThemeData(
          primarySwatch: Colors.green
      ),
      home: SplashScreen(),
    );
  }
}
