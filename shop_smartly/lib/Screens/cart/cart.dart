import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
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
          'Cart',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'cart'),
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
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/image.png', height: 70,width: 100),
                  Column(
                    children: <Widget>[
                      Text(
                        "Store Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text("Lorem opseum" ),
                      Text("1119 USD"),
                    ],
                  ),
                  SizedBox(width: 99,),
                  IconButton(
                    icon: const Icon(
                      Icons.highlight_remove_outlined,
                      color: Color.fromARGB(255, 242, 101, 101),
                    ),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 300,),

          Row(
            children: [
              Text(
                'Total:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(width: 220),
              TextButton(
                child: Text("Checkout",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                  backgroundColor: Color.fromARGB(255, 180, 214, 119),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  minimumSize: Size(100, 40),
                ),
                onPressed:() {
                  Navigator.pushNamed(context,"selectAddress");
                },
              ),
            ],
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
