import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Google_Map extends StatefulWidget {
  const Google_Map({Key? key}) : super(key: key);

  @override
  State<Google_Map> createState() => _Google_MapState();
}

class _Google_MapState extends State<Google_Map> {
  final Completer<GoogleMapController>_controller =Completer();
  late CameraPosition _position ;
  List<Marker> marker = [];
  List<Marker> _list= [
    Marker(markerId: MarkerId("1"),
      position: LatLng(30.1557, 76.8697),
      infoWindow: InfoWindow(
        title: "Shahabad markanda",
      )
    ),
    Marker(markerId: MarkerId("2"),
        position: LatLng(30.3752, 76.7821),
        infoWindow: InfoWindow(
          title: "ambala",
        )
    ),
    Marker(markerId: MarkerId("3"),
      position: LatLng(30.275285,77.04758),
      infoWindow: InfoWindow(
        title: "mullana"
      )
    )
  ];
  loadData() async {
    Position position = await getUserCurrentLocation();
    print("current location");
    print(position.latitude.toString() + " " + position.longitude.toString());
    _position = CameraPosition(
      zoom: 13,
      target: LatLng(position.latitude, position.longitude),
    );
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_position));
  }
  Future<Position> getUserCurrentLocation() async{
    await Geolocator.requestPermission().then((value) {}).onError((error, stackTrace){
      print("error"+error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }
  @override
  void initState(){
    super.initState();
    marker.addAll(_list);
    loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [GoogleMap(initialCameraPosition: _position,
          markers:Set<Marker>.of(marker) ,
            myLocationEnabled: true,
           mapType: MapType.normal,
           compassEnabled: true,
        ),
          Positioned(bottom: 40,
            child: FloatingActionButton(onPressed: ()async{
              Position position = await getUserCurrentLocation();
                print("current location");
                print(position.latitude.toString()+" "+position.longitude.toString());
              setState(() {
                marker.add(
                    Marker(markerId: MarkerId("now"),
                        position: LatLng(position.latitude, position.longitude),
                        infoWindow: InfoWindow(
                            title: "current location"
                        )
                    )
                );
              });
                final GoogleMapController controller = await _controller.future;
                controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
                    zoom: 13,
                    target: LatLng(position.latitude, position.longitude))
              ));
            },),
          )
        ],
      ),

    );
  }
}
