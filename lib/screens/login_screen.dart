import 'package:flutter/material.dart';
import 'package:smartcrop/screens/user_intro.dart';
import 'package:smartcrop/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //form key
  final _formKey = GlobalKey<FormState>();

  //editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();


  @override
  Widget build(BuildContext context) {

    //email field
    final emailField = TextFormField(
      autofocus: false ,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      )
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,

      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        )
    );

    //loginbutton
    final loginButton = CustomButton(text: "Login", onPressed: (){});

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child:Image.asset("assets/login5.png", fit: BoxFit.contain,),
                    ),
                    SizedBox(height: 45,),
                    emailField ,
                    SizedBox(height: 25,),
                    passwordField,
                    SizedBox(height: 35,),
                    // SizedBox(height: 45,),
                    Container(
                        height: 50,
                        width: double.infinity,
                        child: CustomButton(text: "Login", onPressed: (){})),

                    SizedBox(height: 15,) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account? " ),
                        GestureDetector(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> UserIntro()));
                          },
                          child: Text(
                            "SignUp" ,
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 15

                            ),
                          ),
                        )
                      ],
                    ) ,
                  ],

                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
