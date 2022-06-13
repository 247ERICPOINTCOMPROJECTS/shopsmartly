import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class trakshipment extends StatefulWidget {
  const trakshipment({Key? key}) : super(key: key);

  @override
  State<trakshipment> createState() => _trakshipmentState();
}

class _trakshipmentState extends State<trakshipment> {
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