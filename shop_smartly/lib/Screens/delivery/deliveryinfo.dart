import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class deliveryinfo extends StatefulWidget {
  const deliveryinfo({Key? key}) : super(key: key);

  @override
  State<deliveryinfo> createState() => _deliveryinfo();
}

class _deliveryinfo extends State<deliveryinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(247, 247, 247, 1.0),
        appBar: AppBar(
            backgroundColor: Colors.grey[100],
            title: Column(
              children: <Widget>[
                Text(
                  'Order ID - NSA7856 ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 112, 112),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text('Place On Mar 8, 2022',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),

              ],
            )
        ),
        body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CircleAvatar( radius: 30,
                backgroundImage: AssetImage('assets/images/user.png',)
                ,),
            ),
            Image(image:
            AssetImage('assets/images/rating.png',),
              width: 60,
              color: Colors.yellow,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:155.0),
                  child: Text('Joe Doe',
                    style: TextStyle(
                      fontSize: 16,
                    ),),
                ),
                SizedBox(width: 80,),
                IconButton(
                  icon: const Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 180, 214, 119),
                  ),
                  onPressed: () {

                  },
                ),
              ],
            ),
            Divider(
              height: 8.0,
              color: Colors.black12,
            ),
            SizedBox(height: 30,),
            FixedTimeline.tileBuilder(
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.reverse,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('On Mar 12, 2022'),
                ),
                contentsBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Delivered'),
                  ),
                ),
                connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: 1,
              ),
            ),
            FixedTimeline.tileBuilder(
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.reverse,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('On Mar 12, 2022'),
                ),
                contentsBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Out  for delivery  '),
                  ),
                ),
                connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: 1,
              ),
            ),
            FixedTimeline.tileBuilder(
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.reverse,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('On Mar 12, 2022'),
                ),
                contentsBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Recived at facility '),
                  ),
                ),
                connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: 1,
              ),
            ),
            FixedTimeline.tileBuilder(
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.reverse,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('On Mar 10, 2022'),
                ),
                contentsBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Ready for handover '),
                  ),
                ),
                connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: 1,
              ),
            ),
          ],
        )
    );
  }
}