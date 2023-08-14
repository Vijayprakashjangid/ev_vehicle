import 'package:ev_vehicle/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TripScreen extends StatefulWidget {
  const TripScreen({super.key});

  @override
  State<TripScreen> createState() => _TripScreenState();
}

class _TripScreenState extends State<TripScreen> {




  late GoogleMapController _mapController;
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(20.5937, 78.9629),
    zoom: 5.4746,
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: GoogleMap(
                  initialCameraPosition: _kGooglePlex,
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Starting Location',
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              suffixIcon:
                              Icon(Icons.location_searching, color: Colors.grey),
                              /* prefixIcon: Icon(Icons.search, color: Colors.grey[400]),*/
                              /*suffixIcon: Icon(Icons.clear, color: Colors.grey[400]),*/
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Expanded(
                        child: Container(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Dstination',
                              hintStyle: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey,
                              ),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              suffixIcon:
                              Icon(Icons.location_on_outlined, color: Colors.grey),
                              /* prefixIcon: Icon(Icons.search, color: Colors.grey[400]),*/
                              /*suffixIcon: Icon(Icons.clear, color: Colors.grey[400]),*/
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             // bottomDetailsSheet(),
            ],
          ),
        ),
      ),
    );
  }




  Widget bottomDetailsSheet() {
    return DraggableScrollableSheet(
      initialChildSize: .1,
      minChildSize: .1,
      maxChildSize: .6,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),),
            color: Colors.white,
          ),
          child: ListView(
            controller: scrollController,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Text('Trip Planner', style: TextStyle(
                  fontSize: 12, fontFamily: AutofillHints.streetAddressLevel1, fontWeight: FontWeight.bold
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10),
                child: Text('We are here to make your trip stress free with EV. See where the charging station are located in your trip', style: TextStyle(
                    fontSize: 10, color: Colors.grey
                ),),
              ),

              ListTile(
                title: Container(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Your Location',
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon:
                      Icon(Icons.location_searching, color: Colors.grey),
                      /* prefixIcon: Icon(Icons.search, color: Colors.grey[400]),*/
                      /*suffixIcon: Icon(Icons.clear, color: Colors.grey[400]),*/
                    ),
                  ),
                ),
              ),

              ListTile(
                title: Container(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Destination',
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      prefixIcon:
                      Icon(Icons.location_on_outlined, color: Colors.grey),
                      /* prefixIcon: Icon(Icons.search, color: Colors.grey[400]),*/
                      /*suffixIcon: Icon(Icons.clear, color: Colors.grey[400]),*/
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
