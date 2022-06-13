import 'package:flutter/material.dart';

import '../cart/cart.dart';

class reviews extends StatefulWidget {
  const reviews({Key? key}) : super(key: key);

  @override
  State<reviews> createState() => _reviewsState();
}

class _reviewsState extends State<reviews> {
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
          'Customers reviews',
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
      body:
      ListView(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
              child: ListTile(
                leading: Image.asset('assets/images/image.png',),
                title: Text("Lorem opseum"),
                subtitle: Row(
                  children: [
                    Image.asset('assets/images/rating.png',width: 40,color: Colors.amber,),
                    Text("3 reviews"),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star,
                color: Colors.amber,
              ),
              title: Text("rawan"),
              subtitle: Text("i like it"),
            ),
            elevation: 8,
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.star_half,
                color: Colors.amber,
              ),
              title: Text("Mohammed"),
              subtitle: Text("i like it"),
            ),
            elevation: 8,
          ),
          Card(
            child:  ListTile(
              leading: Icon(Icons.star,
                color: Colors.amber,
              ),
              title: Text("Ali"),
              subtitle: Text("love it"),
            ),
            elevation: 8,
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
