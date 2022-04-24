import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_smartly/Screens/Login/login_screen.dart';
import 'package:shop_smartly/constants.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kBackgroundColor,
      appBar:AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: kBackgroundColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios),
          iconSize: 20,
          color: kTextColor,

        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40 ),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children:<Widget>[
              Text("Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color:kTextColor,
                ),),
              SizedBox(height: 20),
              Text("Create an  account",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey )),
              ],),
              Column(
                children: <Widget>[
                  inputFile( hintText: "UserName"),
                  inputFile( hintText: "Email "),
                  inputFile(obscureText: true, hintText: "Password"),
                  inputFile(obscureText: true, hintText: "Confirm Password"),
                ],
              ),
              Container(
                padding:EdgeInsets.only(top:3,left: 3) ,

                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {  },
                  color: kPrimaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),

                  ),
                ),





              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));},
                      child:
                      Text("Already have an account? ", style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: kLinkTextColor,


                      ),)
                  ),
                ],
              )
            ],
          ),


        ),
      ),

    );
  }
}



Widget inputFile({obscureText = false, hintText}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      // Text(
      //   style:  TextStyle(
      //     fontSize: 15,
      //     fontWeight: FontWeight.w400,
      //     color:Colors.black
      //   ),
      // ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,

        decoration:  InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(vertical: 0,
              horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey
            ),
          ),

        ),

      ),
      SizedBox(height: 10)

    ],

  );
}


