import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shop_smartly/Screens/address/location_service.dart';




class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();

}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController _searchController = TextEditingController();


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final Marker _Kgoogleplexmarker = Marker(markerId:
  MarkerId('_Kgoogleplex'),
    infoWindow: InfoWindow(title: 'Google Plex'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(37.42796133580664, -122.085749655962),
  );
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static final Marker _Klakemarker = Marker(markerId: MarkerId('_Klakemarker'),
    infoWindow: InfoWindow(title: 'lake'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    position: LatLng(37.43296265331129, -122.08832357078792),
  );
  static final Polyline _KPolyline = Polyline(
    polylineId: PolylineId('_KPolyline'),
    points: [
      LatLng(37.42796133580664, -122.085749655962),
      LatLng(37.43296265331129, -122.08832357078792),
    ],
    width: 5,
  );
  static final Polygon _kpolygon = Polygon(polygonId: PolygonId('_kpolygon'),
    points: [
      LatLng(37.43296265331129, -122.08832357078792),
      LatLng(37.42796133580664, -122.085749655962),
      LatLng(37.418, -122.092),
      LatLng(37.435, -122.092),
    ],
    strokeWidth: 5,
    fillColor: Colors.transparent,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:
      AppBar(
        backgroundColor: Colors.grey[100],
        title: Text('Add new address',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),),
      body:
      Column(
        children: [
       Row(
         children: [
           Container(
               height: 50,
               width: 320,
               child:
           Expanded(child: TextFormField(
             controller: _searchController,
             textCapitalization: TextCapitalization.words,
             decoration: InputDecoration(hintText: 'Search by City'),
             onChanged: (value){
               print(value);
             },
           )),
           ),
           IconButton(onPressed: () async{
            LocationService().getPlaceId(_searchController.text);

           }, icon: Icon(Icons.search),),
         ],
       ),
          Container(
            height: 700,
            child: Expanded(
              child: GoogleMap(
                          mapType: MapType.normal,
                          markers: {_Kgoogleplexmarker, //_Klakemarker
                          },
                          // polylines: {
                          //   _KPolyline,
                          //  },
                          // polygons: {
                          // _kpolygon,
                          //  },
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                        ),
            ),
          ),
        ],
      ),
      //  floatingActionButton: FloatingActionButton.extended(
      //  onPressed: _goToTheLake,
      //  label: Text('To the lake!'),
      //  icon: Icon(Icons.directions_boat),
    );
  }
  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}