import 'package:flutter/material.dart';

import '../cart/cart.dart';

class deliveryMethod extends StatefulWidget {
  const deliveryMethod({Key? key}) : super(key: key);

  @override
  State<deliveryMethod> createState() => _deliveryMethodState();
}

class _deliveryMethodState extends State<deliveryMethod> {
  int _currentindex = 0;
  List<Widget> _widgetOptions = <Widget>[
    // home(),
    // search(),
    cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 237, 237, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          'Delivery Method ',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
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
      body:ListView(
        children: [
          Text('Shipping By :'),
          SizedBox(height: 80,),
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15),
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context,"motorBike");
                },
                leading: Padding(
                  padding: const EdgeInsets.only(right: 10,),
                  child: Image.asset('assets/images/fast-delivery.png',
                      width: 100 ),
                ),
                title: Text("Motor Bike ",
                  style:  TextStyle(
                    fontSize: 18,
                  ),

                ),
                subtitle:
                Text('1 hour'),
              ),

            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15),
              child: ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(right: 10,),
                    child: Image.asset('assets/images/shipped.png',
                      width: 100,
                    )
                ),
                title: Text("Car",
                  style:  TextStyle(
                    fontSize: 18,
                  ),

                ),
                subtitle:
                Text('1 Day'),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15),
              child: ListTile(

                leading: Padding(
                  padding: const EdgeInsets.only(right: 10,),
                  child: Image.asset('assets/images/world.png',
                    width: 100,),
                ),
                title: Text("Plane",
                  style:  TextStyle(
                    fontSize: 18,
                  ),

                ),
                subtitle:
                Text('2 Day'),
              ),
            ),

          ),
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 25),
              child: ListTile(
                leading:
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Image.asset('assets/images/location.png',
                      width: 100 ),
                ),
                title: Text(" Pick Up",
                  style:  TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
        padding: EdgeInsets.all(10),
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
