import 'package:flutter/material.dart';
import 'package:shop_smartly/Screens/SignUp/signup_screen.dart';
import 'package:shop_smartly/Screens/Welcome/welcome_screen.dart';
import 'Screens/Login/login_screen.dart';
import 'package:shop_smartly/constants.dart';
import 'package:shop_smartly/Screens/proudect/proudect.dart';
import 'package:shop_smartly/Screens/proudect/Customers reviews.dart';
import 'package:shop_smartly/Screens/cart/cart.dart';
import 'package:shop_smartly/Screens/address/select_address.dart';
import 'package:shop_smartly/Screens/address/googleMap.dart';
import 'package:shop_smartly/Screens/payment/payment.dart';
import 'package:shop_smartly/Screens/delivery/delivery_method.dart';
import 'package:shop_smartly/Screens/delivery/motor_bike.dart';
import 'package:shop_smartly/Screens/delivery/deliveryinfo.dart';
import 'package:shop_smartly/Screens/orders/my order.dart';
import 'package:shop_smartly/Screens/orders/order detiles.dart';
import 'package:shop_smartly/Screens/orders/review order.dart';
import 'package:shop_smartly/Screens/profile/my profile.dart';
import 'package:shop_smartly/Screens/orders/track shipment.dart';
import 'package:shop_smartly/Screens/address/location_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: "deliveryMethod",
    routes: {
      'product': (context) => product(),
      'reviews': (context) => reviews(),
      'cart': (context) => cart(),
      'selectAddress': (context) => selectAddress(),
      'MapSample':(context) => MapSample(),
      'payment': (context) => payment(),
      'deliveryMethod': (context) => deliveryMethod(),
      'deliveryinfo' : (context) => deliveryinfo(),
      'MyOrders' :(context) => MyOrders(),
      'OrderDetails' :(context) => OrderDetails(),
      'myprofile1' :(context) => myprofile1(),
      'ReviewOrder1' :(context) => ReviewOrder1(),
      'trakshipment' :(context) => trakshipment(),
      'motorBike' :(context) => motorBike(),

    },
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}