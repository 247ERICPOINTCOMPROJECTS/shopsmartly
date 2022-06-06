import 'package:flutter/material.dart';


class payment extends StatefulWidget {
  const payment({Key? key}) : super(key: key);

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  bool value = false;
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 247, 247, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          'Payment Method',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      body:
      Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text("Cash on delivery"),
              leading: Radio(
                value: 0,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = 0;
                  });
                },
                activeColor: Color.fromARGB(255, 180, 214, 119),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.money_sharp,
                  color: Color.fromARGB(255, 18, 103, 165),
                ),
                onPressed: () {

                },
              ),
            ),

            ListTile(
              title: Text("Credit card payment"),
              leading: Radio(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = 1;
                  });
                },
                activeColor: Color.fromARGB(255, 180, 214, 119),

              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.credit_card,
                  color: Color.fromARGB(255, 18, 103, 165),
                ),
                onPressed: () {

                },
              ),
            ),
            SizedBox(height: 200,),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () { Navigator.pushNamed(context,"payment");},
              child: const Text('Enabled'),
            ),
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ),
    );
  }
}
