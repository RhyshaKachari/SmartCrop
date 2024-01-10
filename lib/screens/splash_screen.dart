import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smartcrop/screens/home_screen.dart';
import 'package:smartcrop/screens/language_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds:4),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const LanguageScreen()));
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Icon(Icons.rice_bowl,
            size: 80,
            color: Colors.white,),
            SizedBox(height: 20,),
            Text('Bhoomi',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontSize: 40,
            ),)
          ],
        ),
      ),
    );
  }
}
