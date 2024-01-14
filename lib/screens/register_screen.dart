import 'package:flutter/material.dart';
import 'package:smartcrop/widgets/custom_button.dart';
import 'otp.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController countrycode = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text = "+91" ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/img1.png',
              width: 150,
              height: 150,),
              SizedBox(
                height: 25,
              ),

              Text('Phone Verification' ,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),) ,
              SizedBox(height: 10,) ,
              Text('We need to register your phone number before getting started !',
              style: TextStyle(
                fontSize: 16,
              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border:Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode ,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),

                    Text("|" , style : TextStyle(fontSize: 33 , color: Colors.grey), ) ,
                    SizedBox(
                        width: 10
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none
                          ,hintText: "Phone"  ,),

                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)
                      => const MyOtp()),);
                  },
                  child: Text('Send the code'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
