import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop_smartly/constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';

import '../cart/cart.dart';

class product extends StatefulWidget {
  const product({Key? key}) : super(key: key);

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  int _currentindex = 0;
  List<Widget> _widgetOptions = <Widget>[
    // home(),
    // search(),
    cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
        ],
        currentIndex: _currentindex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey[350],
        onTap: _changeitem,
      ),
      body:
      Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30.0, 20.0, 20.0, .0),
          ),
          Image.asset('assets/images/image.png'),
          Padding(
            padding: EdgeInsets.fromLTRB(70.0, 30.0, 3.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const <Widget>[
                Text(
                  'shop name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text('Lorem'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70.0, 30.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Text('1.500'),
                SizedBox(width: 160,),
                new GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "reviews");
                  },
                  child: new Text(
                    'Reviews',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 200, 227, 221)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(70.0, 7.0, 0.0, 0.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Size',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 160,),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ),
          Divider(
            height: 10.0,
            color: Colors.black12,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 50.0,
            child:
            TextButton(
              child: Text("Add To Cart",
                style: TextStyle(
                    fontSize: 15
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.grey,
                backgroundColor: Color.fromARGB(255, 180, 214, 119),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                minimumSize: Size(360, 50),
              ),
              onPressed: () {
    var alertStyle = AlertStyle(
    animationType:AnimationType.fromTop,
    isCloseButton: false,
    isOverlayTapDismiss: false,
    descStyle: TextStyle(color: Colors.grey,
    fontWeight: FontWeight.bold),
    animationDuration: Duration(milliseconds: 400),
    alertBorder: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    side: BorderSide(
    color: Colors.grey,
    ),
    ),
    titleStyle: TextStyle(
    color: Colors.grey,
    ),
    );
    Alert(
    image: Image.asset('assets/images/info.png',
    width: 50,
    color:Color.fromARGB(255, 232, 130, 118) ,),
    context: context,
    style: alertStyle,
    desc: 'You reach the budget limit do you want to continue ?',
    buttons: [
    DialogButton(
    radius: BorderRadius.circular(16.0),
    child: Text(
    "Yes",
    style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    onPressed: ()    {
    Alert(
    image: Image.asset('assets/images/check.png',
    width: 50,
    color: Color(0xFFA0D1C6),),
    context: context,
    style: alertStyle,
    desc: 'Product was added to the bag',
    buttons: [
    DialogButton(
    radius: BorderRadius.circular(16.0),
    child: Text(
    "Continue shooping",
    style: TextStyle(color: Colors.white ,
    fontSize: 11,
    ),
    ),


    onPressed: ()    {

    },
    color:  Color(0xFFB4D677),
    ),
    DialogButton(
    child: Text(
    "View cart",
    style: TextStyle(color:Colors.white, fontSize: 11),
    ),
    onPressed: ()  => Navigator.pushNamed(context, "cart"),
    color: Color(0xFFB4D677),
    radius: BorderRadius.circular(16.0),
    ),
    ],
    ).show();
    },
    color: Color(0xFFB4D677),
    ),
    DialogButton(
    radius: BorderRadius.circular(16.0),
    child: Text(
    "No",
    style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    onPressed: () => Navigator.pop(context),
    color: Color(0xFFB4D677),
    ),
    ],
    ).show();

    },
            ),
          ),
        ],
      ),
    );
  }
  void _changeitem(int value) {
    print(value);
    setState(() {
      _currentindex = value;
    });
  }
}

