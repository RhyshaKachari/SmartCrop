import 'package:flutter/material.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/image_provider.dart';

import '../widgets/custom_button.dart';
class UserIntro extends StatefulWidget {
  const UserIntro({Key? key}) : super(key: key);

  @override
  State<UserIntro> createState() => _UserIntroState();
}

class _UserIntroState extends State<UserIntro> {
  //our form key
  final _formKey = GlobalKey<FormState>();
  //editng Controller
  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    //first name field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      //validator
      onSaved: (value){
        firstNameEditingController.text = value! ;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );

//second name
    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      //validator
      onSaved: (value){
        lastNameEditingController.text = value! ;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Last Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      //validator
      onSaved: (value){
       emailEditingController.text = value! ;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,

      onSaved: (value){
        passwordEditingController.text = value! ;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      onSaved: (value){
       confirmPasswordEditingController.text = value! ;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );


    return Scaffold(
      extendBodyBehindAppBar: true,
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded , color:Colors.black),
          onPressed: (){
            Navigator.of(context).pop() ;
          },
        ),
      ),
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
                      child: Image.asset("assets/login4.png",
                      fit: BoxFit.contain,),
                    ),
                    SizedBox(height: 25,),
                    firstNameField,
                    SizedBox(height: 25,),
                    lastNameField,
                    SizedBox(height: 25,),
                    emailField,
                    SizedBox(height: 25,),
                    passwordField,
                    SizedBox(height: 25,),
                    confirmPasswordField,
                    SizedBox(height: 20),

                    Container(
                      height: 50,
                      width: double.infinity,
                        child: CustomButton(text: "Sign Up", onPressed: (){})),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
