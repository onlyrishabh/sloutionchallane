import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
class Add_to_lat_or_viceversa extends StatefulWidget {
  const Add_to_lat_or_viceversa({Key? key}) : super(key: key);

  @override
  State<Add_to_lat_or_viceversa> createState() => _Add_to_lat_or_viceversaState();
}

class _Add_to_lat_or_viceversaState extends State<Add_to_lat_or_viceversa> {
  final lattitude =TextEditingController();
  final longitude =TextEditingController();
   String staddress ="" ;
  String add="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          children: [
            TextFormField(
              controller: lattitude,
              decoration: InputDecoration(
                hintText: "Enter lattitude",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter longitude";
                }
                return null;
              },
            ),
            TextFormField(
              controller: longitude,
              decoration: InputDecoration(
                hintText: "Enter longitude",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter longitude";
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(staddress,style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
            ),),
            FloatingActionButton(onPressed: ()
            async{
              double? lattitudeNew = double.tryParse(lattitude.text);
              double? longitudeNew = double.tryParse(longitude.text);
              if ( lattitudeNew==null || longitudeNew == null){
                return;
              }
              List<Location> locations = await locationFromAddress("Gronausestraat 710, Enschede");
              List<Placemark> placemarks = await placemarkFromCoordinates(lattitudeNew,longitudeNew);
              setState(() {
                staddress= locations.last.longitude.toString()+" "+ locations.last.latitude.toString();
                add = placemarks.reversed.last.country.toString()+" "+placemarks.reversed.last.locality.toString()+
                " "+ placemarks.reversed.last.subAdministrativeArea.toString();
                print(staddress);
              });
            })
          ],
        ),
      )
      ,
    );
  }
}
