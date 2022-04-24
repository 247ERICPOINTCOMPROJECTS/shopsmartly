import 'package:flutter/material.dart';
import 'package:shop_smartly/constants.dart';
import 'package:shop_smartly/Screens/Login/login_screen.dart';
import 'package:shop_smartly/Screens/SignUp/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      SizedBox(height: 20,),
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: kTextColor ),),
                      SizedBox( height: 20 ),
                      Text("Save your money and shop with us ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15 ),)

                    ],),
                  // the logo image container
                  Container(
                      height: MediaQuery.of(context).size.height/2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"))
                      )),
                  Column(
                      children: <Widget>[
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));},
                          // bg color
                          color: kPrimaryLightColor,
                          shape:
                          RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white ),),
                        ),
                        // margin white space
                        SizedBox(height: 20),
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));},
                          color: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Text(
                              "SignUp",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                        )
                      ]),
                ]),
          ),
        )
    );
  }
}





