import 'package:flutter/material.dart';
import 'package:smartcrop/widgets/custom_button.dart';
class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 35),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox( height: 20,),
                Text("BHOOMI" ,style: TextStyle(
                  color: Colors.green,
                  fontSize: 45,
                  fontWeight: FontWeight.normal),) ,
                SizedBox(height: 65,),
                Text("Select Language" , style: TextStyle(
                  color: Colors.black87,
                  fontSize: 35,
                  fontWeight: FontWeight.w200,
                ),) ,

                SizedBox(height: 15,),
                Text("भाषा चुने", style: TextStyle(
                  fontSize: 35,
                  color: Colors.black87,
                  fontWeight: FontWeight.w100,

                ),),

                SizedBox(
                  height: 30,
                ),

                //custom button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child:  CustomButton(
                    onPressed: () {} ,
                    text: "English",
                  ),
                ),
                SizedBox(height: 25) ,
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child:  CustomButton(
                    onPressed: () {} ,
                    text: "हिंदी",
                  ),
                ),

              ],
            ),),
          ),
        ),
      ),
    );
  }
}

