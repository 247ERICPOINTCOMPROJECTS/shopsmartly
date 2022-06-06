import 'package:flutter/material.dart';

import '../cart/cart.dart';

class myprofile1 extends StatefulWidget {
  const myprofile1({Key? key}) : super(key: key);

  @override
  State<myprofile1> createState() => _myprofile1State();
}

class _myprofile1State extends State<myprofile1> {
  int _currentindex = 0;
  List<Widget> _widgetOptions = <Widget>[
    // home(),
    // search(),
    cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120, // Set this height
        flexibleSpace: Container(
          color: Color.fromARGB(255, 253, 237, 237),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 50),
                child: CircleAvatar( radius: 30,
                  backgroundImage: AssetImage('assets/images/user.png',)
                  ,),
              ),
              Text('Jone doe',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 112, 112, 112)
                ),
              ),
              Text('example@gmail.com',
                style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 112, 112, 112)
                ),
              ),
            ],
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
      body: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,0,0),
                child: Text('Personal Information ',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 185, 185, 185)
                  ),),
              ),
              SizedBox(width: 120,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "");
                },
                child: new Text(
                  'Edit',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 200, 227, 221)
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            height: 80,
            padding: EdgeInsets.fromLTRB(0,30,20,20),
            child: TextFormField(
              cursorColor: Color.fromARGB(255, 211, 211, 211),
              decoration: InputDecoration(
                labelText:  "First Name",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 211, 211, 211),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(
                      255, 211, 211, 211), width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ), keyboardType: TextInputType.name,
            ),
          ),
          Container(
            width: 300,
            height: 80,
            padding: EdgeInsets.fromLTRB(0,30,20,20),
            child: TextFormField(
              cursorColor: Color.fromARGB(255, 211, 211, 211),
              decoration: InputDecoration(
                labelText:  "Last Name",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 211, 211, 211),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(
                      255, 211, 211, 211), width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ), keyboardType: TextInputType.name,
            ),
          ),
          Container(
            width: 300,
            height: 80,
            padding: EdgeInsets.fromLTRB(0,30,20,20),
            child: TextFormField(
              cursorColor: Color.fromARGB(255, 211, 211, 211),
              decoration: InputDecoration(
                labelText:  "Email",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 211, 211, 211),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(
                      255, 211, 211, 211), width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ), keyboardType: TextInputType.emailAddress,
            ),
          ),
          Container(
            width: 300,
            height: 80,
            padding: EdgeInsets.fromLTRB(0,30,20,20),
            child: TextFormField(
              cursorColor: Color.fromARGB(255, 211, 211, 211),
              decoration: InputDecoration(
                labelText:  "Phone Number",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 211, 211, 211),
                ),
                focusedBorder:OutlineInputBorder(
                  borderSide: const BorderSide(color: Color.fromARGB(
                      255, 211, 211, 211), width: 2.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ), keyboardType: TextInputType.phone,
            ),
          ),
          SizedBox(height: 20,),
          Divider(
            height: 10.0,
            color: Colors.black12,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,20,160,20),
            child: Text('Security Information ',
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 185, 185, 185)
              ),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextButton(
                    child: Text("Change Password",
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.grey,
                      backgroundColor: Color.fromARGB(255, 180, 214, 119),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      minimumSize: Size(160, 50),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context,"");
                    },
                  ),
                ),
                SizedBox(width: 10,),
                TextButton(
                  child: Text("Delete Account",
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                    backgroundColor: Color.fromARGB(255, 180, 214, 119),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size(160, 50),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context,"");
                  },
                ),
              ],
            ),
          )
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
